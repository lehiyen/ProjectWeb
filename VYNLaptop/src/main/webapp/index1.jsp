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
    <title>VYN Laptop</title>

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
        top: 40px;
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
            <ul>
                <li class="image-avatar"><img style="width: 40px ; height: 40px; border: none ; border-radius: 50%;" src="img/product/acer/Acer_Aspire_5_A515-53G-71NN/acer1.png" alt="">
                    <ul class="list-selection">
                        <li><a href="User.jsp">Thông tin tài khoản</a></li>
                        <li><a href="changePassWord.jsp">Đổi mật khẩu</a></li>
                        <li><a href="HoaDon.jsp">Hóa đơn mua hàng</a> </li>
                        <li><a href="login/login.jsp">Đăng xuất</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
    <nav class="humberger__menu__nav mobile-menu">
        <ul>
            <li class="active"><a href="./index.jsp">Trang chủ</a></li>
            <li><a href="./shop-grid.jsp">Cửa hàng</a></li>
            <!--<li><a href="#">Pages</a>
                <ul class="header__menu__dropdown">
                    <li><a href="./shop-details.jsp">Shop Details</a></li>
                    <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                    <li><a href="./checkout.jsp">Check Out</a></li>
                    <li><a href="./blog-details.jsp">Blog Details</a></li>
                </ul>
            </li>
        -->
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

                            <!--Thông tin tài khoản -->
                            <ul>
                                <li class="image-avatar"><img style="width: 40px ; height: 40px; border: none ; border-radius: 50%;" src="img/product/acer/Acer_Aspire_5_A515-53G-71NN/acer1.png" alt="">
                                    <ul class="list-selection">
                                        <li><a href="User.jsp">Thông tin tài khoản</a></li>
                                        <li><a href="changePassWord.jsp">Đổi mật khẩu</a></li>
                                        <li><a href="HoaDon.jsp">Hóa đơn mua hàng</a> </li>
                                        <li><a href="login/login.jsp">Đăng xuất</a></li>
                                    </ul>
                                </li>
                            </ul>

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
                        <li class="active"><a href="./index.jsp">Trang chủ</a></li>
                        <li><a href="./shop-grid.jsp">Cửa hàng</a></li>
                        <!--<li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shop-details.jsp">Shop Details</a></li>
                                <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                                <li><a href="./checkout.jsp">Check Out</a></li>
                                <li><a href="./blog-details.jsp">Blog Details</a></li>
                            </ul>
                        </li> -->
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
<section class="hero">
    <div class="container">
        <div class="row">
            <div class="col-lg-3">
                <div class="hero__categories">
                    <div class="hero__categories__all">
                        <i class="fa fa-bars"></i>
                        <span>Tất cả dòng máy</span>
                    </div>
                    <ul>
                        <li><a href="asus.jsp">ASUS</a></li>
                        <li><a href="#">ACER</a></li>
                        <li><a href="#">HP</a></li>
                        <li><a href="#">DELL</a></li>
                        <li><a href="#">MACBOOK</a></li>
                        <li><a href="#">THINKPAD</a></li>
                        <li><a href="#">VIVO</a></li>
                        <li><a href="#">SAMSUNG</a></li>
                        <li><a href="#">LENOVO</a></li>
                        <li><a href="#">SONY</a></li>
                        <li><a href="#">TOSHIBA</a></li>

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
                <div class="hero__item set-bg" data-setbg="img/hero/banner.jpg">
                    <div class="hero__text">
                        <span>VYNLaptop</span>
                        <h2 style="color: #38d39f;">100% <br>Hàng chính hãng</h2>
                        <p >Miễn phí vận chuyển cho đơn hàng trên 5 triệu vnđ</p>
                        <a href="#" class="primary-btn">Xem cửa hàng ngay</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Hero Section End -->

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-1.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-2.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-3.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-4.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-5.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Những sản phẩm tiêu biểu</h2>
                </div>

            </div>
        </div>
        <div class="row featured__filter">
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-1.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>

                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Acer_Aspire_5_A515-53G-71NN</a> <br><br></h6>
                        <h5>15.590.000 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fastfood">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-2.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Acer Aspire E5-575-35M7</a> <br><br></h6>
                        <h5>18.890.000 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix vegetables fresh-meat">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-3.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Acer Nitro 5 AN515-54-59WX</a> <br><br></h6>
                        <h5>49.990.000 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood oranges">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-4.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">Acer Predator Helios 300 PH315-51-759Y </a></h6>
                        <h5>41.990.00 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-5.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">HP OMEN 15-dh0172tx</a><br><br></h6>
                        <h5>39.950.000 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fastfood">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-6.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">HP Pavilion 14-ce3013TU <br><br></a></h6>
                        <h5>27.590.000 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fresh-meat vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-7.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">ASUS ZenBook Duo UX481FL-BM048T</a></h6>
                        <h5>18.990.000 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6 mix fastfood vegetables">
                <div class="featured__item">
                    <div class="featured__item__pic set-bg" data-setbg="img/featured/feature-8.png">
                        <ul class="featured__item__pic__hover">
                            <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                            <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                        </ul>
                    </div>
                    <div class="featured__item__text">
                        <h6><a href="#">ASUS ZenBook 13 UX331UN-EG129TS</a></h6>
                        <h5>19.990.000 vnđ</h5> <br>
                        <div>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                            <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Featured Section End -->

