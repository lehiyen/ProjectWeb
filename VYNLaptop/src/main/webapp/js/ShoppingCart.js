
let cart = [] ;
var checking = true;
var  bags = document.querySelectorAll(".fa-shopping-bag")
const sumTable = document.querySelector(".add-products")
var listButtonCart = document.querySelectorAll(".button-cart-item")
listButtonCart.forEach(button =>{
    button.addEventListener("click" , () => {


        var ajax = new XMLHttpRequest()
        ajax.onreadystatechange = function () {
            if (ajax.readyState == 4) {
                var data = ajax.responseText;
                var listString = data.split(" ", 2)
                console.log(data);
                document.getElementById("text-bag").innerText = listString[0]
                document.getElementById("span-money").innerText=listString[1]+" vnd"
                checking = true ;
            }
        }
        ajax.open('GET', 'shopCart?id='+button.id)
        ajax.send(null)


    })
})

var res = new XMLHttpRequest()
res.onreadystatechange = function () {
    if (res.readyState == 4) {
        var data = res.responseText;
        var listString = data.split(" ", 2)
        console.log(data);
        document.getElementById("text-bag").innerText = listString[0]
        document.getElementById("span-money").innerText=listString[1] +" vnd"


    }
}
res.open('GET', 'Load');
res.send(null)


var num = sumTable.children.length

function listCart( element){
    var id = element.id ;
    var  img = element.children[0].children[0].src
    var name = element.children[0].children[1].innerText
    var price = element.children[1].innerText
    var amount = element.children[2].children[0].children[0].children[1].value
    element.children[2].children[0].children[0].children[2].setAttribute('class' , "btn_Cart_Up") // set lai class button + trong gio hang
    element.children[2].children[0].children[0].children[0].setAttribute('class' , "btn_Cart_Down") // set lai class cho buton - trong gio hang
    element.children[2].children[0].children[0].children[2].id = element.id
    element.children[2].children[0].children[0].children[0].id = element.id
    element.children[2].children[0].children[0].children[2].style.cursor="pointer"
    element.children[2].children[0].children[0].children[0].style.cursor="pointer"


    return { "id" :id ,"img" : img , "name" : name , "price" : parseInt(price)  , "amount" : parseInt(amount)}
}
for(var i =0 ; i<num ; i++){
    cart.push(listCart(sumTable.children[i]))

}
console.log(cart) //  in danh sach cart

var  listRemoveItem = document.querySelectorAll(".icon_close")
listRemoveItem.forEach(remove => {
    remove.addEventListener("click" , () =>{
        remove.parentNode.parentNode.parentNode.removeChild(remove.parentNode.parentNode)
        ajax("cartRemove" ,remove.id)
        resetCart(remove.id)

        // goi  den class servlet tu ham ajax(url , id)

    })
});



// ham set lai tong so tien khi  click vao button + hoac -

function resetMoney(){
    var totalMoney = 0;
    var totalItem =0 ;

    cart.forEach(element => {
        totalMoney +=element.amount*element.price
        totalItem +=element.amount
    });
    bags.forEach(bag => {
        bag.parentNode.children[1].innerText = totalItem
    });
    return totalMoney +" vnd"
}
// ham  set lai  tong san pham khi click vao buton  +
function resetAmountInc(num){
    var totalAmount = 0
    cart.forEach(element => {
        if(num==element.id){
            element.amount +=1
            totalAmount = element.amount
        }
    });
    return totalAmount ;
}
// reset lai tong san pham khi click vao button -
function resetAmountDes(num){
    var total = 0
    cart.forEach(element => {
        if(element.id==num){
            if(element.amount==1)  total=1


            else{
                element.amount -= 1
                total = element.amount
            }
        }
    });
    return total
}
// ham tinh tong lai so tien cua tung item trong cart khi click buton + -
function sum(id){
    var total = 0
    cart.forEach(element => {
        if(element.id == id){
            total = element.amount*element.price
        }
    });
    return total + " vnd"

}

// goi ajax toi servlet
function ajax( url , id ){
    var  xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function (){
        if(xhr.readyState==4){

        }
    }
    xhr.open("GET" , url + "?id="+id)
    xhr.send(null)
}
// ham  tr ve gia tri mang cart khi click xoa
function resetCart(id){
    cart = cart.filter(item => item.id !=id)
    document.querySelector(".total-Money").innerText = resetMoney()
    document.getElementById("span-money").innerText = resetMoney()
}
//  ham display
// btn_Cart_Up   btn_Cart_Down

var ups = document.querySelectorAll(".btn_Cart_Up")
var downs = document.querySelectorAll(".btn_Cart_Down")

ups.forEach(up => {
    up.addEventListener("click" , () =>{

        up.parentNode.children[1].value = resetAmountInc(up.id)
        document.querySelector(".total-Money").innerText = resetMoney()
        document.getElementById("span-money").innerText = resetMoney()
        up.parentNode.parentNode.parentNode.parentNode.children[3].innerText = sum(up.id)
        ajax("ClickButtonUp" ,up.id)
    })
});
downs.forEach(down => {
    down.addEventListener("click" , () =>{


        down.parentNode.children[1].value=resetAmountDes(down.id)
        document.querySelector(".total-Money").innerText = resetMoney()
        document.getElementById("span-money").innerText = resetMoney()
        down.parentNode.parentNode.parentNode.parentNode.children[3].innerText=sum(down.id)
        ajax("ClickButtonDown" , down.id)
    })
});






