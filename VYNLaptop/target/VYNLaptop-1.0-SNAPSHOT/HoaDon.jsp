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
    <link rel="stylesheet" href="../admin-page/assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="login/fon-awesome/css/all.css">




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
                        <li><a href="login.jsp">Đăng xuất</a></li>
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
                                        <li><a href="login.jsp">Đăng xuất</a></li>
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
                        <a href="./index.jsp">Trang chủ</a>
                        <span>Chi tiết hóa đơn</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->


<!--  Container -->
<div class="user">

    <div class="container-fluid">

        <div class="row">
            <div class="col-12">

                <div id="tables-details">
                    <div class="card-body" id="card-body">

                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Mã hóa đơn </th>
                                    <th>Địa chỉ</th>
                                    <th>Ngày giao</th>
                                    <th>Thao tác</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD11232</p></td>
                                    <td>Trường đại học Nông Lâm Tp.HCM</td>
                                    <td>20/11/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD4456</p></td>

                                    <td>KTX-Khu B ĐHQG</td>
                                    <td>10/10/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td> <p style="cursor: pointer;" class="goods">HD1231</p></td>

                                    <td>Cư xá E đại học Nông Lâm TP.HCM</td>
                                    <td>20/8/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td> <p style="cursor: pointer;" class="goods">HD5457</p></td>

                                    <td>Cư xá B Đại học Nông Lâm Tp.HCM</td>
                                    <td>2/11/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD1232</p></td>

                                    <td>Tòa Thiên Lí  đại học Nông Lâm Tp.HCM</td>
                                    <td>13/11/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD6578</p></td>

                                    <td>Khu Tám Giang Đại học Nông Lâm Tp.HCM</td>
                                    <td>20/11/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD1231</p></td>

                                    <td>KTX-Khu B DHQG</td>
                                    <td>20/11/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD4456</p></td>

                                    <td>F2- tòa Cẩm Tú</td>
                                    <td>20/11/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD1217</p></td>

                                    <td>HP Pro_Max</td>
                                    <td>11/4/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>
                                <tr>
                                    <td><p style="cursor: pointer;" class="goods">HD7890</p></td>

                                    <td>Dãy Ki-OT đại học Nông Lâm Tp.HCM</td>
                                    <td>20/11/2020</td>
                                    <td style="text-align: center;"><i style="color: red; " class="fas fa-trash-alt hover-icon"></i></td>

                                </tr>


                                </tbody>
                            </table>


                        </div>

                    </div>
                    <div class="card-body" id="display-goods" style="display: none;">
                        <div class="table-responsive">
                            <table class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th> Tên </th>
                                    <th>Số lượng</th>
                                    <th>Hãng sản xuất</th>
                                    <th>Giá</th>

                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>Lap top HP Pro-Max</td>
                                    <td>2</td>
                                    <td>HP</td>
                                    <td>200000 VNĐ</td>

                                </tr>
                                <tr>
                                    <td>Lenovo-T410</td>
                                    <td>1</td>
                                    <td>Lenovo</td>
                                    <td>150000 VNĐ</td>

                                </tr>
                                <tr>
                                    <td>Asus</td>
                                    <td>1</td>
                                    <td>HP</td>
                                    <td>150000 VNĐ</td>

                                </tr>
                                </tbody>
                            </table>
                            <p  style="text-align: end;"> Tổng tiền : 5000000 VNĐ</p>
                        </div>

                    </div>
                </div>
            </div>
        </div>

    </div>




    <div class="line"></div>
    <div id="save" style="width: 100%; text-align: end;" class="div-btn"> <button class="save-info" >Lưu</button></div>
    <div id ="forward" style="display: none; width: 100%; text-align: end;" class="div-btn"> <button  class="save-info" >Trước</button></div>

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
<script src="../admin-page/assets/extra-libs/DataTables/datatables.min.js"></script>

<script>

    $('#zero_config').DataTable();
</script>
<script>
    var save = document.getElementById("save")
    var displayGoods = document.getElementById("display-goods")
    var card = document.getElementById("card-body")
    var goods = document.querySelectorAll('.goods')
    var forward = document.getElementById("forward")
    goods.forEach(good => {
        good.addEventListener("click" , () =>{
            save.style.display="none"
            card.style.display="none"
            displayGoods.style.display="block"
            forward.style.display="block"
        })

    });

    forward.addEventListener("click" , function(){
        save.style.display="block"
        forward.style.display ="none"
        card.style.display="block"
        displayGoods.style.display="none"

    })

</script>
</body>

</html>
