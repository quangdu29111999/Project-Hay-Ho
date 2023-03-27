const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const header = $('header')
console.log(header)
const navbar = $$('.navbar > a')

// scrollDown -> hide navbar &  scrollUp -> show navbar 
let lastScrollTop = 0
window.addEventListener('scroll', () => {
    let scrollTop = window.pageYOffset;
    if (scrollTop > lastScrollTop) {
        header.style.display = 'none'
    } else if (scrollTop < lastScrollTop) {
        header.style.display = 'flex'
    }
    lastScrollTop = scrollTop
})

