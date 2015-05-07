<?php
    require("session.php");

    if(!empty($_POST))
    {
        $query = "
        INSERT INTO csr (
            COMMON_NAME,
            ORGANIZATION,
            ORGANIZATIONAL_UNIT,
            CITY_LOCALITY,
            STATE_PROVINCE,
            COUNTRY_REGION,
            DOMAIN_NAME,
            username ) 
        VALUES (
            :common_name,
            :organization,
            :organization_unit,
            :city_locality,
            :state_province,
            :country_region,
            :domain_name,
            :user_name )
        ";

        $query_params = array( 
                ':common_name' => $_POST['CommonName'],
                ':organization' => $_POST['Organization'],
                ':organization_unit' => $_POST['OrganizationalUnit'],
                ':city_locality' => $_POST['CityLocality'],
                ':state_province' => $_POST['StateProvince'],
                ':country_region' => $_POST['CountryRegion'],
                ':domain_name' => "www." . $_POST['DomainName'],
                ':user_name' => $_SESSION['user']
            ); 

        // echo $_POST['CommonName'] . "|";
        // echo $_POST['Organization'] . "|";
        // echo $_POST['OrganizationalUnit'] . "|";
        // echo $_POST['CityLocality'] . "|";
        // echo $_POST['StateProvince'] . "|";
        // echo $_POST['CountryRegion'] . "|";
        // echo $_POST['DomainName'] . "|";
        // echo $_SESSION['user'];
        try 
        { 
            $stmt = $db->prepare($query); 
            $result = $stmt->execute($query_params); 
            $temp = $db->lastInsertId();
        } 
        catch(PDOException $ex) 
        { 
            die("Failed to run query: " . $ex->getMessage()); 
        } 
        
        
        header("Location: createCA.php?id_req=" . $temp); 
        exit;
    }

?>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>IKP</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" type="text/css" href="bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="font-awesome/css/font-awesome.min.css" />

    <script type="text/javascript" src="js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
</head>
<body>

<div class="container">

<div class="page-header">
    <h3>Certificate Signing Request 
    <a href="logout.php">
    <input class="btn btn-danger pull-right" type="button" value="Log Out">
    </a>
    </h3>
    
</div>

<!-- Registration form - START -->
<div class="container">
    <div class="row">
        <form role="form" action="csr.php" method="post">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">Common Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="CommonName" id="CommonName" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Organization</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="Organization" name="Organization" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Organizational Unit</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="OrganizationalUnit" name="OrganizationalUnit" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">City/Locality</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="CityLocality" name="CityLocality" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">State/Province</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="StateProvince" name="StateProvince" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Country/Region</label>
                    <div class="input-group">
                        <input type="text" class="form-control" id="CountryRegion" name="CountryRegion" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Domain Name</label>
                    <div class="input-group">
                        <span class="input-group-addon" id="basic-addon1">www.</span>
                        <input type="text" class="form-control" id="DomainName" name="DomainName" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <input type="submit" name="submit" id="submit" value="Submit" class="btn btn-info pull-right">
            </div>
        </form>
    </div>
</div>
<!-- Registration form - END -->

</div>

</body>
</html>