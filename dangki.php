<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link rel="stylesheet" href="bbc.css">
</head>
<body>
  

<form action="" >
   <div class="container">
     <h1> Đăng Ký</h1>
     <p>Xin hãy nhập biểu mẫu bên dưới để đăng ký.</p>
     <hr>
    <label for="email"><b>Email</b></label>
     <input type="text" placeholder="Nhập Email" name="email" required>
    <label for="psw"><b>Mật Khẩu</b></label>
     <input type="password" placeholder="Nhập Mật Khẩu" name="psw" required>
    <label for="psw-repeat"><b>Nhập Lại Mật Khẩu</b></label>
     <input type="password" placeholder="Nhập Lại Mật Khẩu" name="psw-repeat" required>
    <label>
       <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Nhớ Đăng Nhập
     </label>
    <div class="clearfix">
       <button type="submit" class="signupbtn">Sign Up</button>
     </div>
   </div>
 </form>
</body>
</html>