<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-2.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
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
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm bán chạy</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/acer/Acer_Aspire_5_A515-53G-71NN/acer1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>Acer Aspire 5 A515-53G-71NN</h6>
                                    <span>35.890.000 vnđ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/asus/ASUS_VivoBook_S14_S430UA-EB003T/as1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>ASUS VivoBook S14 S430UA-EB003T</h6>
                                    <span>12.590.000 vnđ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/asus/ASUS_ZenBook_13_UX331UN-EG129TS/as1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>ASUS ZenBook 13 UX331UN-EG129TS</h6>
                                    <span>15.590.000 vnđ</span>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/hp/LaptopHP_Pavilion_15-cs3010TU/hp1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>HP_Pavilion_15-cs3010TU</h6>
                                    <span>23.990.000 vnđ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/hp/LaptopHP_PavilionGaming_15-dk0003TX/hp1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>HP PavilionGaming 15-dk0003TX</h6>
                                    <span>29.990.000 vnđ</span>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/hp/LaptopHP_OMEN_15-dh0172tx/hp1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>HP OMEN 15-dh0172tx</h6>
                                    <span>31.890.000 vnđ</span>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm giảm giá</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/acer/Acer_Swift_3_SF315-52-50T9/acer1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"> <br>
                                    <h6>Acer Swift 3 SF315-52-50T9</h6>
                                    <p style="color: red;">-20%</p>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/asus/ASUS_ROG_Strix_SCAR_II_GL504GM-ES312T/as1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>ASUS ROG Strix SCAR II GL504GM-ES312T</h6>
                                    <p style="color: red;">-35%</p>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/asus/ASUS_ROG_Zephyrus_S_GX531GM-ES004T/as1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"> <br>
                                    <h6>ASUS ROG Zephyrus S GX531GM-ES004T</h6>
                                    <p style="color: red;">-25%</p>
                                </div>
                            </a>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/hp/LaptopHP_Pavilion_14-ce3013TU/hp1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>HP Pavilion 14-ce3013TU</h6>
                                    <p style="color: red;">-40%</p>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/acer/Acer_Swift_3_SF315-52-52Z7/acer1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>Acer Swift 3 SF315-52-52Z7</h6>
                                    <p style="color: red;">-20%</p>
                                </div>
                            </a>
                            <a href="#" class="latest-product__item">
                                <div class="latest-product__item__pic">
                                    <img src="img/product/asus/ASUS_ZenBook_Duo_UX481FL-BM048T/as1.png" alt="">
                                </div>
                                <div class="latest-product__item__text"><br>
                                    <h6>ASUS ZenBook Duo UX481FL-BM048T</h6>
                                    <p style="color: red;">-30%</p>
                                </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title from-blog__title">
                    <h2>Blog</h2>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <a href="10biquyetsudungmaytinhbenlau.jsp"> <img src="img/tips/MáyTinh/tip2.jpg" alt=""> </a>
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 21/2/2020</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="10biquyetsudungmaytinhbenlau.jsp">10 bí quyết sử dụng máy tính bền lâu</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <a><img src="img/tips/SucKhoe/tip1.jpg" alt=""></a>
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 11/7/2020</li>
                            <li><i class="fa fa-comment-o"></i> 10</li>
                        </ul>
                        <h5><a href="#">10 cách đơn giản để duy trì một sức khỏe tốt</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <a><img src="img/tips/DuLich/tip1.jpg" alt=""></a>
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i>20/10/2020</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">10 vật dụng cần mang theo khi đi du lịch</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Section End -->

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
                        <li><a href="./login/Register.jsp">Đăng ký tài khoản</a></li>
                        <li><a href="./shop-grid.jsp">Cửa hàng</a></li>

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



</body>

</html>
