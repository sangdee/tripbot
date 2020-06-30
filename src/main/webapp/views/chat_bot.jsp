<%@ page import="java.sql.Timestamp" %>
<%@ page import="com.capstone.tripbot.web.model.User" %>
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
<html lang="en">
<%!
    User user;
%>
<head>
    <title>chat bot</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travello template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!--chat css-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
          integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <link rel="stylesheet" type="text/css"
          href="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.css">
    <script type="text/javascript"
            src="https://cdnjs.cloudflare.com/ajax/libs/malihu-custom-scrollbar-plugin/3.1.5/jquery.mCustomScrollbar.min.js"></script>
    <link rel="stylesheet" href="views/css/chat.css">
    <link rel="stylesheet" href="views/css/custom.css">
    <!-- new css -->
    <link rel="stylesheet" type="text/css" href="/views/styles/bootstrap4/bootstrap.min.css">
    <link href="/views/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="/views/styles2/destinations.css">
    <link rel="stylesheet" type="text/css" href="/views/styles2/destinations_responsive.css">

</head>
<body>

<div class="super_container">

    <!-- Header -->
    <header class="header" id="header">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="header_content d-flex flex-row align-items-center justify-content-start">
                        <div class="header_content_inner d-flex flex-row align-items-end justify-content-start">
                            <div class="logo"><a href="/views/main.jsp">TripBot</a></div>

                            <!-- hidden -->
                            <nav class="main_nav">
                                <ul class="d-flex flex-row align-items-start justify-content-start">
                                    <li><a href="/views/main.jsp">메인 화면</a></li>
                                    <li><a href="/course_list">게시판</a></li>
                                    <li><a href="/theme_list.do">테마</a></li>
                                    <%
                                        user = (User) session.getAttribute("user");
                                        if (user == null || user.equals("")) {
                                    %>
                                    <li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">챗봇</a></li>
                                    <li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">여행일지</a></li>
                                    <li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">마이 페이지</a></li>
                                    <%}else{%>
                                    <%--챗봇 링크 달기--%>
                                    <li class="active"><a href="/chat_list.do">챗봇</a></li>
                                    <li><a href="/course_note">여행일지</a></li>
                                    <li><a href="/views/my_page.jsp">마이 페이지</a></li>
                                    <%}%>
                                </ul>
                            </nav>
                            <!-- //hidden -->

                            <!-- log in,  display: none; 제거해야함-->
                            <%
                                if (user == null || user.equals("")) {
                            %>
                            <div class="hamburger ml-auto">
                                <a href="/views/sign_in.jsp">
                                    <div><button class="newsletter_button">로그인</button></div>
                                </a>
                            </div>
                            <div class="hamburger">
                                <!-- register-->
                                <a href="/views/sign_up.jsp">
                                    <div><button class="newsletter_button">회원가입</button></div>
                                </a>
                            </div>
                            <%
                            } else {
                            %>
                            <div class="hamburger ml-auto">
                                <a style="font-size: small">
                                    <%=user.getName()%>님 안녕하세요
                                </a>
                            </div>
                            <div class="hamburger">
                                <a>
                                    <a href="/logout">
                                        <button type="button" class="newsletter_button">로그아웃</button>
                                    </a>
                                </a>
                            </div>
                            <%
                                }
                            %>


                        </div>
                    </div>
                </div>
            </div>
            <!-- Header2, bootstrap.css에 row2 속성 추가함-->
            <div class="row2">
                <hr>
                <div class="hamburger my-auto">
                    <i class="fa fa-bars" aria-hidden="true"></i>
                </div>
                <br>
            </div>
            <!-- //Header2 -->
        </div>
        <div class="header_social d-flex flex-row align-items-center justify-content-start">

        </div>
    </header>

    <!-- Menu -->
    <div class="menu">
        <div class="menu_header d-flex flex-row align-items-center justify-content-start">
            <div class="menu_logo"><a href="/views/main.jsp">TripBot</a></div>
            <div class="menu_close_container ml-auto"><div class="menu_close"><div></div><div></div></div></div>
        </div>
        <div class="menu_content">
            <ul>
                <li ><a href="/views/main.jsp">메인 화면</a></li><hr style="border:solid 1px gray">
                <li><a href="/course_list">게시판</a></li><hr style="border:solid 1px gray">
                <li><a href="/theme_list.do">테마</a></li><hr style="border:solid 1px gray">
                <%
                    user = (User) session.getAttribute("user");
                    if (user == null || user.equals("")) {
                %>
                <li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">챗봇</a></li><hr style="border:solid 1px gray">
                <li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">여행일지</a></li><hr style="border:solid 1px gray">
                <li><a href="/views/sign_in.jsp" onclick="alert('로그인이 필요한 서비스입니다.');">마이 페이지</a></li><hr style="border:solid 1px gray">
                <%}else{%>
                <%--챗봇 링크 달기--%>
                <li ><a href="/chat_list.do">챗봇</a></li><hr style="border:solid 1px gray">
                <li><a href="/course_note">여행일지</a></li><hr style="border:solid 1px gray">
                <li><a href="/views/my_page.jsp">마이 페이지</a></li><hr style="border:solid 1px gray">
                <%}%>
            </ul>
        </div>
        <div class="menu_social">
            <div class="menu_phone ml-auto">고객 문의: 010-1234-5678</div>
        </div>
    </div>

    <!-- Home -->

    <div class="home">
        <div class="background_image" style="background-image:url(/views/images/chatimage.jpg)"></div>
    </div>


    <!-- Destinations -->

    <div class="destinations" id="destinations">
        <div class="container">
            <div class="row">
                <div class="col text-center">
                    <div class="section_subtitle">Trip Bot에게 여행 정보를 물어보세요! </div>
                    <div class="section_title"><h2>Trip Bot</h2></div>
                </div>
            </div>
            <br>
            <hr>
            <div class="row destination_sorting_row">
                <!-- chat bot -->
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
                                    <span>TripBot</span>
                                </div>
                            </div>
                        </div>
                        <div class="card-body msg_card_body" style="color: black">
                            <div class="d-flex justify-content-start mb-4">
                                <div class="img_cont_msg">
                                    <img src="views/images/bot.jpg"
                                         class="rounded-circle user_img_msg">
                                </div>
                                <div class="msg_cotainer">
                                    안녕하세요? 무엇을 도와드릴까요?
                                </div>
                            </div>
                            <c:forEach var="chat" items="${chat}">
                                <div class="d-flex justify-content-end mb-4">
                                    <div class="msg_cotainer_send">
                                            ${chat.chatContent}
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
                            <form action="/chat_content.do" style="display: flex; width: 100%;">
                                <input type="text" name="chatContent" class="form-control2 type_msg2" style="width: 100%"
                                       placeholder="Type your message..." />
                                <button type="submit" class="input-group-text send_btn">
                                    <i class="fas fa-location-arrow"></i></button>
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

