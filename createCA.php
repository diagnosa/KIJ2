<?php
	include('File/X509.php');
	include('Crypt/RSA.php');
	require("config.inc.php"); 

	// create private key for CA cert
	// (you should probably print it out if you want to reuse it)
	$CAPrivKey = new Crypt_RSA();
	extract($CAPrivKey->createKey());
	$CAPrivKey->loadKey($privatekey);

	$pubKey = new Crypt_RSA();
	$pubKey->loadKey($publickey);
	$pubKey->setPublicKey();

	// echo "the private key for the CA cert (can be discarded):\r\n\r\n";
	// echo $privatekey;
	// echo "\r\n\r\n";

	$query = " 
          SELECT 
              * 
          FROM csr 
          WHERE 
              id_req = :id_req
      ";

   $query_params = array( 
                ':id_req' => $_GET['id_req']
            );

   try 
   { 
       $stmt = $db->prepare($query); 
       $result = $stmt->execute($query_params); 
   } 
   catch(PDOException $ex) 
   { 
       die("Failed to run query: " . $ex->getMessage()); 
   }     
   $row = $stmt->fetch(); 
   //echo $row

	// create a self-signed cert that'll serve as the CA
	$subject = new File_X509();
	$subject->setPublicKey($pubKey);
	$subject->setDNProp('id-at-countryName', $row['COUNTRY_REGION']);
	$subject->setDNProp('id-at-organizationName', $row['ORGANIZATION']);
	$subject->setDNProp('id-at-commonName', $row['COMMON_NAME']);
	$subject->setDNProp('id-at-stateOrProvinceName', $row['STATE_PROVINCE']);
	$subject->setDomain($row['DOMAIN_NAME']);


	$issuer = new File_X509();
	$issuer->setPrivateKey($CAPrivKey);
	$issuer->setDN($CASubject = $subject->getDN());

	$x509 = new File_X509();
	$x509->setStartDate('-1 month');
	$x509->setEndDate('+1 year');
	$x509->setSerialNumber(chr(1));
	$x509->makeCA();

	$result = $x509->sign($issuer, $subject);

	$filename = $row['DOMAIN_NAME'] . '.crt';
	$htmlcode1 = $x509->saveX509($result)."\r\n\r\n";

	$query = " 
         UPDATE csr
         SET 	private_key = :private_key,
         		certificate = :certificate
         WHERE 
              id_req = :id_req
      ";

   $query_params = array( 
                ':id_req' => $_GET['id_req'],
                ':private_key' => $htmlcode1,
                ':certificate' => $CAPrivKey
            );

   try 
   { 
       $stmt = $db->prepare($query); 
       $result = $stmt->execute($query_params); 
   } 
   catch(PDOException $ex) 
   { 
       die("Failed to run query: " . $ex->getMessage()); 
   }   

	header("Cache-Control: public");
	header("Content-Description: File Transfer");
	header("Content-Disposition: attachment; filename=$filename");
	header("Content-Type: application/octet-stream; "); 
	header("Content-Transfer-Encoding: binary");

	echo $htmlcode1;

?>
