<?php
    require("session.php");
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
    <h3>Certificate Signing Request</h3>
    <a href="logout.php">
    <input class="btn btn-danger pull-right" type="button" value="Log Out">
    </a>
</div>

<!-- Registration form - START -->
<div class="container">
    <div class="row">
        <form role="form">
            <div class="col-lg-6">
                <div class="well well-sm"><strong><span class="glyphicon glyphicon-asterisk"></span>Required Field</strong></div>
                <div class="form-group">
                    <label for="InputName">Common Name</label>
                    <div class="input-group">
                        <input type="text" class="form-control" name="CommonName" id="InputName" required>
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
                        <input type="email" class="form-control" id="CityLocality" name="CityLocality" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">State/Province</label>
                    <div class="input-group">
                        <input type="email" class="form-control" id="StateProvince" name="StateProvince" required>
                        <span class="input-group-addon"><span class="glyphicon glyphicon-asterisk"></span></span>
                    </div>
                </div>
                <div class="form-group">
                    <label for="InputEmail">Country/Region</label>
                    <div class="input-group">
                        <input type="email" class="form-control" id="CountryRegion" name="CountryRegion" required>
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