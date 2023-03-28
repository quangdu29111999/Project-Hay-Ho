<?php
include "../database/db.php";
// handle signin

if (isset($_POST['signin'])) {
    $username = trim($_POST['signinUsername']);
    $password = trim($_POST['signinPassword']);
    $query = "SELECT * FROM account WHERE username='$username' AND password ='$password' AND status = 0";
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);
    if (mysqli_num_rows($result) > 0) {
        header('Location: ../index.php?id='.$row['id']);
    } else {
        echo '<script type=text/javascript>alert("that bai")</script>';
    }
    mysqli_close($conn);
}

?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login</title>
    <link rel="stylesheet" href="../resources/css/bootstrap.min.css">
    <link rel="stylesheet" href="../resources/css/a.css">

</head>

<body>
    <div class="formLogin ">
        <div class="form-login  bg-transparent p-5 ">
            <h3 class=" text-center text-white pb-2">Sign In</h3>
            <form id="formLogin" action="" method="post">
                <div class="form-floating mb-3">
                    <input name="signinUsername" type="text" class="form-control" id="signinUsername" placeholder="username" autofocus>
                    <label for="signinUsername">Username</label>
                    <span class="form-message text-danger"></span>
                </div>
                <div class="form-floating">
                    <input name="signinPassword" type="text" class="form-control" id="signinPassword" placeholder="Password">
                    <label for="signinPassword">Password</label>
                    <span class="form-message text-danger"></span>
                </div>
                <div class="row d-flex justify-content-center">
                    <button class="col-5 me-2 btn btn-primary mt-3" type="submit" name="signin">Login</button>
                    <div class="register-btn col-5 btn btn-primary mt-3" type="submit">Register</div>
                </div>
            </form>
            <div class="text-white">You dont have account?</div>
        </div>
    </div>
</body>

</html>