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
    <title>Thông tin tài khoản</title>

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
    <link rel="stylesheet" href="styleUser/style.css">




</head>


<body>
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
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
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
            <li><a href="./index.jsp">Trang chủ</a></li>
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
                        <li><a href="./index.jsp">Trang chủ</a></li>
                        <li ><a href="./shop-grid.jsp">Cửa hàng</a></li>
                        <!--<li><a href="#">Pages</a>
                            <ul class="header__menu__dropdown">
                                <li><a href="./shop-details.jsp">Shop Details</a></li>
                                <li><a href="./shoping-cart.jsp">Shoping Cart</a></li>
                                <li><a href="./checkout.jsp">Check Out</a></li>
                                <li><a href="./blog-details.jsp">Blog Details</a></li>
                            </ul>
                        </li> -->
                        <li><a href="./blog.jsp">Giới thiệu</a></li>
                        <li><a href="./contact.jsp">Liên hệ</a></li>
                    </ul>
                </nav>
            </div>
            <div class="col-lg-3">
                <div class="header__cart">
                    <ul>
                        <li><a href="#"><i class="fa fa-heart"></i> <span>1</span></a></li>
                        <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
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
                        <li><a href="#">ASUS</a></li>
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
                        <span>Thông tin tài khoản</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->


<!--  Container -->
<div class="user">
    <div class="user-container">
        <form  action="#">
            <div style="padding-top: 20px ;" class="user-div">
                <h3  class="user-avatar">Avatar</h3>
                <div class="avatar">
                    <label class="label-avatar" for="avatar" id="btn-avatar"><img id="img" style="width: 150px;" src="img/product/asus/ASUS_15_X509JP-EJ013T/as1.png" alt=""></label>

                    <input type="file" id="avatar" class="change-avatar">

                </div>
            </div>
            <div>
                <h3 class="user-h3">Tài khoản</h3>
                <section>
                    <div class="user-div">
                        <label class="label-info-user" >Tên tài khoản</label>
                        <input  id="userName" name="userName" type="text" class="required form-control" value="Võ Thi Nhân">
                    </div>
                </section>
                <h3 class="user-h3">Thông tin người dùng</h3>
                <section style="margin-bottom: 20px;">
                    <div class="user-div">
                        <label class="label-info-name" >Tên người dùng </label>
                        <input id="name" name="name" type="text" class="required form-control" value="Nhân">
                    </div>
                    <div class="user-div">
                        <label class="label-info-first-name" for="surname">Họ người dùng </label>
                        <input id="surname" name="surname" type="text" class="required form-control" value="Võ Thi">
                    </div>
                    <div class="user-div">
                        <label class="label-info-phone-email" for="email">Email hoặc số điện thoại </label>
                        <input id="email" name="email" type="text" class="required email form-control" value="18130162@hcmuaf.edu.vn">
                    </div>
                    <div class="user-div">
                        <label class="label-info-address" for="address">Địa chỉ</label>
                        <input id="address" name="address" type="text" class=" form-control" value=" Trường Đại học Nông Lâm TP.HCM">
                    </div>
                </section>

            </div>
        </form>



    </div>
    <div class="line"></div>
    <div class="div-btn"> <button class="save-info">Lưu</button></div>

</div>
<!--  End container -->




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
<script>
    let  button = document.getElementById('btn-avatar')
    let img = document.getElementById('img')
    let change = document.getElementById('change-avatar')
    button.addEventListener('change' , function(){






    })


</script>


</body>

</html>