<%--                                    <button type="submit" class="input-group-text send_btn">--%>
<%--                                        <i class="fas fa-location-arrow"></i></button>--%>

                            </form>

                        </div>
                    </div>
                </div>
                <!--// chat bot -->
            </div>

            <div class="row destinations_row">
                <div class="col">
                    <div class="destinations_container item_grid">
                        <c:forEach var="course" items="${courses}">
                            <!-- Destination -->
                            <div class="destination item" style="height: 550px"  onclick="location.href='/course_detail/${course.courseNo}'">
                                <c:set var="i" value="0"></c:set>
                                <c:forEach var="board" items="${boards}">
                                    <c:if test="${course.courseNo eq board.courseNo and i<1}">
                                        <c:forEach var="image" items="${images}">
                                            <c:if test="${image.fno eq board.fno and i<1}">
                                                <div class="destination_image"><img src="/views/uploadfiles/${image.getFilename()}" alt=""></div>
                                                <c:set var="i" value="${i+1}"></c:set>
                                            </c:if>
                                        </c:forEach>
                                    </c:if>
                                </c:forEach>
                                <c:if test="${i == 0}">
                                    <div class="destination_image"><img src="/views/images/destination_2.jpg" alt=""></div>
                                </c:if>
                                <div class="destination_content">
                                    <div class="destination_title"><a href="#">${course.subject}</a></div>
                                    <div class="destination_subtitle"><p>작성자-${course.writer}</p></div>
                                        <%--			테마추가--%>
                                    <div class="destination_price">#${course.theme}</div>

                                    <div class="destination_list">
                                        <ul>
                                            <c:set var = "j" value="0"></c:set>
                                            <c:forEach var="boards" items="${boards}">
                                                <c:if test="${boards.courseNo eq course.courseNo and j<4 }">
                                                    <li>${boards.subject}</li>
                                                    <c:set var="j" value="${j+1}"></c:set>
                                                </c:if>
                                            </c:forEach>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer" id="footer">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="views/images/footer_1.jpg" data-speed="0.8"></div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="newsletter">
                        <div class="newsletter_title_container text-center">
                            <div class="newsletter_subtitle">Trip Bot은 당신과의 소통을 소중히합니다.</div>
                        </div>

                    </div>
                </div>
            </div>
            <div class="row footer_contact_row">
                <div class="col-xl-10 offset-xl-1">
                    <div class="row">

                        <!-- Footer Contact Item -->
                        <div class="col-xl-4 footer_contact_col">
                            <div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
                                <div class="footer_contact_icon"><img src="views/images/sign.svg" alt=""></div>
                                <div class="footer_contact_title">고객 상담</div>
                                <div class="footer_contact_list">
                                    <ul>
                                        <li>Office Landline: 000-0000-0000</li>
                                        <li>Mobile: 000-0000-0000</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Footer Contact Item -->
                        <div class="col-xl-4 footer_contact_col">
                            <div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
                                <div class="footer_contact_icon"><img src="views/images/trekking.svg" alt=""></div>
                                <div class="footer_contact_title">공지사항</div>
                                <div class="footer_contact_list">
                                    <ul style="max-width:190px">
                                        <li>비고</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                        <!-- Footer Contact Item -->
                        <div class="col-xl-4 footer_contact_col">
                            <div class="footer_contact_item d-flex flex-column align-items-center justify-content-start text-center">
                                <div class="footer_contact_icon"><img src="views/images/around.svg" alt=""></div>
                                <div class="footer_contact_title">제작 담당</div>
                                <div class="footer_contact_list">
                                    <ul>
                                        <li>따라와</li>
                                        <li>Email@gmail.com</li>
                                    </ul>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>


    </footer>
    <!-- //Footer -->
</div>
<!-- Default-JavaScript-File -->
<script src="views/js/chat.js"></script>

<script src="/views/js/jquery-3.2.1.min.js"></script>
<script src="/views/styles/bootstrap4/popper.js"></script>
<script src="/views/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/views/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/views/plugins/easing/easing.js"></script>
<script src="/views/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/views/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/views/js/destinations.js"></script>
</body>
</html>