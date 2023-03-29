<?php 
require_once 'db.php';

$queryBrand = "SELECT * FROM brand_haircare WHERE id = 1";
$resuultBrand = mysqli_query($conn, $queryBrand);
$rowBrand = mysqli_fetch_assoc($resuultBrand);

$queryProducts = "SELECT * FROM information_products";
$resultProducts = mysqli_query($conn, $queryProducts);


// $rowProducts = mysqli_fetch_assoc($resultProducts);

// $queryProductsImages = "SELECT * FROM products_images WHERE products_detail_id = $products_detail_id";
// $resultProductsImgase = mysqli_query($conn, $queryProducts); 
// $rowProductsImages = mysqli_fetch_assoc($resultProducts);
?>

<!-- <?php //while(mysqli_num_rows($resultProducts) > 0) {?>
        
        <?php ?> -->