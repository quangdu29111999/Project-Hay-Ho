<?php 
require_once './database/db.php'; 
$queryBrand = "SELECT * FROM brand_haircare WHERE id = 1";
$resuultBrand = mysqli_query($conn, $queryBrand);
$rowBrand = mysqli_fetch_assoc($resuultBrand);
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link rel="stylesheet" href="./resources/css/styleee.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
</head>

<body>
    <header style="background-color: #dbdbdb;">

        <input type="checkbox" name="" id="toggler">
        <label for="toggler" class="fas fa-bars"></label>

        <a href="home.php" class="logo">
            <p><?= $rowBrand['slogan'] ?></p>
        </a>

        <nav class="navbar">
            <a  href="home.php">home</a>
            <a  href="#about">about</a>
            <a  href="products.php">products</a>
            <a  href="#review">news</a>
            <a  href="#contact">contact</a>
        </nav>
        

        <div class="icons">
            <a href="#" class="fas fa-heart"></a>
            <a href="#" class="fas fa-shopping-cart"></a>
            <a href="login.php" class="fas fa-user"></a>
        </div>


    </header>
