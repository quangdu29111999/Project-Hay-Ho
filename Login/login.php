<?php
include "../database/db.php";
    // if (isset($_POST["login"])) {
    //     $username = trim($_POST["username"]);
    //     $password = trim($_POST["password"]);
    //     $result = mysqli_query($conn, "SELECT * from user where tendangnhap='$username' and password='$password'");
    //     $row = mysqli_fetch_assoc($result);
    //     if ($username = "admin" && $password = "123") {
    //         header("Location:admin.php");
    //     } else if ($row) {
    //         header("Location:home_page.php");
    //     } else {
    //         echo '<script language="javascript">alert("Username or Password is not right"); window.location="login.php";</script>';
    //     }
    // }


    // handle signin
    function checkInput($input) {
        $input = trim($input);
        $input = stripslashes($input);
        $input = htmlspecialchars($input);
    }
    
    if(isset($_POST['signin'])) {
        $username = htmlspecialchars($_POST['signinUsername']);
        $password = htmlspecialchars($_POST['signinPassword']);
        $query = "SELECT * FROM account WHERE username='$username' AND password ='$password'";
        $result = mysqli_query($conn, $query);
        if(mysqli_num_rows($result) > 0) {
            header('Location: ../index.php');
        } else{
            echo "thath bai";
        }
        
        mysqli_close($conn);
    }
    
    // handle register
    if(isset($_POST['register'])) {
        
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
    <link rel="stylesheet" href="../resources/css/login.css">

</head>

<body>
    <div class="formLogin">
        <div class="form-login">
            <h3 class=" text-center text-white pb-2">Sign In</h3>
            <form class="" action="<?php echo $_SERVER['PHP_SELF'] ?>" method="post">
                <div class="form-floating mb-3">
                    <input name="signinUsername" type="text" class="form-control" id="signinUsername" placeholder="username">
                    <label for="signinUsername">Username</label>
                </div>
                <div class="form-floating">
                    <input name="signinPassword" type="text" class="form-control" id="signinPassword" placeholder="Password">
                    <label for="signinPassword">Password</label>
                </div>
                <div class="row d-flex justify-content-center">
                    <button class="col-5 me-2 btn btn-primary mt-3" type="submit" name="signin">Login</button>
                    <div class="register-btn col-5 btn btn-primary mt-3" type="submit" >Register</div>
                </div>
            </form>
            <div>You dont have account?</div>
        </div>
    </div>

    <div class="formRegister w-50">
        <div class="form-login status">
            <h3 class="text-center text-white">Register</h3>
            <form class=" " action="" method="post">
                <div class="form-floating mb-3">
                    <input name="registerUsername" type="text" class="form-control" id="registerUsername" placeholder="username">
                    <label for="registerUsername">Username</label>
                </div>
                <div class="form-floating mb-3">
                    <input name="registerEmail" type="text" class="form-control" id="registerEmail" placeholder="email">
                    <label for="registerEmail">Email</label>
                </div>
                <div class="form-floating mb-3">
                    <input name="registerPassword" type="password" class="form-control" id="registerPassword" placeholder="Password">
                    <label for="registerPassword">Password</label>
                </div>
                <div class="form-floating mb-3">
                    <input name="registerRePassword" type="password" class="form-control" id="registerRePassword" placeholder="re-password">
                    <label for="registerRePassword">Re-Password</label>
                </div>
                <div class=" d-flex justify-content-center ">
                    <button class="col-5 me-2 btn btn-primary mt-3" type="submit" name="register">Register</button>
                </div>
            </form>
        </div>
    </div>
    
    <script src="../resources/js/formLogin.js"></script>
</body>

</html>