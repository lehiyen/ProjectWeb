<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html dir="ltr" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16" href="assets/images/favicon.png">
    <title>Trang chủ</title>
    <!-- Custom CSS -->
    <link href="assets/libs/jquery-steps/jquery.steps.css" rel="stylesheet">
    <link href="assets/libs/jquery-steps/steps.css" rel="stylesheet">
    <link href="dist/css/style.min.css" rel="stylesheet">
    <link rel="stylesheet" href="styleAdmin/style.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>

<body>
<div class="preloader">
    <div class="lds-ripple">
        <div class="lds-pos"></div>
        <div class="lds-pos"></div>
    </div>
</div>
<!-- ============================================================== -->
<!-- Main wrapper - style you can find in pages.scss -->
<!-- ============================================================== -->
<div id="main-wrapper">
    <!-- ============================================================== -->
    <!-- Topbar header - style you can find in pages.scss -->
    <!-- ============================================================== -->
    <header class="topbar" data-navbarbg="skin5">
        <nav class="navbar top-navbar navbar-expand-md navbar-dark">
            <div class="navbar-header" data-logobg="skin5">
                <!-- This is for the sidebar toggle which is visible on mobile only -->
                <a class="nav-toggler waves-effect waves-light d-block d-md-none" href="javascript:void(0)"><i class="ti-menu ti-close"></i></a>
                <!-- ============================================================== -->
                <!-- Logo -->
                <!-- ============================================================== -->
                <a class="navbar-brand" href="TrangChu.html">
                    <!-- Logo icon -->
                    <b class="logo-icon p-l-10">
                        <!--You can put here icon as well // <i class="wi wi-sunset"></i> //-->
                        <!-- Dark Logo icon -->
                        <img class="logo-admin" src="assets/images/logo-icon.png" alt="homepage" class="light-logo" />

                    </b>
                    <!--End Logo icon -->
                    <!-- Logo text -->
                    <span class="logo-text">
                             <!-- dark Logo text -->
                             <img  src="assets/images/logo-text.png" alt="homepage" class="light-logo" />

                        </span>

                </a>

                <a class="topbartoggler d-block d-md-none waves-effect waves-light" href="javascript:void(0)" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><i class="ti-more"></i></a>
            </div>
            <!-- ============================================================== -->

            <!-- End Logo -->
            <!-- ============================================================== -->

        </nav>
    </header >
    <!-- ============================================================== -->
    <!-- End Topbar header -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <aside class="left-sidebar" data-sidebarbg="skin5">
        <!-- Sidebar scroll-->
        <div class="scroll-sidebar">
            <!-- Sidebar navigation-->
            <nav class="sidebar-nav">
                <ul id="sidebarnav" class="p-t-30">

                    </li>

                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="#" aria-expanded="false"><i class="fas fa-home"></i><span class="hide-menu">Trang chủ</span></a></li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="fas fa-shopping-cart"></i><span class="hide-menu">Sản phẩm </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="tongquan.html" class="sidebar-link"><span class="hide-menu"> Tổng quan sản phẩm </span></a></li>
                            <li class="sidebar-item"><a href="themSanPham.html" class="sidebar-link"><span class="hide-menu">Thêm sản phẩm </span></a></li>
                            <li class="sidebar-item"><a href="HinhAnh.html" class="sidebar-link"><span class="hide-menu">Quản lí hình ảnh </span></a></li>
                            <li class="sidebar-item"><a href="Banner.html" class="sidebar-link"><span class="hide-menu">Banner sản phẩm </span></a></li>
                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false"><i class="mdi mdi-move-resize-variant"></i><span class="hide-menu">Đơn hàng </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="ĐonhangDangGiao.html" class="sidebar-link"><span class="hide-menu"> Đang giao  </span></a></li>
                            <li class="sidebar-item"><a href="GiaothangCong.html" class="sidebar-link"><span class="hide-menu">Giao thành công</span></a></li>
                            <li class="sidebar-item"><a href="ĐonhangDangGiao.html" class="sidebar-link"><span class="hide-menu">Đơn hàng bị hủy </span></a></li>
                            <li class="sidebar-item"><a href="ĐonhangDangGiao.html" class="sidebar-link"><span class="hide-menu">Đơn hàng mới </span></a></li>


                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="khuyenmai.html" aria-expanded="false"><i class="mdi mdi-pencil"></i><span class="hide-menu">Khuyến mãi</span></a></li>


                    <li class="sidebar-item"> <a class="sidebar-link has-arrow waves-effect waves-dark" href="javascript:void(0)" aria-expanded="false">  <i class="fas fa-address-book"></i><span class="hide-menu">Quản lí ài khoản </span></a>
                        <ul aria-expanded="false" class="collapse  first-level">
                            <li class="sidebar-item"><a href="ThemTaiKhoan.html" class="sidebar-link"><span class="hide-menu"> Thêm tài khoản  </span></a></li>
                            <li class="sidebar-item"><a href="TongQuanTK.html" class="sidebar-link"><span class="hide-menu">Tổng quan </span></a></li>


                        </ul>
                    </li>
                    <li class="sidebar-item"> <a class="sidebar-link waves-effect waves-dark sidebar-link" href="login.html" aria-expanded="false"><i class="fas fa-sign-out-alt"></i><span class="hide-menu">Đăng xuất</span></a></li>


                </ul>
            </nav>
            <!-- End Sidebar navigation -->
        </div>
        <!-- End Sidebar scroll-->
    </aside>
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- End Left Sidebar - style you can find in sidebar.scss  -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- Page wrapper  -->
    <!-- ============================================================== -->
    <div class="page-wrapper">
        <!-- ============================================================== -->
        <!-- Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <div class="page-breadcrumb">
            <div class="row">
                <div class="col-12 d-flex no-block align-items-center">
                    <h4 class="page-title">Trang chủ</h4>
                    <div class="ml-auto text-right">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="#"></a></li>
                                <li class="breadcrumb-item active" aria-current="page"></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
        <!-- ============================================================== -->
        <!-- End Bread crumb and right sidebar toggle -->
        <!-- ============================================================== -->
        <!-- ============================================================== -->
        <!-- Container fluid  -->
        <!-- ============================================================== -->
        <div class="container-fluid">

            <div class="card">
                <div  class="card-body wizard-content">
                    <h3 class="information" style="position: relative;">Thông tin trong ngày </h3>
                    <div class="div-4">
                        <div  class="div1">
                            <h2>0</h2>
                            <p>Đơn hàng mới</p>
                        </div>
                        <div class="div1">
                            <h2>0 </h2>
                            <span>Tổng thu nhập trong ngày</span>
                        </div>
                        <div class="div1">
                            <h2>10</h2>
                            <span>Tài khoản mới đăng kí</span>
                        </div>

                        <div class="div1">
                            <h2>120</h2>
                            <span>Tài khoản đang truy cập</span>
                        </div>




                    </div>



                </div>
            </div>
            <div class="card">
                <div  class="card-body wizard-content">
                    <h3>Danh sách sản phẩm</h3>
                    <div class="table" style="display: flex; justify-content: center;">
                        <div class="table-product" style="margin-right: 100px;">

                            <p> Theo lượt xem trong ngày </p>
                            <table class="table_1">
                                <p class="table-text">Khách truy cập</p>
                                <tr>
                                    <td style="font-size: 12px;"><img class="home-picture" src="assets/images/hp1.webp" alt="">Laptop HP ProBook 450 G6</td>
                                    <td></td>
                                    <td><span style="position: relative; top:10px">55</span></td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px;"><img class="home-picture" src="assets/images/asus/asus4.webp" alt="">Laptop ASUS PRO P1440UA-FQ0183</td>
                                    <td></td>
                                    <td><span style="position: relative; top:10px">60</span></td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px;"><img class="home-picture" src="assets/images/asus/asus3.webp" alt="">Laptop ASUS PRO SSD-FQ0183</td>
                                    <td> </td>
                                    <td> <span style="position: relative; top:10px">100</span></td>

                                </tr>
                                <tr>
                                    <td></td>
                                    <td> </td>
                                    <td> </td>

                                </tr>
                            </table>

                        </div>
                        <div class="table-revenue">
                            <p>
                                Theo doanh thu trong ngày
                            </p>
                            <table>
                                <p class="table-text">Doanh thu</p>
                                <tr>
                                    <td style="font-size: 12px;"> <img class="home-picture" src="assets/images/asus/asus1.webp" alt="">Laptop ASUS VivoBook S14 S430UA-EB003T</td>
                                    <td></td>
                                    <td> <span style="position: relative; top:10px">1300000 VND</span></td>
                                </tr>
                                <tr>
                                    <td style="font-size: 12px;"> <img class="home-picture" src="assets/images/macbook4.jpg" alt="">Laptop Apple Macbook Pro 2018 13.3" MR9Q2</td>
                                    <td></td>
                                    <td><span style="position: relative; top:10px">2000000 VND</span> </td>
                                </tr>
                                <tr>
                                    <td><b>Tổng tiền</b></td>
                                    <td></td>
                                    <td> 3300000 VND</td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                            </table>
                        </div>
                    </div>

                </div>
            </div>
            <!-- danh sách 5 sản phẩm  bán chạy nhất trong tháng -->
            <div class="card">
                <div  class="card-body wizard-content">
                    <h3>Top 5 sản phẩm bán chạy nhất trong tháng</h3>
                    <div class="card-body">

                        <div class="table-responsive">
                            <table id="zero_config" class="table table-striped table-bordered">
                                <thead>
                                <tr>
                                    <th>Tên sản phẩm</th>
                                    <th>Số lượng</th>
                                    <th>Giá bán</th>
                                    <th>Tổng tiền bán được</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td style="display: flex;"><img style="width: 80px;" src="assets/images/asus/asus1.webp" alt=""><p style="margin-left: 5px; position: relative; top: 20px;">Lap top HP pro-max</p></td>
                                    <td><p style=" position: relative; top: 20px;">7000000 VNĐ</p></td>
                                    <td><p style=" position: relative; top: 20px;">20</p></td>
                                    <td><p style=" position: relative; top: 20px;">140000000 VNĐ</p></td>

                                </tr>
                                <tr>
                                    <td style="display: flex;"><img style="width: 80px;" src="assets/images/macbook2.jpg" alt=""><p style="margin-left: 5px; position: relative; top: 20px;"> Lap top Lenovo</p></td>
                                    <td><p style=" position: relative; top: 20px;">5000000 VNĐ</p></td>
                                    <td><p style=" position: relative; top: 20px;">10</p></td>
                                    <td><p style=" position: relative; top: 20px;">50000000 VNĐ</p></td>

                                </tr>
                                <tr>
                                    <td style="display: flex;"><img style="width: 80px;" src="assets/images/asus/asus3.webp" alt=""><p style="margin-left: 5px; position: relative; top: 20px;">Lap top Asus</p></td>
                                    <td><p style=" position: relative; top: 20px;">8000000 VNĐ</p></td>
                                    <td><p style=" position: relative; top: 20px;">8</p></td>
                                    <td><p style=" position: relative; top: 20px;">6000000 VNĐ</p></td>

                                </tr>
                                <tr>
                                    <td style="display: flex;"><img style="width: 80px;" src="assets/images/asus/asus4.webp" alt=""><p style="margin-left: 5px; position: relative; top: 20px;">Lap top MacBook pro-max</p></td>
                                    <td><p style=" position: relative; top: 20px;">10000000 VNĐ</p></td>
                                    <td><p style=" position: relative; top: 20px;">5/p></td>
                                    <td><p style=" position: relative; top: 20px;">50000000 VNĐ</p></td>

                                </tr>
                                <tr>
                                    <td style="display: flex;"><img style="width: 80px;" src="assets/images/macbook4.jpg" alt=""><p style="margin-left: 5px; position: relative; top: 20px;">Lap top Accer</p></td>
                                    <td><p style=" position: relative; top: 20px;">7000000 VNĐ</p></td>
                                    <td><p style=" position: relative; top: 20px;">4</p></td>
                                    <td><p style=" position: relative; top: 20px;">28000000 VNĐ VNĐ</p></td>

                                </tr>


                                </tbody>
                            </table>


                        </div>

                    </div>
                </div>

            </div>
            <!-- ============================================================== -->
            <!-- End Container fluid  -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- footer -->
            <!-- ============================================================== -->
            <footer class="footer text-center">
                All Rights Reserved by Group 32. Designed and Developed by <a href="https://wrappixel.com">VYN</a>.
            </footer>
            <!-- ============================================================== -->
            <!-- End footer -->
            <!-- ============================================================== -->
        </div>
        <!-- ============================================================== -->
        <!-- End Page wrapper  -->
        <!-- ============================================================== -->
    </div>
    <!-- ============================================================== -->
    <!-- End Wrapper -->
    <!-- ============================================================== -->
    <!-- ============================================================== -->
    <!-- All Jquery -->
    <!-- ============================================================== -->
    <script src="assets/libs/jquery/dist/jquery.min.js"></script>
    <!-- Bootstrap tether Core JavaScript -->
    <script src="assets/libs/popper.js/dist/umd/popper.min.js"></script>
    <script src="assets/libs/bootstrap/dist/js/bootstrap.min.js"></script>
    <!-- slimscrollbar scrollbar JavaScript -->
    <script src="assets/libs/perfect-scrollbar/dist/perfect-scrollbar.jquery.min.js"></script>
    <script src="assets/extra-libs/sparkline/sparkline.js"></script>
    <!--Wave Effects -->
    <script src="dist/js/waves.js"></script>
    <!--Menu sidebar -->
    <script src="dist/js/sidebarmenu.js"></script>
    <!--Custom JavaScript -->
    <script src="dist/js/custom.min.js"></script>
    <!-- this page js -->
    <script src="assets/libs/jquery-steps/build/jquery.steps.min.js"></script>
    <script src="assets/libs/jquery-validation/dist/jquery.validate.min.js"></script>
</div>

</body>

</html>
