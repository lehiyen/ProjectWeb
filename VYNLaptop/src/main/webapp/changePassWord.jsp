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
    <title>Thay đổi mật khẩu</title>

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

<jsp:include page="layout/headerForLogin.jsp"/>

<!-- Breadcrumb Section Begin -->
<section class="breadcrumb-section set-bg" data-setbg="img/breadcrumb.jpg">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>VYNLaptop</h2>
                    <div class="breadcrumb__option">
                        <a href="/VYNLaptop/home">Trang chủ</a>
                        <span>Thay đổi mật khẩu</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->


<!--  Container -->
<div class="change-password">
    <div class="user-container">
        <form action="">
            </section>
            <h3 class="user-h3">Thay đổi mật khẩu</h3>
            <section style="margin-bottom: 20px;">
                <div class="user-div">
                    <label class="label-of-email" >Email hoặc số điện thoại </label>
                    <p>18130162@st.hcmuaf.edu.vn</p>
                </div>
                <div class="user-div">
                    <label class="label-of-pass-old" for="surname">Mật khẩu cũ * </label>
                    <input id="surname" name="surname" type="text" class="required form-control" value="">
                </div>
                <div class="user-div">
                    <label class="label-of-pass-new" for="email">Mật khẩu mới * </label>
                    <input id="email" name="email" type="text" class="required email form-control" value="">
                </div>
                <div class="user-div">
                    <label class="label-of-repeat" for="address">Xác nhận lại mật khẩu *</label>
                    <input id="address" name="address" type="text" class=" form-control" value="">
                </div>
                <p style="color: red;"> * Bắt buộc nhập</p>
            </section>
        </form>

    </div>

    <div class="line"></div>
    <div class="div-btn"> <button class="save-info">Lưu</button></div>
</div>
<!--  End container -->




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
<script>
    let  button = document.getElementById('btn-avatar')
    let img = document.getElementById('img')
    let change = document.getElementById('change-avatar')
    button.addEventListener('change' , function(){

    })


</script>


</body>

</html>
