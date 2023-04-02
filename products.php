<?php
include './components/header.php';
require_once './database/mysql.php';
?>

<section class="products" id="products">
    <!-- sản phẩm chăm sóc tóc -->
    <h1 class="heading">latest <span>products</span> </h1>
    <p style="font-size: large;">Hair Care</p>
    <div class="box-container">
        <?php
        while ($rowProducts = mysqli_fetch_assoc($resultProducts)) {
        ?>
            <div class="box">
                <span class="discount">-10%</span>
                <div class="image">
                    <a href="<?= $rowProducts['name'] ?>"><img src="resources/images/imgProducts/<?= $rowProducts['url'] ?>" alt=""></a>
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">add to cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3 class="fs-medium"><?= $rowProducts['name'] ?></h3>
                    <div class="price"> $<?= $rowProducts['price'] ?> <span>$15.99</span> </div>
                    <span style="font-size: small;"><?= $rowProducts['title'] ?></span>
                </div>
            </div>
        <?php } ?>
    </div>
</section>


<section>
    <!-- Thieết bị chăm sóc tóc -->
    ádasdsad
</section>

<?php include './components/footer.php' ?>

<script src="./resources/js/mainm.js"></script>
</body>

</html>