<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> title </h1>
<%
    //모든 세션의 정보 삭제
    session.invalidate();
    response.sendRedirect("LoginForm.html");
%>
</body>
</html>