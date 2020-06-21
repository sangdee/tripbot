<%@ page import="java.sql.Timestamp" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<%
    Timestamp register = new Timestamp(System.currentTimeMillis());
%>

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
    <link rel="stylesheet" href="views/css/bootstrap.css">
    <!-- Bootstrap-Core-CSS -->
    <link rel="stylesheet" type="text/css" href="views/css/jquery.mmenu.all.css">
    <!-- menu -->
    <link rel="stylesheet" href="views/css/main.css" type="text/css" media="all"/>
    <!-- Style-CSS -->
    <link href="views/css/fontawesome-all.css" rel="stylesheet">
    <!-- Font-Awesome-Icons-CSS -->
    <link rel="stylesheet" href="views/css/chat.css">
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
                    <img src="views/images/bot.jpg"
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
                    <img src="views/images/bot.jpg"
                         class="rounded-circle user_img_msg">
                </div>
                <div class="msg_cotainer">
                    안녕하세요? 무엇을 도와드릴까요?
                    <span class="msg_time"></span>
                </div>
            </div>
            <c:forEach var="chat" items="${chat}">
                <div class="d-flex justify-content-end mb-4">
                    <div class="msg_cotainer_send">
                            ${chat.chatContent}
                        <span class="msg_time_send">${chat.chatDate}</span>
                    </div>
                </div>
                <div class="d-flex justify-content-start mb-4">
                    <div class="img_cont_msg">
                        <img src="views/images/bot.jpg"
                             class="rounded-circle user_img_msg">
                    </div>
                    <div class="msg_cotainer">
                            ${chat.chatSay}
                        <span class="msg_time"></span>
                    </div>
                </div>
            </c:forEach>


             </div>
    </div>
    <div class="card-footer">
        <div class="input-group">
            <form action="/chat_content.do">
                <input type="text" name="chatContent" class="form-control type_msg"
                       placeholder="Type your message..."/>
                <input type="hidden" name="email" value=${user.email}>
                <input type="hidden" name="chatDate" value= <%=String.valueOf(register.getTime())%>>
                <c:choose>
                    <c:when test="${empty user.email}">
                        <input type="hidden" name="isUser" value=false>
                    </c:when>
                    <c:otherwise>
                        <input type="hidden" name="isUser" value=true>
                    </c:otherwise>
                </c:choose>
                <div class="input-group-append">
                    <button type="submit" class="input-group-text send_btn">
                        <i class="fas fa-location-arrow"></i></button>
                </div>
            </form>

        </div>
    </div>
</div>


<script src="views/js/jquery-2.2.3.min.js"></script>
<!-- Default-JavaScript-File -->
<script src="views/js/bootstrap.js"></script>
<script src="views/js/chat.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap -->

<!-- menu -->
<script src="views/js/jquery.mmenu.all.js"></script>
<script>
    $(function () {

        //   create a menu
        $('#menu').mmenu();

        //   for demo only
        $('a[href^="#/"]').click(function () {
            alert('Thank you for clicking, but that\'s a demo link.');
            return;
        })
    });
</script>
<!-- //menu -->

<!-- scrolling plugins -->
<script src="views/js/jquery.nicescroll.min.js"></script>
<script src="views/js/scripts.js"></script>
<!-- //scrolling plugins -->

<!-- smooth scrolling -->
<script src="views/js/SmoothScroll.min.js"></script>
<!-- //smooth scrolling -->

<!-- start-smoth-scrolling -->
<script src="views/js/move-top.js"></script>
<script src="views/js/easing.js"></script>
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