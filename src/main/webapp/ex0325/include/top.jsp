<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> top.jsp입니다 </h1>
<h3>오늘은 <%= new Date().toLocaleString()%></h3>
</body>
</html>