<!-- header section starts  -->
<?php
require_once './database/db.php';
$queryProducts = "SELECT * FROM information_products";
$resultProducts = mysqli_query($conn, $queryProducts);

require_once './components/header.php'
?>

<!-- home section ends -->

<!-- about section starts  -->
<section class="about" id="about">
    <!-- <h1 class="heading"><span> about </span> us</h1>  -->
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="">
                    <img src="./resources/images/bo-my-pham-2022.jpg" alt="">
                </div>

            </div>


            <div class="swiper-slide">
                <div>
                    <img src="./resources/images/cocoon-my-pham-thuan-chay-viet-nam.jpg" alt="">
                </div>

            </div>

        </div>
        <div class="swiper-pagination"></div>
    </div>


</section>

<section>

</section>

<!-- about section ends -->

<!-- icons section starts  -->



<!-- icons section ends -->

<!-- prodcuts section starts  -->

<section class="products" id="products">

    <h1 class="heading"> best <span>seller</span> </h1>

    <div class="box-container">

        <div class="swiper home-best-seller">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <?php
                    $queryHomeSellerCream = "SELECT * FROM information_products WHERE title = 'Hair cream'";
                    $resultHomeSellerCream = mysqli_query($conn, $queryHomeSellerCream);
                    if (mysqli_num_rows($resultHomeSellerCream) > 0) {
                        while ($rowHomeSellerCream = mysqli_fetch_assoc($resultHomeSellerCream)) { ?>
                            <div class="box">
                                <span class="discount">-10%</span>
                                <div class="image">
                                    <img src="resources/images/imgProducts/<?= $rowHomeSellerCream['url'] ?>" alt="">
                                    <div class="icons">
                                        <a href="#" class="fas fa-heart"></a>
                                        <a href="#" class="cart-btn">add to cart</a>
                                        <a href="#" class="fas fa-share"></a>
                                    </div>
                                </div>
                                <div class="content">
                                    <h4><?= $rowHomeSellerCream['name'] ?></h4>
                                    <div class="price"><?= $rowHomeSellerCream['price'] ?><span>$15.99</span> </div>
                                    <span style="font-size: small;"><?= $rowHomeSellerCream['title'] ?></span>
                                </div>
                            </div>
                    <?php
                        }
                    }
                    ?>
                </div>
                <div class="swiper-slide">
                    <?php
                    $queryHomeSellerCream = "SELECT * FROM information_products WHERE title = 'Professional Sampoo'";
                    $resultHomeSellerCream = mysqli_query($conn, $queryHomeSellerCream);
                    if (mysqli_num_rows($resultHomeSellerCream) > 0) {
                        while ($rowHomeSellerCream = mysqli_fetch_assoc($resultHomeSellerCream)) { ?>
                            <div class="box">
                                <span class="discount">-10%</span>
                                <div class="image">
                                    <img src="resources/images/imgProducts/<?= $rowHomeSellerCream['url'] ?>" alt="">
                                    <div class="icons">
                                        <a href="#" class="fas fa-heart"></a>
                                        <a href="#" class="cart-btn">add to cart</a>
                                        <a href="#" class="fas fa-share"></a>
                                    </div>
                                </div>
                                <div class="content">
                                    <h4><?= $rowHomeSellerCream['name'] ?></h4>
                                    <div class="price"><?= $rowHomeSellerCream['price'] ?><span>$15.99</span> </div>
                                    <span style="font-size: small;"><?= $rowHomeSellerCream['title'] ?></span>
                                </div>
                            </div>
                    <?php
                        }
                    }
                    ?>
                </div>
                <div class="swiper-slide">
                    <?php
                    $queryHomeSellerCream = "SELECT * FROM information_products WHERE title = 'Hair Sprays Good'";
                    $resultHomeSellerCream = mysqli_query($conn, $queryHomeSellerCream);
                    if (mysqli_num_rows($resultHomeSellerCream) > 0) {
                        while ($rowHomeSellerCream = mysqli_fetch_assoc($resultHomeSellerCream)) { ?>
                            <h3></h3>
                            <div class="box">
                                <span class="discount">-10%</span>
                                <div class="image">
                                    <img src="resources/images/imgProducts/<?= $rowHomeSellerCream['url'] ?>" alt="">
                                    <div class="icons">
                                        <a href="#" class="fas fa-heart"></a>
                                        <a href="#" class="cart-btn">add to cart</a>
                                        <a href="#" class="fas fa-share"></a>
                                    </div>
                                </div>
                                <div class="content">
                                    <h4><?= $rowHomeSellerCream['name'] ?></h4>
                                    <div class="price"><?= $rowHomeSellerCream['price'] ?><span>$15.99</span> </div>
                                    <span style="font-size: small;"><?= $rowHomeSellerCream['title'] ?></span>
                                </div>
                            </div>
                    <?php
                        }
                    }
                    ?>
                </div>

            </div>
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-scrollbar"></div>
        </div>


    </div>




