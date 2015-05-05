<?php 
    require("config.inc.php"); 

    $submitted_username = ''; 

    $login_ok = true; 

    if(!empty($_POST)) 
    { 
        $query = " 
            SELECT 
                username,
                password,
                salt 
            FROM user 
            WHERE 
                username = :username 
        "; 
         
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
            $Checker['loginfail']="Failed to run query: " . $ex->getMessage();
            $login_ok = false;
        } 
        
        $row = $stmt->fetch();
        if($row and $login_ok) 
        { 
            $check_password = hash('sha256', $_POST['password'] . $row['salt']);
            for($round = 0; $round < 65536; $round++) 
            { 
                $check_password = hash('sha256', $check_password . $row['salt']);
            } 
             
            if($check_password === $row['password']) 
            { 
                $login_ok = true; 

                unset($row['salt']); 
                unset($row['password']); 
                 
                $_SESSION['user'] = $row; 
                 
                header("Location: crs.html"); 
                exit;
            }
            else // jika passwordnya beda
            {
                $login_ok = false;
                $Checker['loginfail']="Maaf. Login gagal. Password salah";
                
                $submitted_username = htmlentities($_POST['username'], ENT_QUOTES, 'UTF-8'); 
            }
        }
        elseif($login_ok)// jika tidak ketemu usernamenya
        {
            $login_ok = false;
            $Checker['loginfail']="Maaf. Login gagal. Username tidak terdaftar";
            
            $submitted_username = htmlentities($_POST['username'], ENT_QUOTES, 'UTF-8'); 
        }
    } 
     
?>
<!DOCTYPE html>
<html lang='en'>
<head>
    <meta charset="UTF-8" /> 
    <title>
        Admin Log in
    </title>
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="bootstrap/css/login.css" />
</head>
<body>

<form action="index.php" method="post">
    <h1>Admin Log in</h1>
    <div class="inset">
        <?php
            if(!empty($_GET['status']) && $_GET['status'] == 101)
            {
                echo "<div class='alert alert-success'>";
                echo "Selamat register berhasil. Silakan Login.";
                echo "</div>";
            }
            if($login_ok == false)
            {
                echo "<div class='alert alert-danger'>";
                echo $Checker['loginfail'];
                echo "</div>";
            }
        ?>
        <p>
            <label for="username"><strong>Username</strong></label>
            <input type="text" name="username" id="username" value="<?php echo $submitted_username; ?>">
        </p>
        <p>
            <label for="password"><strong>Password</strong></label>
            <input type="password" name="password" id="password" value="">
        </p>
    </div>
    <p class="p-container">
        <input class="login" type="submit" name="go" id="go" value="Log in">

        <a href="register.php">
            <input class="register" type="button" value="Register">
        </a>
    </p>
</form>

</body>
</html>