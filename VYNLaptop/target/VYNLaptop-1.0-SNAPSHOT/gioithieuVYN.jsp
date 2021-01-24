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
    <title>VYN Laptop Giới thiệu</title>

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">




    <style>
        .gioithieu{
            width: 70%;
            margin: auto;
        }
        .info{
            margin: 25px;
        }
        .info ul >li{
            margin-left: 25px;
            list-style-type: circle;
        }
        .item{
            left: 0;
            top: 0;
            position: relative;
            overflow: hidden;
            margin-top:10px;

        }
        .item img{
            -webkit-transition: 0.6s ease;
            transition: 0.6s ease;

        }
        .item img:hover{
            -webkit-transform: scale(1.2);
            transform: scale(1.2);

        }
        .img-thumbnail{
            border:0px;
            border-radius:0px;
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
</head>


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
<%--                <div class="hero__categories">--%>
<%--                    <div class="hero__categories__all">--%>
<%--                        <i class="fa fa-bars"></i>--%>
<%--                        <span>Tất cả dòng máy</span>--%>
<%--                    </div>--%>
<%--                    <ul>--%>
<%--                        <li><a href="#">ASUS</a></li>--%>
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
<%--                    </ul>--%>
<%--                </div>--%>
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
                        <span>Giới thiệu về VYN Laptop</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->


<!--  Container -->
<div class="gioithieu">
    <div class="info">
        <h4><strong>Lĩnh vực kinh doanh</strong></h4>
        <ul style="margin-top: 5px;">
            <li>VYNLaptop cung cấp đầy đủ các sản phẩm máy tính cho người dùng gia đình.</li>
            <li>Cung cấp giải pháp tích hợp hệ thống công nghệ thông tin cho doanh nghiệp.</li>
            <li>Cung cấp giải pháp đặc biệt cho các doanh nghiệp như hội nghị video, màn hình kỹ thuật số, hệ thống quản lý thanh toán,…</li>
            <li>Đối tác chiến lược: Asus, Dell, Acer, Hp, Lenovo,...</li>
        </ul>
        <div class="row">
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/acer.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/asus.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/hp.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/lenovo.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/dell.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/sony.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/apple.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/samsung.png" class="img-thumbnail"></div>

            </div>
            <div class="col-sm-3">
                <div class="item"><img src="img/gioithieu/microsoft.png" class="img-thumbnail"></div>

            </div>

        </div>
    </div>
    <div class="info">
        <h4 ><strong>Sứ mệnh và mục tiêu</strong></h4>
        <h5 style="margin-top: 5px;"><strong>1. </strong> Sứ mệnh</h5>
        <ul style="margin-top: 5px;">
            <li>Hiện đại hóa thương hiệu, cửa hàng.</li>
            <li>Số hóa: quy trình vận hành, quản trị.</li>

            <li>Đem lại cho người dùng trải nghiệm tốt nhất.</li>

        </ul>
        <h5 style="margin-top: 5px;"><strong>2.</strong> Mục tiêu</h5>
        <ul style="margin-top: 5px;">
            <li>Tăng cơ sở khách hàng hiện có, tiếp cận khách hàng mới và tăng chuyển đổi thành khách hàng tiềm năng.</li>
            <li>Tăng sự tương tác với các người dùng và các thương hiệu lớn.</li>
            <li>Nơi giao tiếp hiệu quả với khách hàng.</li>

        </ul>
    </div>
    <div class="info">
        <h4><strong>Đội ngũ thành viên</strong></h4>
    </div>
    <div>
        <section class="our-webcoderskull padding-lg">
            <div class="container">

                <ul class="row">
                    <li class="col-12 col-md-6 col-lg-4">
                        <div class="cnt-block equal-hight" style="height: 349px;">
                            <figure><img src="http://www.webcoderskull.com/img/team4.png" class="img-responsive" alt=""></figure>
                            <h3><a href="http://www.webcoderskull.com/">Nguyễn Hồng Viên</a></h3>
                            <p>Thiết kế website</p>
                            <ul class="follow-us clearfix">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="col-12 col-md-6 col-lg-4">
                        <div class="cnt-block equal-hight" style="height: 349px;">
                            <figure><img src="http://www.webcoderskull.com/img/team1.png" class="img-responsive" alt=""></figure>
                            <h3><a href="#">Lê Hải Yến </a></h3>
                            <p>Thiết kế website</p>
                            <ul class="follow-us clearfix">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </li>
                    <li class="col-12 col-md-6 col-lg-4">
                        <div class="cnt-block equal-hight" style="height: 349px;">
                            <figure><img src="http://www.webcoderskull.com/img/team4.png" class="img-responsive" alt=""></figure>
                            <h3><a href="http://www.webcoderskull.com/">Bùi Văn Nhất</a></h3>
                            <p>Thiết kế website</p>
                            <ul class="follow-us clearfix">
                                <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </li>

                </ul>
            </div>
        </section>
    </div>
</div>
<!--  End container -->


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



</body>

</html>
