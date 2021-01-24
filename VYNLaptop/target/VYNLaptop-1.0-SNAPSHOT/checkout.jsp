<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Thanh toán</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
</head>
<style>
    .myBtn {
        width: 80px;
        height: 80px;
        display: none;
        position: fixed;
        bottom: 20px;
        right: 20px;
        z-index: 99;
        font-size: 18px;
        border: none;
        outline: none;
        background-image: url("img/btn_top.jpg");
        color: white;
        cursor: pointer;
        padding: 15px;
    }

    .myBtn:hover {
        background-color: #555;
    }
    .image-avatar{
        position: relative;
    }
    .list-selection li a {
        color:white;
        text-align: left;
        padding-left: 10px;
        padding-top: 5px;
    }

    .list-selection{
        position: absolute;
        z-index: 10;
        visibility: hidden;
        background:#38d39f;
        width: 150px;
        opacity: 0;
        transition: .3s;
        top: 80px;
    }
    .image-avatar:hover .list-selection{
        top: 20px;
        opacity: 1;
        visibility: visible;
    }
    .image-avatar:hover .list-selection li a:hover{
        border: 1px solid #38d39f;
        background: white;
        color: #38d39f;
    }
</style>

<body>
<button onclick="topFunction()" class="myBtn" id="myBtn" title="Lên đầu trang"></button>
<script>
    // When the user scrolls down 20px from the top of the document, show the button
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
        if (document.body.scrollTop > 50 || document.documentElement.scrollTop > 50) {
            document.getElementById("myBtn").style.display = "block";
        } else {
            document.getElementById("myBtn").style.display = "none";
        }
    }

    // When the user clicks on the button, scroll to the top of the document
    function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
    }
</script>
<!-- Page Preloder -->
<div id="preloder">
    <div class="loader"></div>
</div>
<!-- Humberger Begin -->
<jsp:include page="humberger.jsp"></jsp:include>
<!-- Humberger End -->


<!-- Header Section Begin -->
<jsp:include page="header.jsp"></jsp:include>
<!-- HeaderEnd -->

<!-- Hero Section Begin -->
<section class="hero hero-normal">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Tất cả dòng máy</span>
                    </div>
                    <ul>
                        <c:forEach items="${category}" var="p">
                            <li><a href="category?nameCategory=${p.name}">${p.name}</a></li>
                            <%--                        <li><a href="#">ACER</a></li>--%>
                            <%--                        <li><a href="#">HP</a></li>--%>
                            <%--                        <li><a href="#">DELL</a></li>--%>
                            <%--                        <li><a href="#">MACBOOK</a></li>--%>
                            <%--                        <li><a href="#">THINKPAD</a></li>--%>
                            <%--                        <li><a href="#">VIVO</a></li>--%>
                            <%--                        <li><a href="#">SAMSUNG</a></li>--%>
                            <%--                        <li><a href="#">LENOVO</a></li>--%>
                            <%--                        <li><a href="#">SONY</a></li>--%>
                            <%--                        <li><a href="#">TOSHIBA</a></li>--%>
                        </c:forEach>
                    </ul>
                </div>
            </div>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="#">
                            <input type="text" placeholder="Bạn muốn tìm gì?">
                            <button type="submit" style="border-radius: 5px; background-color: #38d39f;color: white; border: none;" ><b>Tìm kiếm</b></button>
                        </form>
                    </div>
                    <div class="hero__search__phone">
                        <div class="hero__search__phone__icon">
                            <i class="fa fa-phone"></i>
                        </div>
                        <div class="hero__search__phone__text">
                            <h5>+0378900954</h5>
                            <span>Hỗ trợ 24/7</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>VYNLaptop</h2>
                    <div class="breadcrumb__option">
                        <a href="home">Trang chủ</a>
                        <span>Thanh toán</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Checkout Section Begin -->
<section class="checkout spad">
    <div class="container">
