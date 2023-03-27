<?php
    include "./database/db.php"
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>admin</title>
</head>
<body>
    <form action="admin.php" method="post">
        <label>ProductName</label>
        <br>
        <input type="text" name="productname">
        <br>
        <label>Price</label>
        <br>
        <input type="text" name="price">
        <br>
        <label>Information</label>
        <br>
        <input type="text" name="information">
        <br>
        <label>ProductLink</label>
        <br>
        <input type="text" name="productlink">
        <br>
        <button type="submit" name='nhap'>Submit</button>
    </form>

    <?php
        if(isset($_POST['nhap'])){
            $productname = mysqli_real_escape_string($conn, $_POST['productname']);
            $price = mysqli_real_escape_string($conn, $_POST['price']);
            $information = mysqli_real_escape_string($conn, $_POST['information']);
            $productlink = mysqli_real_escape_string($conn, $_POST['productlink']);

            if( empty($productname) || empty($price) || empty($information) || empty($productlink) ){
                echo '<script language ="javascript">alert("Vui long nhap thong tin")</script> ';
                die();
            }

        $sql = "SELECT * FROM sanpham where productname = '$productname'";

        $result = mysqli_query($conn,$sql);

        if(mysqli_num_rows($result)>0){
            echo '<script language ="javascript">alert("Da co thong tin cua san pham nay roi")</script> ';
        }
        else{
            $sql = "INSERT INTO sanpham (productname, price, information, productlink) VALUES ('$productname','$price','$information', '$productlink') ";
            echo '<script language="javascript"> alert("Nhap thong tin thanh cong"); window.location="admin.php";</script> ';
        }
        if (mysqli_query($conn, $sql)){
            echo "Tên đăng nhập: ".$_POST['productname']."<br/>";
            echo "gia: " .$_POST['price']."<br/>";
            echo "thongtin: ".$_POST['information']."<br/>";
            echo "linksp: ".$_POST['productlink']."<br/>";
            }
            else {
            echo '<script language="javascript">alert("Có lỗi trong quá trình xử lý"); window.location="admin.php";</script>';
            }

        }
    ?>
            <table>
            <tr>
                <th>Productname</th>
                <th>price</th>
                <th>information</th>
                <th>productlink</th>
            </tr>
            <?php
                $sql= ( "SELECT*FROM sanpham");
                $result = mysqli_query($conn, $sql);
                while($rows = mysqli_fetch_array($result)){?>
                    <tr>
                        <td><?php echo $rows["productname"]?></td>
                        <td><?php echo $rows["price"]?></td>
                        <td><?php echo $rows["information"]?></td>
                        <td><?php echo $rows["productlink"]?></td>
                        <td>Sua | Xoa</td>
                    </tr>
                <?php }?>
        </table>
</body>
</html>