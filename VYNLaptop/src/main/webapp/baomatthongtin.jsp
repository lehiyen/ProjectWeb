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
    <title>VYN Laptop Bảo mật thông tin</title>

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
        .main{
            width: 70%;
            margin: auto;
        }
        .question1{
            margin: 20px;
        }
        .question1 ul >li{
            list-style-type: circle;
            margin-left: 25px;
        }
        .question2{
            margin: 20px;
        }
        .question2 ul >li{
            list-style-type: circle;
            margin-left: 25px;
        }
    </style>
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
            <li><a href="#"><i class="fa fa-shopping-bag"></i> <span>3</span></a></li>
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
                        <li><a href="./blog.jsp">Blog</a></li>
                        <li ><a href="./contact.jsp">Liên hệ</a></li>
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
                        <span>Bảo mật thông tin</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Breadcrumb Section End -->

<!-- Begin -->

<div class="main">
    <div class="question1">
        <h5><strong>1. VYNLaptop thu thập những thông tin gì?</strong></h5>
        <div style="margin-top: 5px;">
            <p><strong>1.1</strong>  “Dữ liệu cá nhân” được định nghĩa là dữ liệu, dù đúng hay sai, về một cá nhân – người mà có thể được xác định danh tính từ dữ liệu đó, hoặc từ dữ liệu và các thông tin khác mà một tổ chức có quyền hoặc có thể truy cập. Ví dụ thường gặp của dữ liệu cá nhân có thể bao gồm: Họ tên, số CMND/Hộ chiếu và thông tin liên lạc.</p>
            <p><strong> Lưu ý:</strong> Thông tin Bạn cung cấp cần phải chính xác, vì nó liên quan đến việc vận chuyển của hàng hóa, thanh toán hoặc bồi hoàn.</p>
        </div>
        <div >
            <p><strong>1.2</strong> Chúng tôi sẽ/có thể sẽ thu thập thông tin cá nhân về Bạn:</p>
            <ul>
                <li> Khi Bạn đăng ký và/hoặc sử dụng dịch vụ hoặc Website của Chúng tôi, hoặc mở một tài khoản với Chúng tôi;</li>
                <li> Khi Bạn cung cấp cho Chúng tôi thông tin phản hồi hoặc khiếu nại;</li>
                <li> Khi Bạn gửi dữ liệu cá nhân của Bạn cho Chúng tôi vì bất cứ lý do nào;</li>

                <li> Khi Bạn gửi bất kỳ biểu mẫu nào, bao gồm nhưng không giới hạn đơn đăng ký hoặc các mẫu đơn khác liên quan đến bất kỳ sản phâm và dịch vụ của Chúng tôi.</li>

            </ul>
            <p>Trên đây chỉ là một số trường hợp phổ biến mà Chúng tôi thu thập dữ liệu cá nhân của Bạn, không phản ánh hết toàn bộ các trường hợp mà Chúng tôi sẽ thu thập dữ liệu cá nhân của Bạn.</p>
        </div>
        <div>
            <p><strong>1.3</strong> Thời gian lưu trữ thông tin: Dữ liệu cá nhân của khách hàng sẽ được lưu trữ cho đến khi có yêu cầu huy bỏ hoặc tự Thành Viên đăng nhập và thực hiện huy bỏ. Còn lại trong mọi trường hợp thông tin cá nhân của Thành Viên sẽ được bảo mật trên máy chủ của VYNLaptop .</p>
        </div>
        <div>
            <p><strong>1.4</strong> Dữ liệu cá nhân được thu thập bao gồm, nhưng không giới hạn:</p>
            <ul>
                <li>Họ tên</li>
                <li>Địa chỉ email</li>
                <li>Ngày sinh</li>
                <li>Địa chỉ thanh toán</li>
                <li>Địa chỉ nhận hàng</li>
                <li>Số điện thoại di động</li>
                <li>Phương thức thanh toán</li>
                <li>Số liệu tổng hợp về lịch sử thao tác của Người Dùng</li>
            </ul>
        </div>
        <p><strong>Lưu ý:</strong> Khi Bạn không tham gia hoặc không còn đồng ý với các điều khoản thu thập thông tin cá nhân của Chúng tôi, việc sử dụng Dịch vụ của Bạn có thể sẽ bị ảnh hưởng. Ví dụ như dịch vụ xác định vị trí sẽ không hoạt động nếu Bạn không cho phép Website truy cập vị trí của Bạn.</p>
    </div>
    <div class="question2">
        <div>
            <h5><strong>2. Chúng tôi sử dụng thông tin bạn cung cấp như thế nào?</strong></h5>
        </div>
        <div style="margin-top: 5px;">
            <p><strong>2.1</strong> Chúng tôi có thể thu thập, sử dụng, tiết lộ và/hoặc xử lý dữ liệu cá nhân của Bạn cho một hoặc nhiều hơn các Mục Đích sau đây:</p>
            <ul>
                <li>Để xem xét và/hoặc xử lý yêu cầu/giao dịch của Bạn với Chúng tôi;</li>
                <li>Để bảo vệ an toàn cá nhân, các quyền, tài sản hoặc sự an toàn của người khác;</li>
                <li>Để xác định hoặc thẩm tra;</li>
                <li>Xử lý hoặc tiến hành dịch vụ chăm sóc khách hàng, cung cấp các hướng dẫn cho Bạn, tiếp nhận hoặc phản hồi bất cứ yêu cầu nào được đưa ra bởi (hoặc có ý định được đưa ra bởi) Bạn;</li>
                <li> Để liên hệ với Bạn qua điện thoại, tin nhắn và/hoặc fax, thư điện tử và/hoặc thư bưu chính, hoặc các phương tiện khác để duy trì mối liên hệ của Bạn với Dịch vụ của Chúng tôi. Bạn hiểu và thừa nhận rằng khi Chúng tôi liên hệ với Bạn qua thư từ bưu chính, một số thông tin cá nhân của Bạn như họ tên, địa chỉ nhận sẽ được tiết lộ trên bao bì thư.</li>
                <li>Để thu thập số liệu thống kê và nghiên cứu báo cáo nội bộ theo luật định và/hoặc yêu cầu lưu giữ hồ sơ;</li>
                <li>Để sử dụng vào các vụ việc tố tụng hoặc để tuân thu hoặc đáp ứng qui định pháp luật hoặc thực  hiện theo yêu cầu của chính quyền hoặc quy định của bất kỳ cơ quan thâm quyền có liên quan,trong đó có bao gồm việc công bố thông tin theo yêu cầu của pháp luật mà VYNLaptop cam kết ràng buộc hoặc bắt buộc phải tuân theo;</li>
                <li>Bất kỳ Mục Đích nào khác mà Chúng tôi thông báo cho Bạn tại thời điểm yêu cầu có sự đồng thuận của Bạn.</li>

            </ul>
        </div>
        <div>
            <p><strong>2.2</strong>  Một số Mục Đích thu thập, sử dụng, tiết lộ hoặc xử lý dữ liệu cá nhân còn tuỳ thuộc vào hoàn cảnh tại thời điểm thu thập, nên sẽ không xuất hiện trong danh sách trên. Tuy nhiên, Chúng tôi sẽ thông báo cho Bạn về những Mục Đích đó tại thời điểm hỏi xin sự đồng ý của Bạn, trừ khi việc xử lý dữ liệu cá nhân mà không cần sự đồng ý của chu sở hữu theo quy định pháp luật.</p>
        </div>

    </div>
</div>
<!-- End  -->

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
