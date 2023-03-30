const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const header = $('header')
const navbar = $$('.navbar');


var swiper = new Swiper(".mySwiper", {
  pagination: {
    el: ".swiper-pagination",
    dynamicBullets: true,
  },
});

// home-news-slider
var swiper = new Swiper(".home-news", {
  speed: 600,
  parallax: true,
  pagination: {
    el: ".swiper-pagination",
    clickable: true,
  },
  
});


// home-best-seller-slider
var swiper = new Swiper(".home-best-seller", {
  scrollbar: {
    el: ".swiper-scrollbar",
    hide: true,
  },
  navigation: {
    nextEl: ".swiper-button-next",
    prevEl: ".swiper-button-prev",
  },

});

// scrollDown -> hide navbar &  scrollUp -> show navbar 
let lastScrollTop = 0;
window.onscroll = () => {
  let currentScroll = window.pageYOffset;
  if (currentScroll > lastScrollTop) {
    header.style.display = 'none'
  } else if (currentScroll < lastScrollTop) {
    header.style.display = 'flex'
  }
  lastScrollTop = currentScroll
}


// toggle signin * sign up 
const transformSignin = $('.transform-signin')
const transformSignup = $('.transform-signup')
const formSignin = $('.signin')
const formSignup = $('.signup')


transformSignup.onclick = () => {
  if (formSignup.classList.contains('d-none')) {
    formSignup.classList.remove('d-none')
    formSignin.classList.add('d-none')
    transformSignup.classList.add('d-none')
    transformSignin.classList.remove('d-none')
    transformSignin.style.transition = "all 2s";
  }
}
transformSignin.onclick = () => {
  if (formSignin.classList.contains('d-none')) {
    formSignup.classList.add('d-none')
    formSignin.classList.remove('d-none')
    transformSignup.classList.remove('d-none')
    transformSignup.style.transition = "all 2s";
    transformSignin.classList.add('d-none')

  }
}








