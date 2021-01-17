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
<div class="humberger__menu__overlay"></div>
<div class="humberger__menu__wrapper">
    <div class="humberger__menu__logo">
        <a href="#"><img src="img/logo.png" alt=""></a>
    </div>
    <div class="humberger__menu__cart">
        <ul>
            <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
            <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
        </ul>
        <div class="header__cart__price">Mục chọn: <span>0 vnđ</span></div>
    </div>
    <div class="humberger__menu__widget">

        <div class="header__top__right__auth">
            <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li><a href="/VYNLaptop/home">Trang chủ</a></li>
            <li class="active"><a href="./shop-grid.jsp">Cửa hàng</a></li>
            
            <li><a href="./blog.jsp">Blog</a></li>
            <li><a href="./contact.jsp">Liên hệ</a></li>
        </ul>
    </nav>
    <div id="mobile-menu-wrap"></div>
    <div class="header__top__right__social">
        <a href="#"><i class="fa fa-facebook"></i></a>
        <a href="#"><i class="fa fa-twitter"></i></a>
        <a href="#"><i class="fa fa-linkedin"></i></a>
        <a href="#"><i class="fa fa-pinterest-p"></i></a>
    </div>
    <div class="humberger__menu__contact">
        <ul>
            <li><i class="fa fa-envelope"></i> vynLaptop@gmail.com</li>
            <li></li>
        </ul>
    </div>
</div>
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
                            <a href="login.jsp"><i class="fa fa-user"></i> Đăng nhập</a>
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
                    <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li><a href="/VYNLaptop/home">Trang chủ</a></li>
                        <li class="active"><a href="./shop-grid.jsp">Cửa hàng</a></li>

                        <li><a href="./blog.jsp">Blog</a></li>
                        <li><a href="./contact.jsp">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="shoping-cart.jsp"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
                    </ul>
                    <div class="header__cart__price">Mục chọn: <span>0 vnđ</span></div>
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

<%--            --%>
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
                        <a href="./index.jsp">Trang chủ</a>
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
                                <li><a href="category?nameCategory=${p.name}">${p.name}</a></li>
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
                                        <div class="product__item__price">${p.gia} vnđ <span>${p.giasaugiam} vnđ</span></div>
                                        <div>
                                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
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
                    <div class="row">
                        <div class="col-lg-4 col-md-5">
                            <div class="filter__sort">
                                <span>Sắp xếp</span>
                                <select>
                                    <option value="0">Mặc định</option>
                                    <option value="0">A-Z</option>
                                    <option value="0">Z-A</option>
                                    <option value="0">Giá tăng dần</option>
                                    <option value="0">Giá giảm dần</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-4">
                            <div class="filter__found">
                                <h6><span>16</span> Products found</h6>
                            </div>
                        </div>
                        <div class="col-lg-4 col-md-3">
                            <div class="filter__option">
                                <span class="icon_grid-2x2"></span>
                                <span class="icon_ul"></span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <c:forEach items="${list5_2}" var="p">
                    <div class="col-lg-4 col-md-6 col-sm-6">
                        <div class="product__item">
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
                                    <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                                    <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                                    <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="product?pid=${p.id}"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>

                </div>
                <div class="product__pagination">
                    <a href="#"><i class="fa fa-long-arrow-left"></i></a>
                    <a href="#">1</a>
                    <a href="#">2</a>
                    <a href="#">3</a>
                    <a href="#"><i class="fa fa-long-arrow-right"></i></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Product Section End -->

<!-- Footer Section Begin -->
<footer class="footer spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="./index.jsp"><img src="img/logo.png" alt=""></a>
                    </div>
                    <ul>
                        <li>Địa chỉ: 113/1/8 Hoàng Diệu 2, phường Linh Trung, quận Thủ Đức</li>
                        <li>Số điện thoại: +0378900954</li>
                        <li>Email: vynLaptop@gmail.com</li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-6 offset-lg-1">
                <div class="footer__widget">
                    <h6>Liên kết hữu ích</h6>
                    <ul>
                        <li><a href="./gioithieuVYN.jsp">Giới thiệu VYNLaptop</a></li>
                        <li><a href="./baohanh.jsp">Bảo hành</a></li>
                        <li><a href="./baomatthongtin.jsp">Bảo mật thông tin</a></li>
                        <li><a href="./phuongthucthanhtoan.jsp">Phương thức thanh toán</a></li>
                    </ul>
                    <ul>
                        <li><a href="/VYNLaptop/register">Đăng ký tài khoản</a></li>
                        <li><a href="./VYNLaptop/shop">Cửa hàng</a></li>

                        <li><a href="./blog.jsp">Blog</a></li>
                        <li><a href="./contact.jsp">Liên hệ</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-4 col-md-12">
                <div class="footer__widget">
                    <h6>Ủng hộ chúng tôi</h6>
                    <p>Nhận thông tin cập nhật qua email về cửa hàng mới nhất của chúng tôi và các ưu đãi đặc biệt.</p>
                    <form action="#">
                        <input type="text" placeholder="Nhập email">
                        <button type="submit" class="site-btn">Gửi </button>
                    </form>
                    <div class="footer__widget__social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-instagram"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-pinterest"></i></a>
                    </div>
                </div>

            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="footer__copyright">
                    <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    <div class="footer__copyright__payment"><img src="img/payment-item.png" alt=""></div>
                </div>
            </div>
        </div>
    </div>
</footer>

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



</body>

</html>
