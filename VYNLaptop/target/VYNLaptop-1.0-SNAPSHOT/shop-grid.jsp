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
    <title>Cửa hàng</title>

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
<header class="header">
    <div class="header__top">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__left">
                        <ul>
                            <li><i class="fa fa-envelope"></i> vynLaptop@gmail.com</li>
                            <li></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6">
                    <div class="header__top__right">
                        <div class="header__top__right__social">
                            <a href="#"><i class="fa fa-facebook"></i></a>
                            <a href="#"><i class="fa fa-twitter"></i></a>
                            <a href="#"><i class="fa fa-linkedin"></i></a>
                            <a href="#"><i class="fa fa-pinterest-p"></i></a>
                        </div>

                        <div class="header__top__right__auth">
                            <c:if test="${user!=null}">
                                <ul>
                                    <li class="image-avatar">
                                        <i class="fa fa-user"> <span>${user.username}</span></i>
                                        <ul class="list-selection">
                                            <li><a href="User.jsp">Thông tin tài khoản</a></li>
                                            <li><a href="changePassWord.jsp">Đổi mật khẩu</a></li>
                                            <li><a href="HoaDon.jsp">Hóa đơn mua hàng</a> </li>
                                            <li><a href="login.jsp">Đăng xuất</a></li>
                                        </ul>
                                    </li>
                                </ul>
                            </c:if>
                            <c:if test="${user==null}">
                                <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="header__logo">
                    <a href="/VYNLaptop/home"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="/VYNLaptop/home">Trang chủ</a></li>
                        <li class="active"><a href="/VYNLaptop/shop">Cửa hàng</a></li>

                        <li><a href="/VYNLaptop/blog">Blog</a></li>
                        <li><a href="./contact.jsp">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="/VYNLatop/pageCart"><i class="fa fa-shopping-bag"></i> <span id="text-bag"><%=request.getAttribute("bag")==null?0 : request.getAttribute("bag") %></span></a></li>
                    </ul>
                    <div class="header__cart__price">Mục chọn: <span id="span-money">0 vnđ</span></div>
                </div>
            </div>
        </div>
        <div class="humberger__open">
            <i class="fa fa-bars"></i>
        </div>
    </div>
</header>
<!-- Header Section End -->

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
                        <li><a href="category?nameCategory=${p.name}&index=1">${p.name}</a></li>
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

<%--            --%>
            <div class="col-lg-9">
                <div class="hero__search">
                    <div class="hero__search__form">
                        <form action="search?index=1" method="post">
                            <input name="keyword" type="text" placeholder="Bạn muốn tìm gì?">
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
                        <span>Cửa hàng</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Product Section Begin -->
<section class="product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-5">
                <div class="sidebar">
                    <div class="sidebar__item">
                        <h4>Thương hiệu</h4>
                        <ul>
                            <c:forEach items="${category}" var="p">
                                <li><a href="category?nameCategory=${p.name}&index=1">${p.name}</a></li>
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
                    <div class="sidebar__item">
                        <h4>Giá</h4>
                        <div class="price-range-wrap">
                            <div class="price-range ui-slider ui-corner-all ui-slider-horizontal ui-widget ui-widget-content"
                                 data-min="9" data-max="9999">
                                <div class="ui-slider-range ui-corner-all ui-widget-header"></div>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                                <span tabindex="0" class="ui-slider-handle ui-corner-all ui-state-default"></span>
                            </div>
                            <div class="range-slider">
                                <div class="price-input">
                                    <input type="text" id="minamount">
                                    <input type="text" id="maxamount">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="sidebar__item sidebar__item__color--option">
                        <h4>Màu sắc</h4>
                        <div class="sidebar__item__color sidebar__item__color--white">
                            <label for="white">
                                Trắng
                                <input type="radio" id="white">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--gray">
                            <label for="gray">
                                Xám
                                <input type="radio" id="gray">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--blueBlack">
                            <label for="red">
                                Xanh đen
                                <input type="radio" id="red">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--black">
                            <label for="black">
                                Đen
                                <input type="radio" id="black">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--blue">
                            <label for="blue">
                                Xanh
                                <input type="radio" id="blue">
                            </label>
                        </div>
                        <div class="sidebar__item__color sidebar__item__color--yellow">
                            <label for="green">
                                Vàng gold
                                <input type="radio" id="green">
                            </label>
                        </div>
                    </div>
                    <div class="sidebar__item">
                        <h4>Kích thước màn hình</h4>
                        <div class="sidebar__item__size">
                            <label for="large">
                                15.6"
                                <input type="radio" id="large">
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="medium">
                                14"
                                <input type="radio" id="medium">
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="small">
                                13.3"
                                <input type="radio" id="small">
                            </label>
                        </div>
                        <div class="sidebar__item__size">
                            <label for="tiny">
                                15"
                                <input type="radio" id="tiny">
                            </label>
                        </div>
                    </div>
                    <div class="sidebar__item">
                        <div class="latest-product__text">
                            <h4>Sản phẩm mới</h4>
                            <div class="latest-product__slider owl-carousel">
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/product/acer/Acer_Spin_5_SP513-52N-556V/acer1.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text"> <br>
                                            <h6>Acer_Spin_5_SP513-52N-556V</h6>
                                            <span>13.590.000 vnđ</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/product/asus/ASUS_VivoBook_X407MA-BV043T/as1.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text"> <br>
                                            <h6>ASUS VivoBook X407MA-BV043T</h6>
                                            <span>19.990.00 vnđ</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/product/hp/LaptopHP_OMEN_15-dh0172tx/hp1.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text"> <br>
                                            <h6>HP OMEN 15-dh0172tx</h6>
                                            <span>15.999.000 vnđ</span>
                                        </div>
                                    </a>
                                </div>
                                <div class="latest-prdouct__slider__item">
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/product/acer/Acer_Aspire_E5-575-35M7/acer1.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text"> <br>
                                            <h6>Acer Aspire E5-575-35M7</h6>
                                            <span>19.999.000 vnđ</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/product/asus/ASUS_15_X509JP-EJ013T/as1.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text"> <br>
                                            <h6>ASUS 15 X509JP-EJ013T</h6>
                                            <span>13.590.000 vnđ</span>
                                        </div>
                                    </a>
                                    <a href="#" class="latest-product__item">
                                        <div class="latest-product__item__pic">
                                            <img src="img/product/hp/LaptopHP_Pavilion_14-ce3013TU/hp1.png" alt="">
                                        </div>
                                        <div class="latest-product__item__text"> <br>
                                            <h6>HP Pavilion 14-ce3013TU</h6>
                                            <span>22.990.000 vnđ</span>
                                        </div>
                                    </a>
                                </div>
                            </div>
