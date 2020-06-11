<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!DOCTYPE html>
<html lang="zxx">

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
          integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
    <title>Travel App Mobile App Category Bootstrap Responsive Web Template | Home :: W3layouts</title>
    <!-- Meta tag Keywords -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta charset="UTF-8"/>
    <meta name="keywords"
          content="Travel App Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design"
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
    <link rel="stylesheet" href="css/main.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <link href="css/fontawesome-all.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="css/chat.css">
    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Asap:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i"
          rel="stylesheet">
    <!-- //Web-Fonts -->

</head>

<body>
<!-- header top -->

</div>
<!-- //banner -->
<div class="col-md-8 col-xl-6 text-center mx-auto chat">
    <div class="card">
        <div class="card-header msg_head">
            <div class="d-flex bd-highlight">
                <div class="img_cont">
                    <img src="images/bot.jpg"
                         class="rounded-circle user_img">
                    <span class="online_icon"></span>
                </div>
                <div class="user_info">
                    <span>봇과 대화하기</span>
                </div>
            </div>
        </div>
        <div class="card-body msg_card_body">
            <div class="d-flex justify-content-start mb-4">
                <div class="img_cont_msg">
                    <img src="images/bot.jpg"
                         class="rounded-circle user_img_msg">
                </div>
                <div class="msg_cotainer">
                    안녕하세요? 무엇을 도와드릴까요?
                    <span class="msg_time">8:40 AM, Today</span>
                </div>
            </div>
            <div class="d-flex justify-content-end mb-4">
                <div class="msg_cotainer_send">
                    오늘 전주 날씨 어때?
                    <span class="msg_time_send">8:55 AM, Today</span>
                </div>
            </div>

        </div>
    </div>
    <div class="card-footer">
        <div class="input-group">
            <div class="input-group-append">
                                        <span class="input-group-text attach_btn"><i
                                                class="fas fa-paperclip"></i></span>
            </div>
            <textarea name="" class="form-control type_msg"
                      placeholder="Type your message..."></textarea>
            <div class="input-group-append">
                                        <span class="input-group-text send_btn"><i
                                                class="fas fa-location-arrow"></i></span>
            </div>
        </div>
    </div>
</div>
</div>
</div>


<!-- Js files -->
<!-- JavaScript -->
<script src="js/jquery-2.2.3.min.js"></script>
<!-- Default-JavaScript-File -->
<script src="js/bootstrap.js"></script>
<script src="js/chat.js"></script>
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