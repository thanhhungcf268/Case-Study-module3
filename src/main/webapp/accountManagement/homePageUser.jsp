<%--
  Created by IntelliJ IDEA.
  User: ACER
  Date: 6/4/2021
  Time: 2:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <title>User Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default margin-bottom and rounded borders */
        .navbar {
            margin-bottom: 0;
            border-radius: 0;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }
    </style>
</head>
<body>

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" ><b id = "tider" style=" font-size: 35px; color: deeppink; font-family: 'Apple Color Emoji',serif">Tider+</b></a>
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <ul class="nav navbar-nav">
                <li class="active"><a>Home</a></li>
                <li><a href="..//users?action=edit&userId=${user.userId}">Information</a></li>
                <li><a href="/employee?action=showListRental">Create Request</a></li>
                <li><a href="https://zingmp3.vn/">Contact</a></li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="/"><span class="glyphicon glyphicon-log-in"></span> Sign out</a></li>
            </ul>
        </div>
    </div>
</nav>

<div class="container-fluid bg-3 text-center">
    <h3>People Who Looking For Their Half</h3><br>
    <div class="row">
        <div class="col-sm-3">
            <p>Ino Masashi 20</p>
            <img src="https://cdn.statically.io/img/thuthuatnhanh.com/wp-content/uploads/2019/11/anh-avatar-anime-buon-khoc-that-tinh-cho-nu.jpg" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Minano Yakuchi 19</p>
            <img src="https://img.thuthuatphanmem.vn/uploads/2018/10/06/anh-dep-ve-anime-girl-ca-tinh_033449959.jpg" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Yoona Kaito 18</p>
            <img src="https://img.thuthuatphanmem.vn/uploads/2018/10/06/hinh-anh-anime-girl-de-thuong-ca-tinh_033450366.jpg" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Naomi Anderson 16</p>
            <img src="https://i.pinimg.com/originals/e5/fa/8c/e5fa8c39861fe595e429067841f38485.jpg" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
    </div>
</div><br>

<div class="container-fluid bg-3 text-center">
    <div class="row">
        <div class="col-sm-3">
            <p>Elizabeth Olsen</p>
            <img src="https://static.viettelstudy.vn/upload/17975/20200818/nhung-hinh-anh-anime-nu-dep-nhat-2_9c2f4.jpg" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Nguyễn Yến Linh 20</p>
            <img src="https://gamek.mediacdn.vn/133514250583805952/2020/8/22/kizunaaifull2298404-15980596259471104118625.jpg" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Sakura Anko 25</p>
            <img src="https://taoanhonline.com/wp-content/uploads/2020/02/anh-ngau-32-2.jpg?v=1582389550" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
        <div class="col-sm-3">
            <p>Emily Colson 22</p>
            <img src="https://mondaycareer.com/wp-content/uploads/2020/11/%E1%BA%A3nh-avatar-%C4%91%E1%BA%B9p-c%C3%B4-g%C3%A1i-%C4%91eo-k%C3%ADnh.jpg" class="img-responsive" style="width:100%; height: 350px; object-fit: cover" alt="Image">
        </div>
    </div>
</div><br>
<div class="container" >
    <ul style="margin-left: 38%" class="pagination">
        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
        <li class="page-item"><a class="page-link" href="#">1</a></li>
        <li class="page-item"><a class="page-link" href="#">2</a></li>
        <li class="page-item"><a class="page-link" href="#">...</a></li>
        <li class="page-item"><a class="page-link" href="#">Next</a></li>
    </ul>
</div><br>

<footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-md-6">
                <h6>About</h6>
                <p class="text-justify">SỨ MỆNH CỦA CODEGYM <br>Phát triển các giải pháp học tập hiện đại và
                    hiệu quả thông qua các mô hình đào tạo tiên tiến trên nền tảng công nghệ giáo dục và sự
                    cộng tác sâu rộng giữa các bên liên quan, đặc biệt là doanh nghiệp trong thời đại Công nghiệp 4.0.</p>
            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Categories</h6>
                <ul class="footer-links">
                    <li><a>Javascript</a></li>
                    <li><a>MySQL</a></li>
                    <li><a>PHP</a></li>
                    <li><a>Java</a></li>
                </ul>
            </div>

            <div class="col-xs-6 col-md-3">
                <h6>Quick Links</h6>
                <ul class="footer-links">
                    <li><a>About Us</a></li>
                    <li><a>Contact Us</a></li>
                    <li><a>Contribute</a></li>
                    <li><a>Privacy Policy</a></li>
                </ul>
            </div>
        </div>
        <hr>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 col-sm-6 col-xs-12">
                <p class="copyright-text">Copyright &copy; 2021 All Rights Reserved by
                    <a href="#">BotGiatTide</a>.
                </p>
            </div>
        </div>
    </div>
</footer>

</body>
</html>