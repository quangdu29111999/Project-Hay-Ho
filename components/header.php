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
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1, maximum-scale=1">
    <title>Document</title>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />
    <link rel="stylesheet" href="./resources/css/stylestyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

</head>

<body>
    <marquee  class="marquee " behavior="" direction="">Contact: Mr.Du</marquee>
    <header>

        <div class="d-flex navbar-top" style="justify-content: space-around; align-items:center; padding:1.6vh 15vw; text-align:center">

            <div class="find text-center">
                <span>All<i class="fa-solid fa-chevron-down"></i><i style="display: none;" class="fa-solid fa-chevron-up"></i></span>
                <input class="fs-medium" style="padding: 0px;" type="text" placeholder="Search">
                <i class="fa-solid fa-magnifying-glass"></i>
            </div>
            <a href="home.php" class="logo">
                <p ><?= $rowBrand['slogan'] ?></p>
            </a>

            <div class="icons">
                <a href="#" class="fas fa-heart"></a>
                <a href="#" class="fas fa-shopping-cart"></a>
                <a href="login.php" class="fas fa-user"></a>
            </div>
        </div>


        <div class="w-100" style="background-color: #dbdbdb;">
            <input type="checkbox" name="" id="toggler">
            <label for="toggler" class="fas fa-bars"></label>
            <nav class="navbar">
                <div>
                    <a href="home.php">home</a>
                </div>
                <div>
                    <a href="home.php">about</a>
                    <ul class="sub-title">
                        <li><a href="problem.php">Problem</a></li>
                        <li><a href="">test</a></li>
                        <li><a href="">test</a></li>
                    </ul>
                </div>
                <div>
                    <a href="products.php">products</a>
                </div>
                <div>
                    <a href="#review">news</a>
                    <ul>
                        <li><a href="">test</a></li>
                        <li><a href="">test</a></li>
                        <li><a href="">test</a></li>
                    </ul>
                </div>
                <div>
                    <a href="#contact">contact</a>
                </div>
            </nav>
        </div>








    </header>