<%--        <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--                <h6><span class="icon_tag_alt"></span> Có mã giảm giá <a href="shoping-cart.jsp">Nhấn vào đây</a> để nhập mã giảm giá--%>
<%--                </h6>--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="checkout__form">
            <h4>Chi tiết thanh toán</h4>

            <form action="order" method="get">
                <div class="row">
                    <div class="col-lg-8 col-md-6">
                        <div class="row">
                            <div class="col-lg-6" >
                                <div class="checkout__input">
                                    <p>Họ<span>*</span></p>
                                    <input placeholder="Nhập họ" type="text" name="ho">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Tên<span>*</span></p>
                                    <input placeholder="Nhập tên" type="text" name="ten">
                                </div>
                            </div>
                        </div>

                        <div class="checkout__input">
                            <p>Địa chỉ<span>*</span></p>
                            <input type="text" placeholder="Nhập địa chỉ" class="checkout__input__add" name="diachi">
                        </div>
                        <div class="checkout__input">
                            <p>Tỉnh/Thành phố<span>*</span></p>
                            <input placeholder="Nhập tên tỉnh hoặc thành phố" type="text" name="tinh">
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <div class="checkout__input">
                                    <p>Số điện thoại<span>*</span></p>
                                    <input placeholder="Nhập số điện thoại" type="text" name="sdt">
                                </div>
                            </div>
<%--                            <div class="col-lg-6">--%>
<%--                                <div class="checkout__input">--%>
<%--                                    <p>Email<span>*</span></p>--%>
<%--                                    <input placeholder="Nhập email" type="text">--%>
<%--                                </div>--%>
<%--                            </div>--%>
                        </div>
<%--                        <div class="checkout__input__checkbox">--%>
<%--                            <label for="acc">--%>
<%--                                Tạo một tài khoản--%>
<%--                                <input type="checkbox" id="acc">--%>
<%--                                <span class="checkmark"></span>--%>
<%--                            </label>--%>
<%--                        </div>--%>
<%--                        <p>Tạo tài khoản bằng cách nhập thông tin bên dưới. Nếu bạn là khách hàng cũ, vui lòng đăng nhập ở đầu trang</p>--%>
<%--                        <div class="checkout__input">--%>
<%--                            <p>Mật khẩu tài khoản<span>*</span></p>--%>
<%--                            <input placeholder="Nhập mật khẩu" type="text">--%>
<%--                        </div>--%>
<%--                        <div class="checkout__input__checkbox">--%>
<%--                            <label for="diff-acc">--%>
<%--                                Gửi đến một địa chỉ khác?--%>
<%--                                <input type="checkbox" id="diff-acc">--%>
<%--                                <span class="checkmark"></span>--%>
<%--                            </label>--%>
<%--                        </div>--%>
                        <div class="checkout__input">
                            <p>Ghi chú đơn hàng<span>*</span></p>
                            <input type="text"
                                   placeholder="Ghi chú về đơn đặt hàng của bạn, ví dụ: lưu ý đặc biệt để giao hàng" name="ghichu">
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="checkout__order">
                            <h4>Đơn hàng của bạn</h4>
                            <div class="checkout__order__products">Sản phẩm <span>Tổng</span></div>
                            <ul>
                                <c:forEach items="${list}" var="p">
                                <li>${p.tenSP}<span>${p.gia} vnđ</span></li>

                                </c:forEach>
                            </ul>
                            <div class="checkout__order__subtotal">Tổng phụ<span class="total-Money"><%= request.getAttribute("money")==null?0:request.getAttribute("money")  %> vnd</span></div>
<%--                            <div class="checkout__order__total">Toàn bộ <span>0 vnđ</span></div>--%>
<%--                            <div class="checkout__input__checkbox">--%>
<%--                                <label for="acc-or">--%>
<%--                                    Tạo một tài khoản--%>
<%--                                    <input type="checkbox" id="acc-or">--%>
<%--                                    <span class="checkmark"></span>--%>
<%--                                </label>--%>
<%--                            </div>--%>
                            <p>Nếu bạn chưa có tài khoản thì hãy tạo một tài khoản để tiến hành mua hàng</p>
                            <div class="checkout__input__checkbox">
                                <label for="payment">
                                    Kiểm tra thanh toán
                                    <input type="checkbox" id="payment">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <div class="checkout__input__checkbox">
                                <label for="paypal">
                                    Paypal
                                    <input type="checkbox" id="paypal">
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                            <input type="submit" class="site-btn" value="Đặt hàng"></input>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</section>
<!-- Checkout Section End -->

<!-- Footer Section Begin -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer Section End -->

<!-- Js Plugins -->
<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/ShoppingCart.js" ></script>
<script>



    var order = document.querySelectorAll(".site-btn")
    order.forEach(add =>{

        add.addEventListener("click" ,() =>{




            swal({
                text: "Đã đặt hàng thành công !",
                icon: "success",
                timer: 2000,
                button: false,
            });

        })


    })



</script>


</body>

</html>
