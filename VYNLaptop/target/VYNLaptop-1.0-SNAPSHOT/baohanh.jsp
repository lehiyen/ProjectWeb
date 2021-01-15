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

<jsp:include page="layout/header.jsp"/>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>VYNLaptop</h2>
                    <div class="breadcrumb__option">
                        <a href="/VYNLaptop/home">Trang chủ</a>
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
<jsp:include page="layout/footer.jsp"/>

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
