<?php
include('File/X509.php');
include('Crypt/RSA.php');


$host = 'localhost:8081';
$username = 'root';
$password = '';
$database = 'certificate_authority';
$table = 'csr';

mysql_connect('$host', '$username', '$password') or die(mysql_error());
mysql_select_db('$database') or die(mysql_error());
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


// create a self-signed cert that'll serve as the CA
$subject = new File_X509();
$subject->setPublicKey($pubKey);
$subject->setDNProp('$_POST[CommonName]', 'Indonesia');
$subject->setDNProp('$_POST[Organization]', 'selfCA');
$subject->setDNProp('$_POST[OrganizationalUnit]', 'friendlyname');
$subject->setDNProp('$_POST[CityLocality]', 'Jawa Timur');
$subject->setDNProp('$_POST[StateProvince]', 'Jawa Timur');
$subject->setDNProp('$_POST[CountryRegion]', 'Jawa Timur');
$subject->setDomain('www.google.com');


$issuer = new File_X509();
$issuer->setPrivateKey($CAPrivKey);
$issuer->setDN($CASubject = $subject->getDN());

$x509 = new File_X509();
$x509->setStartDate('-1 month');
$x509->setEndDate('+1 year');
$x509->setSerialNumber(chr(1));
$x509->makeCA();

$result = $x509->sign($issuer, $subject);

$filename = 'test-download.crt';
$htmlcode1 = $x509->saveX509($result)."\r\n\r\n";


header("Cache-Control: public");
header("Content-Description: File Transfer");
header("Content-Disposition: attachment; filename=$filename");
header("Content-Type: application/octet-stream; "); 
header("Content-Transfer-Encoding: binary");

echo $htmlcode1;

?>