<%--                            END LASTEST PRODUCT--%>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-9 col-md-7">
                <div class="product__discount">
                    <div class="section-title product__discount__title">
                        <h2>Giảm giá</h2>
                    </div>
                    <div class="row">
                        <div class="product__discount__slider owl-carousel">
                            <c:forEach items="${list5_1}" var="p">
                            <div class="col-lg-4">
                                <div class="product__discount__item">
                                    <div class="product__discount__item__pic set-bg"
                                         data-setbg="${p.hinhanh}">
                                        <div class="product__discount__percent">-${p.giamgia}%</div>
                                        <ul class="product__item__pic__hover">
                                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                                        </ul>
                                    </div>
                                    <div class="product__discount__item__text">
                                        <h5><a href="/VYNLaptop/product?maSP=${p.maSP}">${p.tenSP} <br><br></a></h5> <br>
                                        <div class="product__item__price">${p.giasaugiam} vnđ <span>${p.gia} vnđ</span></div>
                                        <div>
                                            <c:if test="${user!=null}"> <button id="${p.id}" style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua" class="button-cart-item"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button></c:if>

                                            <c:if test="${user==null}"> <button  style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua" class="button-cart-login"> <i class="fa fa-shopping-cart" style="color: black"></i></button></c:if>
                                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="/VYNLaptop/product?maSP=${p.maSP}"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            </c:forEach>

                        </div>
                    </div>
                </div>
                <div class="filter__item">
<%--                    <div class="row">--%>
<%--                        <div class="col-lg-4 col-md-5">--%>
<%--                            <div class="filter__sort">--%>
<%--                                <span>Sắp xếp</span>--%>
<%--                                <select>--%>
<%--                                    <option value="0">Mặc định</option>--%>
<%--                                    <option value="0">A-Z</option>--%>
<%--                                    <option value="0">Z-A</option>--%>
<%--                                    <option value="0">Giá tăng dần</option>--%>
<%--                                    <option value="0">Giá giảm dần</option>--%>
<%--                                </select>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-4 col-md-4">--%>
<%--                            <div class="filter__found">--%>
<%--                                <h6><span>16</span> Products found</h6>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <div class="col-lg-4 col-md-3">--%>
<%--                            <div class="filter__option">--%>
<%--                                <span class="icon_grid-2x2"></span>--%>
<%--                                <span class="icon_ul"></span>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
                <div class="row">
                    <c:forEach items="${list5_2}" var="p">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item" id ="${p.id}">
                            <div class="product__item__pic set-bg" data-setbg="${p.hinhanh}">
                                <ul class="product__item__pic__hover">
                                    <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                                    <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                                </ul>
                            </div>
                            <div class="product__item__text">
                                <h6><a href="/VYNLaptop/product?maSP=${p.maSP}">${p.tenSP}<br><br></a></h6>
                                <h5>${p.gia} vnđ</h5><br>
                                <div>
                                    <c:if test="${user!=null}"> <button id="${p.id}" style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua" class="button-cart-item"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button></c:if>

                                    <c:if test="${user==null}"> <button  style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua" class="button-cart-login"> <i class="fa fa-shopping-cart" style="color: black"></i></button></c:if>
                                    <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                                    <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="product?pid=${p.id}"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

                </div>
                <div class="product__pagination">
                    <c:if test="${pageCurrent !=1}">
                        <a href="/VYNLaptop/shop?id=${pageCurrent-1}"><i class="fa fa-long-arrow-left"></i></a>
                    </c:if>
                    <c:forEach var="i" begin="${pageStart}" end = "${pageEnd}">

                        <a  href="/VYNLaptop/shop?id=${i}" class="paginationActive" id="${i}" >${i}</a>
                    </c:forEach>
                    <c:if test="${pageCurrent!=totalPage}">
                        <a href="/VYNLaptop/shop?id=${pageCurrent+1}"><i class="fa fa-long-arrow-right"></i></a>
                    </c:if>

                </div>
            </div>
        </div>
    </div>
    </div>
</section>
<!-- Product Section End -->

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
<script src="login/myjs/shopping.js"></script>

<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
<script src="js/ShoppingCart.js"></script>
<script>



    var listAdd = document.querySelectorAll(".button-cart-item")
    listAdd.forEach(add =>{

        add.addEventListener("click" ,() =>{




                swal({
                    text: "Đã hêm vào giỏ hàng !",
                    icon: "success",
                    timer: 2000,
                    button: false,
                });

        })


    })
    var listlogin = document.querySelectorAll(".button-cart-login") ;
    listlogin.forEach(login =>{
        login.addEventListener("click" , () =>{
            swal({
                title : "Đăng nhập",
                text: "Vui lòng đăng nhập !",
                icon: "warning",

                button: true,
            });
        })
    })


</script>


</body>

</html>
