<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="/user_update.do" method="post">
    <input type="text" name="email" value="${user.email}" readonly><br>
    <input type="password" name="pw" value="${user.pw}"readonly><br>
    <input type="text" name="name" value="${user.name}"><br>
    <input type="submit" value="수정">
</form>
</body>
</html>