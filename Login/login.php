<?php
include "../database/db.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/login.css">
   
</head>

<body>
    <div class="formLogin">
        <h3 class="text-center text-white">Login</h3>
        <form class="" action="#" method="post">
            <div class="form-floating mb-3">
                <input type="text" class="form-control" id="floatingInput" placeholder="username">
                <label for="floatingInput">Username</label>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
                <label for="floatingPassword">Password</label>
            </div>
            <button class="btn btn-primary mt-3" type="submit" name="submit">Login</button>
        </form>
        <div>You dont have account?</div>
    </div>
    <?php
    if (isset($_POST["login"])) {
        $username = trim($_POST["username"]);
        $password = trim($_POST["password"]);
        $result = mysqli_query($conn, "SELECT * from user where tendangnhap='$username' and password='$password'");
        $row = mysqli_fetch_assoc($result);
        if ($username = "admin" && $password = "123") {
            header("Location:admin.php");
        } else if ($row) {
            header("Location:home_page.php");
        } else {
            echo '<script language="javascript">alert("Username or Password is not right"); window.location="login.php";</script>';
        }
    }
    ?>

</body>

</html>