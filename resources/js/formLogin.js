const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const registerBtn = $('.register-btn')
const formLogin = $$('.form-login')

registerBtn.onclick = () => {
    formLogin[0].classList.add('status')
    formLogin[1].classList.remove('status')
}