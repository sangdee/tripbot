<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="zxx">
<head>
    <meta charset="UTF-8">
    <title>Theme-page</title>

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
    <!-- theme-page -->
    <link rel="stylesheet" href="css/theme-page.css">

    <!-- //Custom-Files -->

    <!-- Web-Fonts -->
    <link href="//fonts.googleapis.com/css?family=Asap:400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
    <!-- //Web-Fonts -->

    <!-- new-icon -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- //new-icon -->


</head>
<body>


<!-- theme-header -->
<div id="skipToContent">
    <a href="#main.jsp">메인으로 가기</a>
    <a href="#main.jsp">| 로그아웃</a>
</div>
<!-- // theme-header -->

<hr class="one">

<div class="container">
    <!-- 태그 리스트 -->

    <div class="theme-list">
        <strong>총<span id="totalCnt"></span>건</strong>
        <div class="box_leftType1">
            <div class="total_check">
                <div class="btn_txt">
                    <button type="button" class="theme-btn">최신순</button>
                    <button type="button" class="theme-btn">거리순</button>
                    <button type="button" class="theme-btn">인기순</button>

                </div>
            </div>
        </div>
    </div>
    <!-- //태그 리스트 -->

    <!-- 태그 버튼들 -->
    <div class="theme-btn">
        <div class="area_tagList">

            <ul class="tag_list area_list js_one" id="arealist">
                <li id="All"><button type="button" class="btn_all_active"><span>#전체</span></button></li>
                <li id="1"><button type="button" class="btn"><span>#테마1</span></button></li>
                <li id="2"><button type="button" class="btn"><span>#테마2</span></button></li>
                <li id="3"><button type="button" class="btn"><span>#테마3</span></button></li>
                <li id="4"><button type="button" class="btn"><span>#테마4</span></button></li>
                <li id="5"><button type="button" class="btn"><span>#테마5</span></button></li>
                <li id="6"><button type="button" class="btn"><span>#테마6</span></button></li>
                <li id="7"><button type="button" class="btn"><span>#테마7</span></button></li>
                <li id="8"><button type="button" class="btn"><span>#테마8</span></button></li>
                <li id="9"><button type="button" class="btn"><span>#테마9</span></button></li>
                <li id="10"><button type="button" class="btn"><span>#테마10</span></button></li>
                <li id="11"><button type="button" class="btn"><span>#테마11</span></button></li>
                <li id="12"><button type="button" class="btn"><span>#테마12</span></button></li>
            </ul>
        </div>
    </div>
    <!-- //태그 버튼들 -->
</div>

</body>
</html>