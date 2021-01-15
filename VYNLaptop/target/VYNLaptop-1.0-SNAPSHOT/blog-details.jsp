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
    <title>Blog-detail</title>

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

<jsp:include page="layout/header.jsp"/>


<!-- Blog Details Hero Begin -->
<section class="blog-details-hero set-bg" data-setbg="img/tips/bgBlog.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="blog__details__hero__text">
                    <h2>10 bí quyết sử dụng máy tính bền lâu</h2>
                    <ul>
                        <li>Viết bởi Nguyen Hong Vien</li>
                        <li> 21/2/2020</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Hero End -->

<!-- Blog Details Section Begin -->
<section class="blog-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-5">
                <div class="blog__sidebar">
                    <div class="blog__sidebar__search">
                        <form action="searchBlog" method="get">
                            <input name="key" type="text" placeholder="Tìm kiếm...">
                            <button type="submit"><span class="icon_search"></span></button>
                        </form>
                    </div>
                    <div class="blog__sidebar__item">
                        <h4>Thể loại</h4>
                        <ul>
                            <c:forEach items="${categoryBlog}" var="p">

                                <li><a href="categoryBlog?cbid=${p.id}">${p.chude}</a></li>
                            </c:forEach>
                        </ul>
                    </div>

                    <div class="blog__sidebar__item">
                        <h4>Tìm kiếm bởi</h4>
                        <div class="blog__sidebar__item__tags">
                            <c:forEach items="${categoryBlog}" var="p">
                                <a href="#">${p.chude}</a>
                            </c:forEach>

                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-8 col-md-7 order-md-1 order-1">
                <div class="blog__details__text"><br><br>
                    <img src="img/tips/MáyTinh/tip2.jpg" width="500px" height="250px" alt="">
                    <h5><b>1. Vệ sinh chung</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Một trong những nguyên nhân phổ biến của tình trạng máy tính trở nên nóng hừng hực như lò lửa là do bụi bặm, cáu bẩn bám bên trong máy. Do đó, bạn cần giữ cho máy tính luôn sạch sẽ cả bên trong lẫn bên ngoài.
                        Hiện nay các bạn có thể mua bộ dụng cụ vệ sinh và quạt tản nhiệt dành cho laptop hiện có bán nhiều trên thị trường để dễ dàng vệ sinh chúng. Giúp làm sạch bụi bẩn, đảm bảo an toàn và hạ nhiệt cho máy tính. Đối với máy bàn thì bạn nên làm sạch bụi bẩn bên trong thùng máy. Có rất nhiều thứ phải làm sạch, bao gồm bo mạch chủ, CPU, RAM, các card mở rộng, các quạt làm mát và cả các khe cắm. Khi vệ sinh nhớ tắt nguồn, rút hết dây cắm điện, đeo kiếng bảo hộ mắt và khẩu trang chống bụi để bảo vệ bạn khỏi hít phải bụi khi vệ sinh nhé. </p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>2. Sử dụng ổn áp điện</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Máy tính vốn rất nhạy cảm với những thay đổi đột ngột của cường độ dòng điện, chỉ cần một sự cố về điện đột ngột như cúp điện, tăng điện, chập mạch… cũng có thể làm hỏng ổ cứng hay nổ bo mạch… Do đó, bạn nên trang bị cho máy tính một bộ ổn áp điện hay một bộ lưu điện - UPS càng tốt.</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>3. Tắt nguồn màn hình</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p> Hầu hết các loại màn hình hiện nay đều có tính năng tắt tự động khi thoát khỏi hệ điều hành, nhưng như thế không có nghĩa là chúng không sử dụng điện, bằng chứng là công tắc màn hình vẫn sáng hoặc nhấp nháy. Thật ra màn hình chỉ đang “ngủ” và vẫn đang hoạt động (sử dụng điện để “ngủ”).</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>4. Để hệ thống luôn hoạt động</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p> Không giống như màn hình nên tắt hẳn mỗi khi thoát khỏi hệ điều hành, hệ thống máy tính luôn cần được hoạt động. Rất nhiều người đã không nhận ra rằng khởi động máy tính từ tình trạng “lạnh ngắt” của các bộ phận như: bộ nguồn, bo mạch, ổ cứng… sẽ làm suy giảm rất nhiều tuổi thọ của chúng. Bạn hãy tưởng tượng một cầu thủ ra sân thi đấu mà không khởi động thì liệu anh ta sẽ đá bóng được trong bao lâu?! Cách giải quyết ở đây là bạn nên cho máy tính ngủ ở chế độ Hibernation thay vì Shutdown hoàn toàn khi không làm việc với nó nữa.</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>5. Khám sức khỏe cho ổ cứng</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Công việc này rất đơn giản, từ cửa sổ My Computer, bạn kích chuột phải lên biểu tượng ổ cứng muốn kiểm tra, chọn Properties\Tools\Check now. Bạn cũng có thể dùng các phần mềm chuyên nghiệp khác để kiểm tra kỹ hơn. Nếu chương trình phát hiện ổ cứng có nhiều lỗi hay bad sector thì bạn hãy ngay lập tức sao lưu các dữ liệu quan trọng rồi mới tiến hành sửa chữa.</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>6. Phòng chống virus</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Bạn có thể sử dụng các chương trình thuộc hàng VN chất lượng cao như Bkav 2006, D32 (dung lượng nhỏ, hỗ trợ tiếng Việt) hay hàng ngoại như Norton Antivirus 2006, Panda Titanium 2006, Symantec Antivirus…</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>7. Kiểm tra pin CMOS</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Cục pin bé tí này còn được gọi là pin nuôi vì dùng năng lượng của mình để “nuôi” các thông tin thiết lập trong Bios đảm bảo cho hệ thống có thể khởi động được. Để kiểm tra tình trạng pin nuôi, bạn chỉ việc để ý đồng hồ hệ thống, nếu thấy nó bắt đầu chạy chậm thì pin nuôi cũng sắp “tiêu” và bạn nên nhanh chóng thay pin mới đi là vừa.</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>8. Cẩn thận khi mở thùng máy</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Bất cứ khi nào bạn định mở thùng máy, hãy nhớ tắt nguồn và rút hẳn phích cắm điện ra khỏi ổ điện. Khi chạm vào các bộ phận bên trong thùng máy, bạn hãy để cơ thể mình trực tiếp nối đất hoặc thông qua một vật có khả năng dẫn điện nào đó hoặc đeo vòng khử tĩnh điện nhằm tránh làm hỏng các bo mạch do tương tác tĩnh điện.</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>9. Bảo trì chuột</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p>Sau một thời gian sử dụng, chuột sẽ bị bám đầy bụi và cáu bẩn. Đối với chuột bi, bạn sẽ thấy sự di chuyển của nó không còn trơn tru như lúc mới mua mà bắt đầu “cà rịch cà tang” lúc đi lúc không, có khi nhảy lung tung. Để vệ sinh nó, bạn sử dụng một cái cạo nhỏ cạo cáu bẩn bám trên các thanh nhựa cuộn (phần tiếp xúc với bi), bánh xe cuộn, đồng thời dùng khăn lau chùi cả viên bi nữa. Đối với chuột quang, bạn chỉ việc cạo sạch bụi đất bám theo bánh xe cuộn là được.</p>
                </div>
                <div class="blog__details__text"><br><br>
                    <h5><b>10. Dọn dẹp Registry</b></h5>
                    <img src="img/blog/details/details-pic.jpg" alt="">
                    <p> Bạn thích vọc máy tính nên thường xuyên cài đặt, gỡ bỏ các chương trình thử nghiệm vào hệ thống. Sau một thời gian, bạn sẽ thấy hệ thống trở nên chậm chạp đến khó hiểu. Nguyên nhân chủ yếu là do thông tin của các ứng dụng đã gỡ bỏ vẫn còn tồn tại trong Registry và ngày càng nhiều thêm. Kết quả là Registry phình to ra với khá nhiều rác. Để quét sạch các thứ rác thải này để máy tính chạy nhanh hơn.</p>
                </div>

                <div class="blog__details__content">
                    <div class="row">

                        <div class="col-lg-6">
                            <div class="blog__details__widget">
                                <ul>
                                    <li><span>Thể loại:</span> Máy tính</li>
                                    <li><span>Thẻ:</span> Tất cả, Máy tính, Thực phẩm, Sức khỏe, Du lịch</li>
                                </ul>
                                <div class="blog__details__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-envelope"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Blog Details Section End -->

<!-- Related Blog Section Begin -->
<section class="related-blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="section-title related-blog-title">
                    <h2>Bài viết bạn có thể thích</h2>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <img src="img/tips/ThucPham/tip1.jpg" alt="">
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 20/11/2020</li>
                            <li><i class="fa fa-comment-o"></i> 15</li>
                        </ul>
                        <h5><a href="#">Cách nhận biết thực phẩm sạch <br><br></a></h5>

                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <a><img src="img/tips/SucKhoe/tip1.jpg" alt=""></a>
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i> 11/7/2020</li>
                            <li><i class="fa fa-comment-o"></i> 10</li>
                        </ul>
                        <h5><a href="#">10 cách đơn giản để duy trì một sức khỏe tốt</a></h5>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-6">
                <div class="blog__item">
                    <div class="blog__item__pic">
                        <a><img src="img/tips/DuLich/tip1.jpg" alt=""></a>
                    </div>
                    <div class="blog__item__text">
                        <ul>
                            <li><i class="fa fa-calendar-o"></i>20/10/2020</li>
                            <li><i class="fa fa-comment-o"></i> 5</li>
                        </ul>
                        <h5><a href="#">10 vật dụng cần mang theo khi đi du lịch</a></h5>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- Related Blog Section End -->

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
