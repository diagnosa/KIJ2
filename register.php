<?php
  require("config.inc.php"); 

  $clean = 1;
  if(!empty($_POST)) 
    { 
        $query = " 
            SELECT 
                1 
            FROM user 
            WHERE 
                username = :username 
        "; 
        if(empty($_POST['username']))   // cek username ada isinya apa g
        {
            $Checker['username']="Username harap diisi!";
            $clean = 0;
        } 
        else {  
            // cek udah dipake ada belum
            $query_params = array( 
                ':username' => $_POST['username'] 
            ); 
             
            try 
            { 
                $stmt = $db->prepare($query); 
                $result = $stmt->execute($query_params); 
            } 
            catch(PDOException $ex) 
            { 
                die("Failed to run query: " . $ex->getMessage()); 
                //$clean = 0;
            } 
            
            $row = $stmt->fetch(); 
             
            if($row) 
            { 
                //die("This username is already in use"); 
                $Checker['username']="Maaf! Username sudah digunakan.";
                $clean = 0;
            } 
        }
         
        if(empty($_POST['nama'])) 
        { 
            $Checker['nama']="Nama harap diisi!";
            $clean = 0;
        }

        if(empty($_POST['password'])) 
        { 
            $Checker['password']="Password harap diisi!";
            $clean = 0;
        }
        elseif ($_POST['password'] != $_POST['rtpassword']) {
            $Checker['password']="Password yang diisikan tidak cocok!";
            $clean = 0;
        }
         
        if(!filter_var($_POST['email'], FILTER_VALIDATE_EMAIL)) 
        { 
            $Checker['email']="Harap mengisi email dengan benar!";
            $clean = 0;
        }
        else
        {
            $query = " 
                SELECT 
                    1 
                FROM user 
                WHERE 
                    email = :email 
            "; 
             
            $query_params = array( 
                ':email' => $_POST['email'] 
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
             
            if($row) 
            { 
                $Checker['email']="Maaf! Email sudah digunakan.";
                $clean = 0;
            } 
        }

        $query = " 
            INSERT INTO user ( 
                name,
                username, 
                password, 
                salt, 
                email 
            ) VALUES ( 
                :name,
                :username, 
                :password, 
                :salt, 
                :email 
            ) 
        "; 
         
        if($clean)
        {
            $salt = dechex(mt_rand(0, 2147483647)) . dechex(mt_rand(0, 2147483647));
             
            $password = hash('sha256', $_POST['password'] . $salt); 
             
            for($round = 0; $round < 65536; $round++) 
            { 
                $password = hash('sha256', $password . $salt); 
            } 
             
            $query_params = array( 
                ':name' => $_POST['nama'],
                ':username' => $_POST['username'], 
                ':password' => $password, 
                ':salt' => $salt, 
                ':email' => $_POST['email'] 
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
             
            header("Location: index.php?status=101"); 
            exit;
        }
    }
?>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        Register
    </title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/login.css" />
</head>
<body>

<form action="register.php" method="post">
  <h1>Register</h1>
  <div class="inset">
  <?php
     if($clean == 0)
     {
        echo "<div class='alert alert-danger'>";
        if(isset($Checker['username']))
            echo $Checker['username']."<br />";
        if(isset($Checker['nama']))
            echo $Checker['nama']."<br />";
        if(isset($Checker['email']))
            echo $Checker['email']."<br />";
        if(isset($Checker['password']))
            echo $Checker['password']."<br />";
        echo "</div>";
     }
  ?>
  <p>
    <label for="email"><strong>Username</strong></label>
    <input type="text" name="username" id="username">
  </p>
  <p>
    <label for="email"><strong>Name</strong></label>
    <input type="text" name="nama" id="nama">
  </p>
  <p>
    <label for="email"><strong>Email</strong></label>
    <input type="text" name="email" id="email">
  </p>
  <p>
    <label for="password"><strong>Password</strong></label>
    <input type="password" name="password" id="password">
  </p>
  <p>
    <label for="password"><strong>Re-type Password</strong></label>
    <input type="password" name="rtpassword" id="rtpassword">
  </p>
  </div>
  <p class="p-container">
    <input class="login" type="submit" name="go"  id="go" value="Register">
    <?php unset($_POST['memo']) ?>
    <a href="index.php">
    <input class="register" type="button"  value="Back">
    </a>
  </p>
</form>

</body>
</html>