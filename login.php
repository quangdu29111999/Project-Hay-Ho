<?php
    include "db.php";
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
</head>
<body>
    <form action="login.php" method="post">
    <label>username</label>
    <input type="text" name="username" >
    <br>
    <label>password</label>
    <input type="password" name="password">
    <button  type="submit" name="login">Login</button>
    <br>
    <a href="register.php">Resister</a>
    </form>
    <?php
        if(isset($_POST["login"])){
            $username=$_POST["username"];
            $password=$_POST["password"];
            $result = mysqli_query($conn, "SELECT * from user where tendangnhap='$username' and password='$password'");
            $row= mysqli_fetch_assoc($result);
            if($username="admin" && $password = "123"){
                header("Location:admin.php");
            }
            else if($row){
                header("Location:index.php");

            }else{
                echo '<script language="javascript">alert("Username or Password is not right"); window.location="login.php";</script>';
            }
        }
    ?>

</body>
</html>