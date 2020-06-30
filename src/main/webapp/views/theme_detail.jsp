<%@ page import="com.capstone.tripbot.web.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<%!
  User user;
%>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>TripBot</title>

  <!-- Bootstrap core CSS -->
  <link href="styles/bootstrap2.css" rel="stylesheet">
  <link rel="stylesheet"  href="styles/bootstrap2.min.css">

  <!-- add CSS -->
  <link rel="stylesheet" type="text/css" href="views/styles2/bootstrap4/bootstrap.min.css">
  <link href="views/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <link rel="stylesheet" type="text/css" href="views/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
  <link rel="stylesheet" type="text/css" href="views/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
  <link rel="stylesheet" type="text/css" href="views/plugins/OwlCarousel2-2.2.1/animate.css">
  <link rel="stylesheet" type="text/css" href="views/styles2/main_styles.css">
  <link rel="stylesheet" type="text/css" href="views/styles2/responsive_detail.css">


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
                <li class="active"><a href="/theme_list.do">테마</a></li>
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
        <div class="background_image" style="background-image:url(views/images/themeimage.jpg)"></div>
        <div class="home_slider_content_container">
          <div class="container">
          </div>
        </div>
      </div>

      <!-- Slide -->
      <div class="owl-item">
        <div class="background_image" style="background-image:url(views/images/home_slider.jpg)"></div>
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
        <div class="background_image" style="background-image:url(views/images/home_slider.jpg)"></div>
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

<!-- Page Content -->
<div class="container">

  <div class="row">

    <div class="col-lg-3">
      <h1 class="my-4">#테마여행</h1>

    </div>
    <!-- /.col-lg-3 -->

    <div class="col-lg-9">

      <div class="card mt-4">
        <img class="card-img-top img-fluid" src="${themeData.content}" alt="">
        <div class="card-body">
          <h3 class="card-title">${themeData.title}</h3>

          <p class="card-text">${themeData.theme}</p>
          <span class="text-warning">&#9733; &#9733; &#9733; &#9733; &#9734;</span>
        </div>
      </div>
    </div>
    <!-- /.col-lg-9 -->

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


</footer>

<!-- Bootstrap core JavaScript -->
<script src="views/vendor/jquery/jquery.min.js"></script>
<script src="views/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- add JavaScript -->
<script src="views/js/jquery-3.2.1.min.js"></script>
<script src="views/styles2/bootstrap4/popper.js"></script>
<script src="views/styles2/bootstrap4/bootstrap.min.js"></script>
<script src="views/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="views/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="views/plugins/scrollTo/jquery.scrollTo.min.js"></script>
<script src="views/plugins/easing/easing.js"></script>
<script src="views/plugins/parallax-js-master/parallax.min.js"></script>
<script src="views/js/custom.js"></script>

</body>

</html>