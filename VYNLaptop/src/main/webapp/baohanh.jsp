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
    <title>VYN Laptop Bảo hành</title>

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


    <style>
        .baohanh{
            width: 70%;
            margin: auto;
        }
        .baohanh .info1{
            margin: 20px;
            font-size: 25px;
        }
        .baohanh .info{
            margin: 20px;
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
                        <span>Chính sách bảo hành</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->
<!-- begin -->
<div class="baohanh">

    <div class="info1">
        <div class="title">
            <h5><strong>CHÍNH SÁCH BẢO HÀNH</strong></h5>
        </div>
        <div class="info">
            <p>Tất cả các sản phẩm do VYN bán đều được bảo hành đúng và đủ theo chính sách của nhà sản xuất.</p>
            <p>Tất cả sản phẩm hư hỏng, không thuộc điều kiện đổi trả, sẽ được gửi cho nhà sản xuất hoặc đơn vị được nhà sản xuất uỷ quyền để sửa chữa theo đúng chính sách bảo hành của họ.
                VYN không chịu trách nhiệm nếu nhà sản xuất và/hoặc đơn vị được nhà sản xuất uỷ quyền từ chối bảo hành và/hoặc không thực hiện theo đúng cam kết của họ.</p>
        </div>
    </div>
    <div class="info1">
        <div class="title" >
            <h5><strong>TRUNG TÂM BẢO HÀNH VYN</strong></h5>
        </div>
        <div class="info">
            <p>Địa chỉ: 113/1/8 Hoàng Diệu 2, phường Linh Trung, quận Thủ Đức</p>
            <p>Điện thoại: +0378900954 </p>
            <p>Thời gian làm việc: Từ 8:00 am to 20:00 pm</p>
        </div>

    </div>
</div>
<!-- End -->

<!-- Map Begin -->
<div class="map">
    <iframe
            src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3918.3955357099708!2d106.76425541428752!3d10.85749066066231!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3175279c3efeac01%3A0xaddc839ae6ec7e3d!2zSG_DoG5nIERp4buHdSAy!5e0!3m2!1svi!2s!4v1605285518792!5m2!1svi!2s" width="600" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0">
        height="500" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>

</div>
<!-- Map End -->




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
<script src="js/ShoppingCart.js"></script>


</body>

</html>
