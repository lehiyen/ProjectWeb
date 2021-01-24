<%--
  Created by IntelliJ IDEA.
  User: USER
  Date: 1/24/2021
  Time: 4:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

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
    <title>header</title>
</head>
<body>
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
                    <a href="home"><img src="img/logo.png" alt=""></a>
                </div>
            </div>
            <div class="col-lg-6">
                <nav class="header__menu">
                    <ul>
                        <li ><a href="home">Trang chủ</a></li>
                        <li><a href="shop">Cửa hàng</a></li>

                        <li><a href="blog">Blog</a></li>
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


<script src="js/jquery-3.3.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.nice-select.min.js"></script>
<script src="js/jquery-ui.min.js"></script>
<script src="js/jquery.slicknav.js"></script>
<script src="js/mixitup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>
<script src="js/ShoppingCart.js"></script>
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
