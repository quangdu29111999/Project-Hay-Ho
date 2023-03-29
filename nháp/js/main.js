const $ = document.querySelector.bind(document)
const $$ = document.querySelectorAll.bind(document)

const header = $('header')
const navbar = $$('.navbar > a')


const login = $('.fas.fa-user')

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

login.onclick = () => {
    
}
const btn = document.querySelectorAll("button")
// console.log(btn)
btn.forEach(function(button,index){
button.addEventListener("click",function(event){{
    var btnItem = event.target
    var product = btnItem.parentElement
    var productImg = product.querySelector("img").src
    var productName = product.querySelector("h3").innerText
    var productPrice =product.querySelector("span").innerText
    // console.log(productImg,productName,productPrice)
    addcart(productImg,productName,productPrice)
}}) 
})
function  addcart(productImg,productName,productPrice){
    var addtr = document.createElement("tr")
    var cartItem = document.querySelectorAll("tbody tr")
     for(var i= 0 ; i < cartItem.length;i++){
        var productT = document.querySelectorAll('.title')
        if(productT[i].innerHTML==productName){
            alert('Your product is already in the cart')
            return
        }
    }
    var trcontent = '<tr> <td style="display:flex;align-items:center"><img style="width:70px" src="'+productImg+'" alt=""><span class="title">'+productName+'</span></td><td><p><span class="prices">'+productPrice+'</span></p></td>    <td><input style="width: 30px;outline:none;" type="number" value="1" min="1">`</td><td style="cursor: pointer;"><span class="cart-delete">Delete</span></td></tr>'
    addtr.innerHTML = trcontent
    var cartTable = document.querySelector("tbody")
   
    // console.log(cartTable)
    cartTable.append(addtr)
    carttotal ()
    deleteCart()
    
}
//------------------totolprice-------------------------
function carttotal (){
    var cartItem = document.querySelectorAll("tbody tr")
    var totalB =0
    // console.log(cartItem.length)
    for(var i= 0 ; i < cartItem.length;i++){
        var inputValue = cartItem[i].querySelector("input").value
        // console.log(inputValue)
        var productPrice = cartItem[i].querySelector(".prices").innerHTML
        // console.log(productPrice)
        totalA = inputValue*productPrice
         //console.log(totalA)
        totalB =totalB+totalA



    }
    var cartTotalA = document.querySelector('.prine-total span')
    cartTotalA.innerHTML = totalB
    inputchange()
     console.log(cartTotalA)
    

}
    
//----------------------Delete cart---------------------------------
function deleteCart(){
    var cartItem = document.querySelectorAll("tbody tr")
    for(var i= 0 ; i < cartItem.length;i++){
        var productT = document.querySelectorAll('.cart-delete')
        productT[i].addEventListener("click",function(event){
            var cartDelete = event.target
            var cartitemR =cartDelete.parentElement.parentElement
            cartitemR.remove()
            carttotal ()
                    // console.log(cartitemR)

        })
    }
}
function inputchange(){
    var cartItem = document.querySelectorAll("tbody tr")
    for(var i= 0 ; i < cartItem.length;i++){
        var inputValue = cartItem[i].querySelector('input')
        inputValue.addEventListener("change",function(){
            carttotal ()

        })
    }
}

