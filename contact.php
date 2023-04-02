<?php
require_once './components/header.php';
?>

<section class="contact" id="contact">

    <h1 class="heading"> <span> contact </span> us </h1>

    <div class="row">

        <form id="feedback" action="#" method="POST">
            <div class="form-group">
                <input name="fullname" rules="required" type="text" placeholder="name" class="box">
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input name="email"rules="required|email" type="email" placeholder="email" class="box">
                <span class="form-message"></span>
            </div>
            <div class="form-group">
                <input name="phone"rules="required|phone" type="number" placeholder="number" class="box">
                <span class="form-message"></span>
            </div>
            <textarea name="" class="box" placeholder="message" id="" cols="30" rows="10"></textarea>
            <!-- <base type="submit" value="send message" class="btn"> -->
            <button type="submit" class="btn">send message</button>
        </form>

        <div class="image">
            <img src="./resources/images/contact-img.svg" alt="">
        </div>

    </div>

    <div class="w-100">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3724.7300076826764!2d105.84690451579532!3d21.00345719401549!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135adca496594a1%3A0xced1bb35edb200f7!2zNTQgUC4gTMOqIFRoYW5oIE5naOG7iywgxJDhu5NuZyBUw6JtLCBIYWkgQsOgIFRyxrBuZywgSMOgIE7hu5lpLCBWaWV0bmFt!5e0!3m2!1sen!2s!4v1680454989443!5m2!1sen!2s" style="border:0; width:100%; height: 40vh" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>

    </div>
</section>

<?php
require_once './components/footer.php';
?>


<script src="./resources/js/vvalidator.js"></script>
<script>
    Validator('#feedback');
</script>