<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <title>Travel App TripBot</title>
    <!-- Meta tag Keywords -->

    <meta charset="UTF-8"/>
    <!-- Custom-Files -->
    <link rel="stylesheet" href="css/bootstrap.css">
    <!-- main.css -->
    <link rel="stylesheet" href="css/main.css" type="text/css" media="all" />
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
                            <a href="main.jsp">
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
                    <form action="/user_update.do" method="post">
                        <div class="ban-top">
                            <table class="table table-bordered agileinfo">
                                <tbody>
                                <tr>
                                    <td class="wthree">
                                        이메일
                                    </td>
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
                            <input type="submit" class="submit" value="정보수정">

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

</body>

</html>