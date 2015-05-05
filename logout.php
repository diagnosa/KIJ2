<?php 
	require("config.inc.php"); 

	unset($_SESSION['user']); 

	header("Location: index.php");
?>