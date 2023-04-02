<?php
require_once './components/header.php';

function checkInput($input)
{
    $input = trim($input);
    $input = stripslashes($input);
    $input = htmlspecialchars($input);
    return $input;
}

$error = $result = '';

if (isset($_POST['signin-submit'])) {
    $username = checkInput($_POST['signin-username']);
    $password = checkInput($_POST['signin-password']);

    $query = "SELECT * FROM account WHERE (username = '$username' OR email = '$username') AND password = '$password'";
    //
    $result = mysqli_query($conn, $query);
    $row = mysqli_fetch_assoc($result);

    if (mysqli_num_rows($result)) {
        if ($row['status'] === '0') {
            header('Location: home.php');
        } else {
            header('Location: admin.php');
        }
    } else {
    }
};
$errorUsername = $errorEmail = '';
if (isset($_POST['signup-submit'])) {
    $username = checkInput($_POST['signup-username']);
    $email = checkInput($_POST['signup-email']);
    $password = checkInput($_POST['signup-password']);
    $re_password = checkInput($_POST['signup-password']);

    // $queryCheck = "SELECT * FROM account";
    // $resultCheck = mysqli_query($conn, $queryCheck);
    // while ($row = mysqli_fetch_assoc($resultCheck)) {
    //     if($row['username'] = $username) {
    //         $errorUsername = 'This username is already';
    //     } 

    //     if($row['email'] = $email) {
    //         $errorEmail = 'This email is already';
    //         echo '<script>alert('.$errorEmail.')</script>';
    //     }
    // }
    if (empty($errorUsername) && empty($errorEmail)) {
        $query = "INSERT INTO account(username, password, email, status) Values ('$username', '$password', '$email', '0');";
        $result = mysqli_query($conn, $query);
        echo '<script>alert("Dang ky thanh cong")</script>';
        header('Location: home.php');
    }
}


?>


<section class="login" id="login">
    <h1 class="heading">Login</h1>
    <div class="box-container">
        <div class="box-left-item">
            <div class="signin">
                <h1 class="sub-heading">Sign in</h1>
                <form id="signin" action="" method="POST">
                    <div class="form-group">
                        <label class="fs-large" for="">Username & email:</label><br>
                        <input name="signinUsername" rules="required" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here" autofocus>
                        <span class="form-message"></span>
                    </div>
                    <div class="form-group">
                        <label class="fs-large" for="">Password:</label><br>
                        <input name="signinPassword" rules="required" class="fs-medium radius p-10 w-100 border" type="password" placeholder="Enter here">
                        <span class="form-message"></span>
                    </div>
                    <button name="signinSubmit" class="submit fs-medium radius w-100 p-10" type="submit">Sign in</button>
                    <div class="w-100 m-0 d-flex">
                        <div class="w-50">
                            <input class="m-0" type="checkbox" name="" id="">
                            <label class="fs-medium" for="">Remeber me</label>
                        </div>
                        <div class="w-50">
                            <a class="float-right fs-medium" href="home.php">Forgot Password?</a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="signup d-none">
                <h1 class="sub-heading">Sign up</h1>
                <form id="sign-up" action="" method="post">
                    <div class="form-group">
                        <label class="fs-large" for="">Username:</label><br>
                        <input rules="required" name="signupUsername" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here" autofocus>
                        <span class="form-message"></span>
                    </div>
                    <div class="form-group">
                        <label class="fs-large" for="">Email:</label><br>
                        <input rules="required|email" name="signupEmail" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here">
                        <span class="form-message"></span>
                    </div>
                    <div class="form-group">
                        <label class="fs-large" for="">Password:</label><br>
                        <input rules="required|min:6|max:20" name="signupPassword" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here">
                        <span class="form-message"></span>
                    </div>
                    <!-- <div class="form-group">
                        <label class="fs-large" for="">Re-Password:</label><br>
                        <input rules="required" name="signupRepassword" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here">
                        <span class="form-message"></span>
                    </div> -->
                    <button name="signupSubmit" class="submit fs-medium radius w-100 p-10" type="submit">Sign up</button>
                </form>
            </div>
        </div>
        <div class=" box-right-item">
            <div class="text-center">
                <h1 class="sub-heading ">Membership benefits</h1>
                <p class="fs-medium">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quaerat accusamus praesentium mollitia laboriosam earum possimus veniam delectus repellendus explicabo officiis! Signing up at this Beauty Hair allows you to access your booking status and history. Simply fill in the fields below and Spa House will create a new account for you in no time. The Spa will only need you with the necessary information to make your experience faster and easier.</p>
                <button class="transform-signup submit p-10 fs-medium">Sign up</button>
                <button class="transform-signin submit d-none p-10 fs-medium">Sign in</button>
            </div>
        </div>
    </div>
</section>



<?php
require_once './components/footer.php'
?>

<script src="./resources/js/vvalidator.js"></script>
<script>
    Validator('#sign-up');
    Validator('#signin');

</script>
