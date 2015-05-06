<?php
$con = mysqli_connect("127.0.0.1", "root", "", "certificate_authority");
if(mysqli_connect_errno())
{
    mysqli_connect_error();
}

$sql = "INSERT INTO csr(COMMON_NAME, ORGANIZATION, ORGANIZATIONAL_UNIT, CITY_LOCALITY, STATE_PROVINCE, COUNTRY_REGION) VALUES ('".$_POST["CommonName"]."','".$_POST["Organization"]."','".$_POST["OrganizationalUnit"]."','".$_POST["CityLocality"]."','".$_POST["StateProvince"]."','".$_POST["CountryRegion"]."')";

if ($con->query($sql)===TRUE) 
{
    echo "<script type = 'text/javascript'> alert('New record created successflly');</script>";
}
else
{
    echo "<script type = 'text/javascript'> alert('Error: ".$sql." <br> ".$con->error."');</script>";
}

$con->close();
?>