<%@ page import="com.capstone.tripbot.web.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">
<%!
    User user;
%>
<head>
    <title>TripBot</title>
    <meta charset="UTF-8" />

    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- main.css -->
    <link rel="stylesheet" href="css/main.css" type="text/css" media="all" />
    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Asap:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //Web-Fonts -->
    <!-- new styles -->
    <meta name="description" content="Travello template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="styles2/bootstrap4/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="plugins/font-awesome-4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="styles2/about.css">
    <link rel="stylesheet" type="text/css" href="styles2/about_responsive.css">
    <!-- //new styles -->
</head>

<body>

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
                                <li><a href="/chat_list.do">챗봇</a></li>
                                <li><a href="/course_note">여행일지</a></li>
                                <li class="active"><a href="/views/my_page.jsp">마이 페이지</a></li>
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
            <li class="active"><a href="/views/main.jsp">메인 화면</a></li><hr style="border:solid 1px gray">
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
            <li><a href="/chat_list.do">챗봇</a></li><hr style="border:solid 1px gray">
            <li><a href="/course_note">여행일지</a></li><hr style="border:solid 1px gray">
            <li><a href="/views/my_page.jsp">마이 페이지</a></li><hr style="border:solid 1px gray">
            <%}%>
        </ul>
    </div>
    <div class="menu_social">
        <div class="menu_phone ml-auto">고객 문의: 010-1234-5678</div>
    </div>
</div>

<br>
<br>
<br>
<br>
<br>
<br>
<br>
<!-- 개인정보창 -->
<div class="agile-trains w3layouts-content space-w3ls">
    <div class="container">
        <div class="bann-info">
            <h2>개인 정보</h2>
            <div class="book-a-ticket">
                <div class=" bann-info">
                    <form action="/user_update.do" method="post">
                        <div class="ban-top">
                            <table class="table table-bordered agileinfo">
                                <tbody>
                                    <tr>
                                        <td class="wthree">
                                            아이디 </td>
                                        <td class="price us">
                                            <label class="control-label">${user.email}</label>
                                            <input type="hidden" name="email" value="${user.email}">
                                            <input type="hidden" name="pw" value="${user.pw}">
                                        </td>
                                    </tr>

                                    <tr>
                                        <td class="wthree">
                                            닉네임
                                        </td>
                                        <td class="price us">
                                            <input type="text" name="name" value="${user.name}">
                                        </td>

                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="search">
                            <input id="modify_info_btn" type="submit" class="submit" value="정보 수정">
                       </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- //개인정보창 -->

<!-- Footer -->
<footer class="footer">
    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="images/footer_1.jpg" data-speed="0.8"></div>
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
                            <div class="footer_contact_icon"><img src="images/sign.svg" alt=""></div>
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
                            <div class="footer_contact_icon"><img src="images/trekking.svg" alt=""></div>
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
                            <div class="footer_contact_icon"><img src="images/around.svg" alt=""></div>
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


<script src="js/jquery-3.2.1.min.js"></script>
<script src="styles2/bootstrap4/popper.js"></script>
<script src="styles2/bootstrap4/bootstrap.min.js"></script>
<script src="plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="plugins/easing/easing.js"></script>
<script src="plugins/parallax-js-master/parallax.min.js"></script>
<script src="js/login.js"></script>

</body>

</html>