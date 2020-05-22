<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <title>select_data</title>
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

    <!-- new-icon -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- //new-icon -->

    <style>
        table
        {
            border:1px solid #BDBDBD;
            text-align:center;
            width:30%;
        }
    </style>

    <script language="javascript">
        var today = new Date(); // 오늘 날짜
        var date = new Date();

        function beforem() //이전 달을 today에 값을 저장
        {
            today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
            build(); //만들기
        }

        function nextm()  //다음 달을 today에 저장
        {
            today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
            build();
        }

        function build()
        {
            var nMonth = new Date(today.getFullYear(), today.getMonth(), 1); //현재달의 첫째 날
            var lastDate = new Date(today.getFullYear(), today.getMonth() + 1, 0); //현재 달의 마지막 날
            var tbcal = document.getElementById("calendar"); // 테이블 달력을 만들 테이블
            var yearmonth = document.getElementById("yearmonth"); //  년도와 월 출력할곳
            yearmonth.innerHTML = today.getFullYear() + "년 "+ (today.getMonth() + 1) + "월"; //년도와 월 출력

            if(today.getMonth()+1==12) //  눌렀을 때 월이 넘어가는 곳
            {
                before.innerHTML=(today.getMonth())+"월";
                next.innerHTML="1월";
            }
            else if(today.getMonth()+1==1) //  1월 일 때
            {
                before.innerHTML="12월";
                next.innerHTML=(today.getMonth()+2)+"월";
            }
            else //   12월 일 때
            {
                before.innerHTML=(today.getMonth())+"월";
                next.innerHTML=(today.getMonth()+2)+"월";
            }


            // 남은 테이블 줄 삭제
            while (tbcal.rows.length > 2)
            {
                tbcal.deleteRow(tbcal.rows.length - 1);
            }
            var row = null;
            row = tbcal.insertRow();
            var cnt = 0;

            // 1일 시작칸 찾기
            for (i = 0; i < nMonth.getDay(); i++)
            {
                cell = row.insertCell();
                cnt = cnt + 1;
            }

            // 달력 출력
            for (i = 1; i <= lastDate.getDate(); i++) // 1일부터 마지막 일까지
            {
                cell = row.insertCell();
                cell.innerHTML = i;
                cnt = cnt + 1;
                if (cnt % 7 == 1) {//일요일 계산
                    cell.innerHTML = "<font color=#FF9090>" + i//일요일에 색
                }
                if (cnt % 7 == 0) { // 1주일이 7일 이므로 토요일 계산
                    cell.innerHTML = "<font color=#7ED5E4>" + i//토요일에 색
                    row = calendar.insertRow();// 줄 추가
                }
                if(today.getFullYear()==date.getFullYear()&&today.getMonth()==date.getMonth()&&i==date.getDate())
                {
                    cell.bgColor = "#BCF1B1"; //오늘날짜배경색
                }
            }

        }

    </script>

</head>

<body onload="build();">
<table align="center" id="calendar">
    <tr>
        <td><font size=1%; color="#B3B6B3"><label onclick="beforem()" id="before" ></label></font></td>
        <td colspan="5" align="center" id="yearmonth"></td>
        <td><font size=1%; color="#B3B6B3"><label onclick="nextm()" id="next"></label></font></td>
    </tr>
    <tr>
        <td align="center"> <font color="#FF9090">일</font></td>
        <td align="center"> 월 </td>
        <td align="center"> 화 </td>
        <td align="center"> 수 </td>
        <td align="center"> 목 </td>
        <td align="center"> 금 </td>
        <td align="center"><font color=#7ED5E4>토</font></td>
    </tr>
</table>

<div class="text-center mx-auto">
<a class="button2-w3l " href="write_note.jsp">일지 작성 시작
    <i class="fas fa-plus"></i>
</a>
</div>

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