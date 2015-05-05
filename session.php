<?php 

    require("config.inc.php"); 

    if(empty($_SESSION['user'])) 
    { 
        header("Location: index.php"); 
         
        exit(); 
    } 
?>