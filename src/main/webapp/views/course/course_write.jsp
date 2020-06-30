<%@ page import="com.capstone.tripbot.web.model.User" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<%!
    User user;
%>
<head>
    <title>Travello</title>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Travello template project">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="/views/styles/bootstrap4/bootstrap.min.css">
    <link href="/views/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="/views/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="/views/styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="/views/styles/responsive.css">

    <link rel="stylesheet" type="text/css" href="/views/styles/contact.css">
    <link rel="stylesheet" type="text/css" href="/views/styles/contact_responsive.css">

    <link rel="stylesheet" type="text/css" href="/views/styles2/destinations.css">
    <link rel="stylesheet" type="text/css" href="/views/styles2/destinations_responsive.css">

    <link rel="stylesheet" type="text/css" href="/views/css/selectbox.css">
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
                                    <li><a href="/chat_list.do">챗봇</a></li>
                                    <li class="active"><a href="/course_note">여행일지</a></li>
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

    <!-- Home -->

    <div class="home">

        <!-- Home Slider -->
        <div class="home_slider_container">
            <div class="owl-carousel owl-theme home_slider">

                <!-- Slide -->
                <div class="owl-item">
                    <div class="background_image" style="background-image:url(/views/images/boardimage.jpg)"></div>
                    <div class="home_slider_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide -->
                <div class="owl-item">
                    <div class="background_image" style="background-image:url(/views/images/home_slider.jpg)"></div>
                    <div class="home_slider_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="home_slider_content">
                                        <div class="home_title"><h2>Let us take you away</h2></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Slide -->
                <div class="owl-item">
                    <div class="background_image" style="background-image:url(/views/images/home_slider.jpg)"></div>
                    <div class="home_slider_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="home_slider_content">
                                        <div class="home_title"><h2>Let us take you away</h2></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>


        </div>
    </div>


    <!-- Intro -->

    <div class="intro">
        <div class="intro_background" style="background-image:url(/views/images/intro.png)"></div>
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="intro_container">
                        <div class="row">
                            <div class="col text-center">
                                <div class="section_subtitle">simply amazing places</div>
                                <div class="section_title"><h2>나만의 여행 코스</h2></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>




    <!-- News -->

    <div class="news" id="news">
        <div class="container">
            <div class="row">

                <div class="col-xl-8">
                    <div class="news_container">
                    <c:set var="check" value="${boards.size()}"/>
                    <c:choose>
                        <c:when test="${check eq 0}">
                            <!-- News Post -->
                            <div class="news_post d-flex flex-md-row flex-column align-items-start justify-content-start">
                                <div class="news_post_image"><img src="/views/images/news_6.jpg" alt=""></div>
                                <div class="news_post_content">
                                    <div class="news_post_date d-flex flex-row align-items-end justify-content-start">
                                        <div>01</div>
                                        <div></div>
                                    </div>
                                    <div class="news_post_title"><a href="#">새로운 코스를 추가해 주세요</a></div>

                                    <div class="news_post_text">
                                        <p>새로운 코스를 추가 하기 위해 코스 추가 버튼을 클릭해 주세요</p>
                                    </div>
                                </div>
                            </div>
                        </c:when>
                        <c:otherwise>
                            <% int i = 1;%>
                            <c:forEach var="board" items="${boards}">
                            <div class="news_post d-flex flex-md-row flex-column align-items-start justify-content-start">
                                <c:if test="${board.fno eq null}">
                                    <div class="news_post_image"><img src="/views/images/news_6.jpg" alt=""></div>
                                </c:if>
                                <c:forEach var="image" items="${images}">
                                    <c:if test="${image.getBno() eq board.getBno()}">
                                        <div class="news_post_image"><img src="/views/uploadfiles/${image.getFilename()}" alt=""></div>
                                    </c:if>
                                </c:forEach>

                                <div class="news_post_content">
                                    <div class="news_post_date d-flex flex-row align-items-end justify-content-start">

                                        <%if(i<10){%>
                                        <div>0<%=i%></div>
                                        <%}else{%>
                                        <div><%=i%></div>
                                        <%}%>
                                        <div></div>

                                    </div>
                                    <div class="news_post_title"><a href="#">${board.getSubject()}</a></div>

                                    <div class="news_post_text">
                                        <p>${board.getContent()}</p>
                                    </div>
                                </div>
                                <button class="btn btn-default" onclick="location.href='/board_delete/${board.getBno()}'">삭제</button>
                            </div>
                            <% i++;%>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>

                    </div>
                    <form action="/board_write/${course.courseNo}" method="post">
                        <button class="contact_button" onclick="location.href='/board_write'">코스추가</button>
                        <br>
                        <br>
                        <br>
                    </form>
                </div>




                <!-- News Sidebar -->
                <div class="col-xl-4">



                    <form action="/course_write.do" id="contact_form" class="contact_form">
                        <select class="sorting_text" name="theme">
                            <c:set var="i" value="test"></c:set>
                            <c:choose>
                                <c:when test="${course.writer ne i}">
                                    <option>${course.theme}</option>
                                </c:when>
                                <c:otherwise>
                                    <option>테마 선택</option>
                                </c:otherwise>
                            </c:choose>
                            <option value="맛집"># 맛집</option>
                            <option value="힐링"># 힐링</option>
                            <option value="액티비티"># 액티비티</option>
                            <option value="가족여행"># 가족여행</option>
                            <option value="문화유산"># 문화유산</option>
                        </select>
                        <br>
                        <br>
                        <c:choose>
                            <c:when test="${course.writer ne i}">
                                <div style="margin-bottom: 18px"><input type="text" class="contact_input contact_input_name inpt" name="subject" value="${course.subject}" required="required"><div class="input_border"></div></div>
                                <div><textarea class="contact_textarea contact_input inpt" name="content" placeholder="${course.content}" required="required"></textarea><div class="input_border" style="bottom:3px"></div></div>
                            </c:when>
                            <c:otherwise>
                                <div style="margin-bottom: 18px"><input type="text" class="contact_input contact_input_name inpt" name="subject" placeholder="코스 제목" required="required"><div class="input_border"></div></div>
                                <div><textarea class="contact_textarea contact_input inpt" name="content" placeholder="코스 설명" required="required"></textarea><div class="input_border" style="bottom:3px"></div></div>
                            </c:otherwise>
                        </c:choose>
                        <input type="hidden" name="courseNo" value="${course.courseNo}"/>
                        <input type="hidden" name="writer" value="${user.getName()}"/>
                        <button class="contact_button" type="submit">저장</button>
                        <button class="contact_button" onclick="alert('삭제되었습니다.')" location.href='/course_delete/${course.courseNo}'">삭제</button>
                    </form>


                </div>





            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="footer" id="footer">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="/views/images/footer_1.jpg" data-speed="0.8"></div>
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
                                <div class="footer_contact_icon"><img src="/views/images/sign.svg" alt=""></div>
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
                                <div class="footer_contact_icon"><img src="/views/images/trekking.svg" alt=""></div>
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
                                <div class="footer_contact_icon"><img src="/views/images/around.svg" alt=""></div>
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

<script src="/views/js/jquery-3.2.1.min.js"></script>
<script src="/views/styles/bootstrap4/popper.js"></script>
<script src="/views/styles/bootstrap4/bootstrap.min.js"></script>
<script src="/views/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="/views/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="/views/plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="/views/plugins/easing/easing.js"></script>
<script src="/views/plugins/parallax-js-master/parallax.min.js"></script>
<script src="/views/js/custom.js"></script>
<script src="/views/js/selectbox.js"></script>
</body>
</html>