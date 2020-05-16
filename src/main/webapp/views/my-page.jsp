<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Travel App Mobile App Category Bootstrap Responsive Web Template | Tour Booking :: W3layouts</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8" />
    <meta name="keywords" content="Travel App Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
    />
    <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!--// Meta tag Keywords -->

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" type="text/css" href="css/jquery.mmenu.all.css">
    <!-- menu -->
    <link rel="stylesheet" href="css/main.css" type="text/css" media="all" />
    <!-- Style-CSS -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Asap:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //Web-Fonts -->

</head>

<body>

<!-- banner -->
<div class="banner-w3l inner_banner_agile">
    <div class="container">
        <div id="page">
            <div class="mh-head Sticky">
                <div class="row">
                    <div class="col mh-btns-left">
                        <a class="fa fa-bars" href="#menu"></a>
                    </div>
                    <div class="col-8 logo">
                        <h1>
                            <a href="main.html">
                                따라와</a>
                        </h1>
                    </div>
                </div>
            </div>
            <!-- navigation -->
            <nav id="menu">
            </nav>
            <!-- //navigation -->
        </div>
    </div>
</div>
<!-- //banner -->

<!-- 개인정보창 -->
<div class="agile-trains w3layouts-content space-w3ls">
    <div class="container">
        <div class="bann-info">
            <h2>개인 정보</h2>
            <div class="book-a-ticket">
                <div class=" bann-info">
                    <form action="flight-list.html" method="post">
                        <div class="ban-top">
                            <table class="table table-bordered agileinfo">

                                <tbody>
                                <tr>
                                    <td class="wthree">
                                        아이디 </td>
                                    <td class="price us">
                                        <label class="control-label">아이디 받을 칸</label>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="wthree">
                                        성명 </td>
                                    <td class="price us">
                                        <input type="text" name="new_id">
                                        <a href="#" data-toggle="modal" data-target="#myModalbook" class="seat-button two">변경하기</a>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="wthree">
                                        닉네임 </td>
                                    <td class="price us">
                                        <input type="text" name="new_nickname">
                                        <a href="#" data-toggle="modal" data-target="#myModalbook" class="seat-button two">변경하기</a>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="wthree">
                                        이메일 </td>
                                    <td class="price us">
                                        <input type="text" name="new_email">
                                        <a href="#" data-toggle="modal" data-target="#myModalbook" class="seat-button two">변경하기</a>
                                    </td>

                                </tr>
                                <tr>
                                    <td class="wthree">
                                        비밀번호 </td>
                                    <td class="price us">

                                        <input type="text" name="new_pw">
                                        <a href="#" data-toggle="modal" data-target="#myModalbook" class="seat-button two">변경하기</a>
                                    </td>
                                </tr>

                                </tbody>
                            </table>
                        </div>
                        <div class="search">
                            <input type="submit" class="submit" value="메인화면으로 이동">

                        </div>
                    </form>
                </div>
            </div>
        </div>
        <div class="bann-info2 text-center">
            내가 작성한 글, 좋아요 누른 글 표시할 공간
        </div>

    </div>
</div>
<!-- //개인정보창 -->



<!-- footer -->
<footer>
    <div class="copy-right-grids">
        <p class="footer-gd">© 2020 따라와. All Rights Reserved | Design by
            <a href="https://w3layouts.com/" target="_blank">W3layouts</a>
        </p>
    </div>
</footer>
<!-- //footer -->

<!-- modal -->
<!-- log in -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Log In</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Username</label>
                        <input type="text" class="form-control" placeholder=" " name="Name" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input type="password" class="form-control" placeholder=" " name="Password" required="">
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" value="Log in">
                    </div>
                    <div class="row sub-w3l">
                        <div class="col sub-agile">
                            <input type="checkbox" id="brand2" value="">
                            <label for="brand2">
                                <span></span>Remember me?</label>
                        </div>
                        <div class="col forgot-w3l text-right">
                            <a href="#">Forgot Password?</a>
                        </div>
                    </div>
                    <p class="text-center dont-do">Don't have an account?
                        <a href="#" data-toggle="modal" data-target="#exampleModal2">
                            Register Now</a>
                    </p>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- register -->
<div class="modal fade" id="exampleModal2" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Register</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <form action="#" method="post">
                    <div class="form-group">
                        <label class="col-form-label">Your Name</label>
                        <input type="text" class="form-control" placeholder=" " name="Name" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Email</label>
                        <input type="email" class="form-control" placeholder=" " name="Email" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Password</label>
                        <input type="password" class="form-control" placeholder=" " name="Password" required="">
                    </div>
                    <div class="form-group">
                        <label class="col-form-label">Confirm Password</label>
                        <input type="password" class="form-control" placeholder=" " name="Confirm Password" required="">
                    </div>
                    <div class="right-w3l">
                        <input type="submit" class="form-control" value="Register">
                    </div>
                    <div class="sub-w3l">
                        <div class="sub-agile">
                            <input type="checkbox" id="brand1" value="">
                            <label for="brand1">
                                <span></span>I Accept to the Terms & Conditions</label>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
<!-- //modal -->





<!-- Js files -->
<!-- JavaScript -->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- Default-JavaScript-File -->
<script src="js/bootstrap.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->

<!-- menu -->
<script src="js/jquery.mmenu.all.js"></script>
<script>
    $(function () {

        //	create a menu
        $('#menu').mmenu();

        //	for demo only
        $('a[href^="#/"]').click(function () {
            alert('Thank you for clicking, but that\'s a demo link.');
            return;
        })
    });
</script>
<!-- //menu -->

<!-- scrolling plugins -->
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/scripts.js"></script>
<!-- //scrolling plugins -->

<!-- start-date-piker -->
<link rel="stylesheet" href="css/jquery-ui.css">
<script src="js/jquery-ui.js"></script>
<script>
    $(function () {
        $("#datepicker,#datepicker1").datepicker();
    });
</script>
<!-- //End-date-piker -->

<!-- smooth scrolling -->
<script src="js/SmoothScroll.min.js"></script>
<!-- //smooth scrolling -->

<!-- start-smoth-scrolling -->
<script src="js/move-top.js"></script>
<script src="js/easing.js"></script>
<script>
    jQuery(document).ready(function ($) {
        $(".scroll").click(function (event) {
            event.preventDefault();
            $('html,body').animate({
                scrollTop: $(this.hash).offset().top
            }, 1000);
        });
    });
</script>
<!-- start-smoth-scrolling -->

<!-- smooth scrolling-bottom-to-top -->
<script>
    $(document).ready(function () {
        /*
            var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
            };
        */
        $().UItoTop({
            easingType: 'easeOutQuart'
        });
    });
</script>
<a href="#" id="toTop" style="display: block;">
    <span id="toTopHover" style="opacity: 1;"> </span>
</a>
<!-- //smooth scrolling-bottom-to-top -->
<!-- //Js files -->


</body>

</html>