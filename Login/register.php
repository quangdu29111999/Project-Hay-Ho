<?php
 include "./database/db.php";

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="dangki.css">
    <title>Resister</title>
</head>
<body>
    <form action="register.php" method="post">
        <label>Fullname</label>
        <br>
        <input type="text" name="fullname">
        <br>
        <label>PhoneNumber</label>
        <br>
        <input type="text" name="phonenumber">
        <br>
        <label>Username</label>
        <br>
        <input type="text" name="username">
        <br>
        <label>Password</label>
        <br>
        <input type="password" name="password">
        <br>
        <button type="submit" name="dangki">Dang ki</button>
    </form>
    <?php
        if(isset($_POST['dangki'])){
            $username= mysqli_real_escape_string($conn, $_POST['username']);
            $password= mysqli_real_escape_string($conn, $_POST['password']);
            $phonenumber= mysqli_real_escape_string($conn, $_POST['phonenumber']);
            $fullname= mysqli_real_escape_string($conn, $_POST['fullname']);
            $password= md5($password);
            if(empty($username) || empty($password) || empty($phonenumber) || empty($fullname))
            {
                echo '<script language="javascript">alert("Vui long dien day du thong tin"); window.location="register.php";</script>';
            }
        
        $sql = "SELECT * FROM user where tendangnhap ='$username'";

        $result = mysqli_query($conn,$sql);

        if(mysqli_num_rows($result) > 0){
            echo '<script language="javascript">alert("Bị trùng tên hoặc chưa nhập tên!"); window.location="register.php";</script>';
        }
        else{
            $sql= "INSERT INTO user (tendangnhap, password, hovaten, sdt) VALUES ('$username','$password','$fullname', '$phonenumber')";
            echo '<script language="javascript">alert("Đăng ký thành công!"); window.location="login.php";</script>';
        }
        if (mysqli_query($conn, $sql)){
            echo "Tên đăng nhập: ".$_POST['username']."<br/>";
            echo "Mật khẩu: " .$_POST['password']."<br/>";
            echo "hovaten: ".$_POST['fullname']."<br/>";
            echo "Số điện thoại: ".$_POST['phonenumber']."<br/>";
            }
            else {
            echo '<script language="javascript">alert("Có lỗi trong quá trình xử lý"); window.location="register.php";</script>';
            }
        }
    ?>
</body>
</html>
