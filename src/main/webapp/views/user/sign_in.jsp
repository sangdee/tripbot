<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <title>로그인</title>
</head>

<body>
<form action="/sign_in.do" method="post">
    <input type="email" name="email">
    <input type="password" name="pw">
    <input type="submit" value="로그인">
</form>
<input type="button" value="회원가입" onclick="location.href='sign_up.jsp'">

</body>
</html>