</section>

<!-- prodcuts section ends -->

<section class="icons-container">

    <div class="icons">
        <img src="./resources/images/icon-1.png" alt="">
        <div class="info">
            <h3>free delivery</h3>
            <span>on all orders</span>
        </div>
    </div>

    <div class="icons">
        <img src="./resources/images/icon-2.png" alt="">
        <div class="info">
            <h3>10 days returns</h3>
            <span>moneyback guarantee</span>
        </div>
    </div>

    <div class="icons">
        <img src="./resources/images/icon-3.png" alt="">
        <div class="info">
            <h3>offer & gifts</h3>
            <span>on all orders</span>
        </div>
    </div>

    <div class="icons">
        <img src="./resources/images/icon-4.png" alt="">
        <div class="info">
            <h3>secure paymens</h3>
            <span>protected by paypal</span>
        </div>
    </div>

</section>

<section>
    <h1 class="heading">beauty secrets</h1>
    <div class="home-news d-flex">
        <div>
            <img class="w-100" src="./resources/images/imgNews/nyfw.png" alt="">
            <div>
                <h3>New York Fashion Week</h3>
                <p>No doubt Jonathan Simkhai's Spring 2018 Ready-to-Wear collection had a sense of airiness about it — something weve long been waiting for from one of our favorite designers.</p>
                <button>News Button</button>
            </div>
        </div>
        <div>
            <img class="w-100" src="./resources/images/imgNews/nyfw.png" alt="">
            <div>
                <h3>New York Fashion Week</h3>
                <p>No doubt Jonathan Simkhai's Spring 2018 Ready-to-Wear collection had a sense of airiness about it — something weve long been waiting for from one of our favorite designers.</p>
                <button>News Button</button>
            </div>
        </div>
        <div>
            <img class="w-100" src="./resources/images/imgNews/nyfw.png" alt="">
            <div>
                <h3>New York Fashion Week</h3>
                <p>No doubt Jonathan Simkhai's Spring 2018 Ready-to-Wear collection had a sense of airiness about it — something weve long been waiting for from one of our favorite designers.</p>
                <button>News Button</button>
            </div>
        </div>
    </div>
</section>
<section>
    <h1 class="heading">news</h1>
    <div class="home-news d-flex">
        <div>
            <img class="w-100" src="./resources/images/imgNews/nyfw.png" alt="">
            <div>
                <h3>New York Fashion Week</h3>
                <p>No doubt Jonathan Simkhai's Spring 2018 Ready-to-Wear collection had a sense of airiness about it — something weve long been waiting for from one of our favorite designers.</p>
                <button>News Button</button>
            </div>
        </div>
        <div>
            <img class="w-100" src="./resources/images/imgNews/nyfw.png" alt="">
            <div>
                <h3>New York Fashion Week</h3>
                <p>No doubt Jonathan Simkhai's Spring 2018 Ready-to-Wear collection had a sense of airiness about it — something weve long been waiting for from one of our favorite designers.</p>
                <button>News Button</button>
            </div>
        </div>
        <div>
            <img class="w-100" src="./resources/images/imgNews/nyfw.png" alt="">
            <div>
                <h3>New York Fashion Week</h3>
                <p>No doubt Jonathan Simkhai's Spring 2018 Ready-to-Wear collection had a sense of airiness about it — something weve long been waiting for from one of our favorite designers.</p>
                <button>News Button</button>
            </div>
        </div>
    </div>
