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
