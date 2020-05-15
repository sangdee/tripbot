<%@ page import="com.capstone.tripbot.web.model.User" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%!
    User user;
    %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

메인화면

<%
    user = (User) session.getAttribute("user");
    if (user == null || user.equals("")) {
%>

<a href="./user/sign_in.jsp" role="button"> 로그인</a>
<a href="./user/sign_up.jsp" role="button"> 회원가입</a>
<%
} else {
%>

<%=user.getName()%>님 안녕하세요<br>
<a href="/logout" role="button"> 로그아웃</a>
<a href="/update" role="button"> 개인정보수정</a>
<%}%>

</body>
</html>