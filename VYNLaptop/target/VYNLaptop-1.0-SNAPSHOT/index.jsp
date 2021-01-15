<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>VYN Laptop</title>

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

<jsp:include page="layout/headerForHome.jsp"/>

<!-- Categories Section Begin -->
<section class="categories">
    <div class="container">
        <div class="row">
            <div class="categories__slider owl-carousel">
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-1.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-2.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-3.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-4.png">
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="categories__item set-bg" data-setbg="img/categories/cat-5.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Categories Section End -->

<!-- Featured Section Begin -->
<section class="featured spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title">
                    <h2>Những sản phẩm tiêu biểu</h2>
                </div>

            </div>
        </div>
        <div class="row featured__filter">
            <c:forEach items="${list1_1}" var="p">
                <div class="col-lg-3 col-md-4 col-sm-6 mix oranges fresh-meat">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="${p.hinhanh}">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#" title="Mua"><i class="fa fa-shopping-cart"></i></a></li>
                                <li><a href="#" title="Thêm vào trang sản phẩm yêu thích"><i class="fa fa-heart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#">${p.tenSP}</a></h6>
                            <h5>${p.gia} vnđ</h5> <br>
                            <div>
                                <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: black;" title="Mua"> Mua <i class="fa fa-shopping-cart" style="color: black"></i></button>
                                <button id="btnlike" style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Thêm sản phẩm vào trang yêu thích"><i id="heart" class="fa fa-heart" aria-hidden="true" style="color: white;"></i></button>
                                <button style="background-color:#bfebdc; border: 1px solid #bfebdc;border-radius: 2px; color: white;" title="Xem thông tin chi tiết sản phẩm"><a href="ASUS_VivoBook_S14_S430UA-EB003T.jsp"><i class="fa fa-search-plus" aria-hidden="true" style="color: black;"></i></a></button>
                            </div>
                        </div>
                    </div>
                </div>

            </c:forEach>

        </div>
    </div>
</section>
<!-- Featured Section End -->


<!-- Banner Begin -->
<div class="banner">
    <div class="container">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-1.jpg" alt="">
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-6">
                <div class="banner__pic">
                    <img src="img/banner/banner-2.png" alt="">
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Banner End -->

<!-- Latest Product Section Begin -->
<section class="latest-product spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm mới</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_2}" var="p" begin="0" end="2">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_2}" var="p" begin="3" end="5">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_2}" var="p" begin="6" end="8">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_2}" var="p" begin="9" end="11">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm bán chạy</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_3}" var="p"  begin="0" end="2">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"><br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_3}" var="p"  begin="3" end="5">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"><br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_3}" var="p"  begin="6" end="8">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"><br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_3}" var="p"  begin="9" end="11">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"><br>
                                        <h6>${p.tenSP}</h6>
                                        <span>${p.gia} vnđ</span>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-6">
                <div class="latest-product__text">
                    <h4>Sản phẩm giảm giá</h4>
                    <div class="latest-product__slider owl-carousel">
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_4}" var="p" begin="0" end="2">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <p style="color: red;">-${p.giamgia}%</p>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_4}" var="p" begin="3" end="5">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <p style="color: red;">-${p.giamgia}%</p>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_4}" var="p" begin="6" end="8">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <p style="color: red;">-${p.giamgia}%</p>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                        <div class="latest-prdouct__slider__item">
                            <c:forEach items="${list1_4}" var="p" begin="9" end="11">
                                <a href="#" class="latest-product__item">
                                    <div class="latest-product__item__pic">
                                        <img src="${p.hinhanh}" alt="">
                                    </div>
                                    <div class="latest-product__item__text"> <br>
                                        <h6>${p.tenSP}</h6>
                                        <p style="color: red;">-${p.giamgia}%</p>
                                    </div>
                                </a>
                            </c:forEach>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Latest Product Section End -->

<!-- Blog Section Begin -->
<section class="from-blog spad">
<div class="container">
<div class="row">
    <div class="col-lg-12">
        <div class="section-title from-blog__title">
            <h2>Blog</h2>
        </div>
    </div>
</div>
<div class="row">
<c:forEach items="${allBlog}" var="p"  begin="0" end="2">
    <div class="col-lg-4 col-md-4 col-sm-6">
    <div class="blog__item">
    <div class="blog__item__pic">
    <a href="10biquyetsudungmaytinhbenlau.jsp"> <img src="${p.hinhanh}" alt=""> </a>
    </div>
    <div class="blog__item__text">
    <ul>
    <li><i class="fa fa-calendar-o"></i>${p.ngaydang}</li>
    </ul>
    <h5><a href="10biquyetsudungmaytinhbenlau.jsp">${p.tenblog}</a></h5>
    </div>
    </div>
    </div>

</c:forEach>
    </div>
    </div>
    </section>
    <!-- Blog Section End -->
    <script>
    var btn = document.getElementById("btnlike");
    var heart = document.getElementById("heart");
    btn.onclick = function () {
    heart.style.color = "red";
    };
    btn.onclose = function () {
    heart.style.color = "white";
    };
    </script>

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
