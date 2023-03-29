<?php
// handle signin

// if (isset($_POST['signin'])) {
//     $username = trim($_POST['signinUsername']);
//     $password = trim($_POST['signinPassword']);
//     $query = "SELECT * FROM account WHERE username='$username' AND password ='$password' AND status = 0";
//     $result = mysqli_query($conn, $query);
//     $row = mysqli_fetch_assoc($result);
//     if (mysqli_num_rows($result) > 0) {
//         header('Location: ../home.php?id='.$row['id']);
//     } else {
//         echo '<script type=text/javascript>alert("that bai")</script>';
//     }
//     mysqli_close($conn);
// }
require_once './components/header.php';
?>


<section class="login" id="login">
    <h1 class="heading"> <br> Login</h1>
    <div class="box-container">
        <div class="box-left-item">
            <div class="signin ">
                <h1 class="sub-heading">Sign in</h1>
                <form action="#" method="post">
                    <label class="fs-large" for="">Username & email:</label><br>
                    <input name="signin-username" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here" autofocus><br>
                    <label class="fs-large" for="">Password:</label><br>
                    <input name="signin-password" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here">
                    <button name="signin-submit" class="submit fs-medium radius w-100 p-10" type="submit">Sign in</button>
                    <div class="w-100 m-0 d-flex">
                        <div class="w-50">
                            <input class="m-0" type="checkbox" name="" id="">
                            <label class="fs-medium" for="">Remeber me</label>
                        </div>
                        <div class="w-50">
                            <a class="float-right fs-medium" href="">Forgot Password?</a>
                        </div>
                    </div>
                </form>
            </div>
            <div class="signup d-none">
                <h1 class="sub-heading">Sign up</h1>
                <form action="">
                    <label class="fs-large" for="">Username:</label><br>
                    <input name="signup-username" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here" autofocus><br>
                    <label class="fs-large" for="">Email:</label><br>
                    <input name="signup-email" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here"><br>
                    <label class="fs-large" for="">Password:</label><br>
                    <input name="signup-password" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here"><br>
                    <label class="fs-large" for="">Re-Password:</label><br>
                    <input name="signup-re-password" class="fs-medium radius p-10 w-100 border" type="text" placeholder="Enter here">
                    <button name="signup-submit" class="submit fs-medium radius w-100 p-10" type="submit">Sign up</button>
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