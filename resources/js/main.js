const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const header = $('header')
const navbar = $$('.navbar');
console.log(navbar)

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







