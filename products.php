<?php
include './components/header.php';
require_once './database/mysql.php';
?>

<section class="products" id="products">

    <h1 class="heading"> <br> latest <span>products</span> </h1>

    <div class="box-container">

    <?php while($rowProducts=mysqli_fetch_assoc($resultProducts)) { ?>

            <div class="box">
                <span class="discount">-10%</span>
                <div class="image">
                    <img src="resources/images/<?=$rowProducts['url']?>" alt="">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">add to cart</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                </div>
                <div class="content">
                    <h3><?=$rowProducts['name']?></h3>
                    <div class="price"> $<?=$rowProducts['price']?> <span>$15.99</span> </div>
                    <span>asdasdasdasdasdasdasdasd</span>
                </div>
            </div>

    <?php } ?>
    </div>
</section>

<?php include './components/footer.php' ?>

<script src="./resources/js/main.js"></script>
</body>

</html>