</section>

<!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading"> customer's <span>review</span> </h1>

    <div class="box-container">

        <div class="box">
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <p></p>
            <div class="user">
                <img src="./resources/images/pic-1.png" alt="">
                <div class="user-info">
                    <h3>john deo</h3>
                    <span>happy customer</span>
                </div>
            </div>
            <span class="fas fa-quote-right"></span>
        </div>

        <div class="box">
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <p></p>
            <div class="user">
                <img src="./resources/images/pic-2.png" alt="">
                <div class="user-info">
                    <h3>john deo</h3>
                    <span>happy customer</span>
                </div>
            </div>
            <span class="fas fa-quote-right"></span>
        </div>

        <div class="box">
            <div class="stars">
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
                <i class="fas fa-star"></i>
            </div>
            <p></p>
            <div class="user">
                <img src="./resources/images/pic-3.png" alt="">
                <div class="user-info">
                    <h3>john deo</h3>
                    <span>happy customer</span>
                </div>
            </div>
            <span class="fas fa-quote-right"></span>
        </div>

    </div>

</section>

<!-- review section ends -->

<!-- contact section starts  -->

<section class="contact" id="contact">

    <h1 class="heading"> <span> contact </span> us </h1>

    <div class="row">

        <form action="">
            <input type="text" placeholder="name" class="box">
            <input type="email" placeholder="email" class="box">
            <input type="number" placeholder="number" class="box">
            <textarea name="" class="box" placeholder="message" id="" cols="30" rows="10"></textarea>
            <input type="submit" value="send message" class="btn">
        </form>

        <div class="image">
            <img src="./resources/images/contact-img.svg" alt="">
        </div>

    </div>

</section>


<section>
    <div style="--swiper-navigation-color: #fff; --swiper-pagination-color: #fff" class="swiper home-news">
        <div class="parallax-bg" style="background-image: url('./resources/images/backgroundLogin.jpg');" data-swiper-parallax="-23%"></div>
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <div class="title" data-swiper-parallax="-300">Slide 1</div>
                <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
                <div class="text" data-swiper-parallax="-100">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                        dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla
                        laoreet justo vitae porttitor porttitor. Suspendisse in sem justo.
                        Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod.
                        Aliquam hendrerit lorem at elit facilisis rutrum. Ut at
                        ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec,
                        tincidunt ut libero. Aenean feugiat non eros quis feugiat.
                    </p>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="title" data-swiper-parallax="-300">Slide 2</div>
                <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
                <div class="text" data-swiper-parallax="-100">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                        dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla
                        laoreet justo vitae porttitor porttitor. Suspendisse in sem justo.
                        Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod.
                        Aliquam hendrerit lorem at elit facilisis rutrum. Ut at
                        ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec,
                        tincidunt ut libero. Aenean feugiat non eros quis feugiat.
                    </p>
                </div>
            </div>
            <div class="swiper-slide">
                <div class="title" data-swiper-parallax="-300">Slide 3</div>
                <div class="subtitle" data-swiper-parallax="-200">Subtitle</div>
                <div class="text" data-swiper-parallax="-100">
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam
                        dictum mattis velit, sit amet faucibus felis iaculis nec. Nulla
                        laoreet justo vitae porttitor porttitor. Suspendisse in sem justo.
                        Integer laoreet magna nec elit suscipit, ac laoreet nibh euismod.
                        Aliquam hendrerit lorem at elit facilisis rutrum. Ut at
                        ullamcorper velit. Nulla ligula nisi, imperdiet ut lacinia nec,
                        tincidunt ut libero. Aenean feugiat non eros quis feugiat.
                    </p>
                </div>
            </div>
        </div>
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
        <div class="swiper-pagination"></div>
    </div>
</section>

<!-- contact section ends -->

<!-- footer section starts  -->
<!-- footer section ends -->
<script>

</script>
<?php require_once './components/footer.php' ?>