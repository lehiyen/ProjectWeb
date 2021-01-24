<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="login/fon-awesome/css/all.css">
    <link rel="stylesheet" href="login/style/style.css">
<%--    <link rel="stylesheet" href="css/style.css">--%>
    <title>Forgot password</title>
<style>
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
<header >
    <div class="header_top1">
        <div class="header_container">
            <div class="header_row">
                <div class="header_row_1">
                    <div class="header_left_row_1">
                        <ul>
                            <li class="icon-email"><i class="fas fa-envelope icon_e"></i> vynLaptop@gmail.com</li>
                        </ul>
                    </div>
                </div>
                <div class="header_row_2">
                    <div class="header_row_right_2">
                        <div  class="right_1">
                            <a href="" class="margin-right"><i class="fab fa-facebook-f"></i> </a>
                            <a href="" class="margin-right"><i class="fab fa-twitter"></i></a>
                            <a href="" class="margin-right"><i class="fab fa-linkedin-in"></i></a>
                            <a href=""><i class="fab fa-pinterest-p"></i></a>
                        </div>


                        <div class="right_3">
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

    <div class="header_top2">
        <div class="logo_header">
            <img src="login/image/logo.png" alt="">
        </div>
        <div class="navigation_menu">
            <div class="menu">
                <ul class="ul">
                    <li class="home"><a class="a" href="home">TRANG CHỦ</a></li>
                    <li class="shop"><a class="a" href="shop">CỦA HÀNG</a></li>

                    <li class="blog"><a class="a" href="blog">BLOG</a></li>
                    <li class="contact"><a class="a" href="./contact.jsp">LIÊN HỆ</a></li>

                </ul>
            </div>

        </div>
        <div class="icon-like">
            <div class="icon-container">

                <ul class="heart-shopping">
                    <li class="heart"><a href=""><i class="fas fa-heart"></i> <span>0</span></a></li>
                    <li class="shopping-bag"><a href="pageCart"><i class="fas fa-shopping-bag"></i> <span id="text-bag"><%=request.getAttribute("bag")==null?0 : request.getAttribute("bag") %></span></a></li>
                </ul>
                <div class="price">
                    Mục chọn:
                    <span id="span-money">0 vnđ</span>
                </div>
            </div>

        </div>
    </div>

</header>




<img src="" alt="" class="wave">
<div class="container">
    <div class="img">
        <img src="login/image/undraw_personalization_triu.svg" alt="" >

    </div>
    <div class="login-container">
        <form action="performChangePass" method="post" onsubmit="return checkInput()">
            <img class="avatar" src="login/image/undraw_profile_pic_ic5t.svg" alt="">
            <h2>Quên mật khẩu</h2>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div >
                    <h5>Email</h5>
                    <input class="input" type="text" name="mail"  aria-describedby="basic-addon1" aria-label="Username" required="" value="<%=request.getParameter("mail")==null?"":request.getParameter("mail")%>">


                </div>
            </div>
            <div class="input-div two">
                <div class="i">
                    <i class="fas fa-key"></i>
                </div>
                <div>
                    <h5>Đặt lại mật khẩu</h5>
                    <input class="input" type="password" id="password1" name="passNew"  aria-describedby="basic-addon1" aria-label="Username" required="">

                    <div style="transform: translate(430px,30px);" class="icon" ><i class="fas fa-eye icon1" id="icon7"  onclick="myFuction()"></i>
                        <i class="fas fa-eye-slash icon2" id="icon8"  onclick="myFuction()"></i>
                    </div>

                </div>
            </div>
            <div class="input-div one">
                <div class="i">
                    <i class="fas fa-user"></i>
                </div>
                <div >
                    <h5>Nhập lại mật khẩu</h5>
                    <input class="input" type="password" id="repeatPass"  aria-describedby="basic-addon1" aria-label="Username" required="">


                </div>
            </div>
        <p id="displayNotify" style="color: red ; width: 100% ;  text-align: center ; margin-bottom: 10px "> <%=request.getAttribute("notify")==null?"":request.getAttribute("notify")%></p>
            <p style="color: rgb(158, 155, 155);"><span>Lưu ý: email  phải là email bạn đã đăng ký</span></p>
            <input type="submit" class="btn" value="Xác nhận">


        </form>

    </div>
</div>
<footer class="footer spad">
    <div class="container-footer">
        <div class="row1 row">
            <div class="col-lg-3 col-md-6 col-sm-6">
                <div class="footer__about">
                    <div class="footer__about__logo">
                        <a href="index.jsp"><img src="login/image/logo.png" alt=""></a>
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
                    <h6 class="helpful">Liên kết hữu ích</h6>
                    <div class="list-contact">
                        <ul class="list-contact_1">
                            <li><a href="gioithieuVYN.jsp">Giới thiệu VYNLaptop</a></li>
                            <li><a href="baohanh.jsp">Bảo hành</a></li>
                            <li><a href="baomatthongtin.jsp">Bảo mật thông tin</a></li>
                            <li><a href="phuongthucthanhtoan.jsp">Phương thức thanh toán</a></li>
                        </ul>
                        <ul class="list-contact_2">
                            <li><a href="login/register.jsp">Đăng ký tài khoản</a></li>
                            <li><a href="shop-grid.jsp">Cửa hàng</a></li>

                            <li><a href="blog.jsp">Blog</a></li>
                            <li><a href="contact.jsp">Liên hệ</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-1222">
                <div class="footer__widget">
                    <h6 class="join">Ủng hộ chúng tôi</h6>
                    <p class="text-p">Nhận thông tin cập nhật qua email về cửa hàng mới nhất của chúng tôi và các ưu đãi đặc biệt.</p>
                    <form class="input-form" action="#">
                        <input type="text" placeholder="Nhập Email">
                        <button type="submit" class="site-btn">Gửi</button>
                    </form>
                    <div class="footer__widget__social">
                        <a href="#"><i class="fab fa-facebook-f hover"></i></a>
                        <a href="#"><i class="fab fa-instagram hover"></i></a>
                        <a href="#"><i class="fab fa-twitter hover"></i></a>
                        <a href="#"><i class="fab fa-pinterest hover"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <div class="row2">
            <div class="col-lg-12">
                <div class="footer__copyright">
                    <div class="footer__copyright__text"><p class="design"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                        Copyright All rights reserved | This template is made with  by Colorlib
                        <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p></div>
                    <div class="footer__copyright__payment"><img src="login/image/payment-item.png" alt=""></div>
                </div>
            </div>
        </div>
    </div>
</footer>
<script>
    function myFuction(){
        var x = document.getElementById("password1");
        var y = document.getElementById("icon7");
        var z = document.getElementById("icon8");
        if(x.type==='password'){
            y.style.display="block";
            z.style.display="none";
            x.type="text";
            return ;

        }
        if(x.type==='text'){
            y.style.display="none";
            z.style.display="block";
            x.type="password";
        }

    }
    function  checkInput(){
        var  pass1 = document.getElementById("password1").value
        var pass2 = document.getElementById("repeatPass").value
        if(pass1==pass2) return  true ;
        else {
            document.getElementById("displayNotify").innerText = "Mật khẩu không trùng  nhau"
            return false;
        }
    }

</script>
<script type="text/javascript" src="login/myjs/login.js"></script>



</body>
</html>
