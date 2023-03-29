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
    <h1 class="heading">
        <br>
        <span> about </span> us
    </h1>
    <div class="swiper mySwiper">
        <div class="swiper-wrapper">
            <div style="position: relative;
            display:flex" class="swiper-slide">
                <div style="width:50%">
                    <img src="./resources/images/backgroundLogin.jpg" alt="">
                </div>
                <div style="width:50%" class="contentSlide">
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum odit sit et laborum veniam iure voluptas eveniet quidem velit fuga.</div>
                    <div>Tìm hiểu thêm</div>
                    <a href="#">Tìm hiểu thêm</a>
                </div>
            </div>
            <div style="position: relative;
            display:flex" class="swiper-slide">
                <div style="width:50%">
                    <img src="./resources/images/backgroundLogin.jpg" alt="">
                </div>
                <div style="width:50%" class="contentSlide">
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum odit sit et laborum veniam iure voluptas eveniet quidem velit fuga.</div>
                    <div>Tìm hiểu thêm</div>
                    <a href="#">Tìm hiểu thêm</a>
                </div>
            </div>
            <div style="position: relative;
            display:flex" class="swiper-slide">
                <div style="width:50%">
                    <img src="./resources/images/backgroundLogin.jpg" alt="">
                </div>
                <div style="width:50%" class="contentSlide">
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum odit sit et laborum veniam iure voluptas eveniet quidem velit fuga.</div>
                    <div>Tìm hiểu thêm</div>
                    <a href="#">Tìm hiểu thêm</a>
                </div>
            </div>
            <div style="position: relative;
            display:flex" class="swiper-slide">
                <div style="width:50%">
                    <img src="./resources/images/backgroundLogin.jpg" alt="">
                </div>
                <div style="width:50%" class="contentSlide">
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm</div>
                    <div>Tìm hiểu thêm Lorem ipsum dolor sit amet consectetur, adipisicing elit. Nostrum odit sit et laborum veniam iure voluptas eveniet quidem velit fuga.</div>
                    <div>Tìm hiểu thêm</div>
                    <a href="#">Tìm hiểu thêm</a>
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

<!-- icons section ends -->

<!-- prodcuts section starts  -->

<section class="products" id="products">

    <h1 class="heading"> latest <span>products</span> </h1>

    <div class="box-container">

        <div class="box">
            <span class="discount">-10%</span>
            <div class="image">
                <img src="https://i.pinimg.com/564x/86/1b/f8/861bf8fb79f6477fc3ec6f4a18a9ed8e.jpg" alt="">
                <div class="icons">
                    <a href="#" class="fas fa-heart"></a>
                    <a href="#" class="cart-btn">add to cart</a>
                    <a href="#" class="fas fa-share"></a>
                </div>
            </div>
            <div class="content">
                <h3>Produc1</h3>
                <div class="price"> $12.99 <span>$15.99</span> </div>
            </div>
        </div>



    </div>

</section>

<!-- prodcuts section ends -->

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

</section>

<!-- contact section ends -->

<!-- footer section starts  -->
<!-- footer section ends -->
<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>


<script>
    var swiper = new Swiper(".mySwiper", {
        pagination: {
            el: ".swiper-pagination",
            dynamicBullets: true,
        },
    });
</script>
<?php require_once './components/footer.php' ?>