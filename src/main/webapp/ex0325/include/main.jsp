<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> include 지시어 TEST </h1>
<!--include 하는 방법
 :WAS에서 변환될때 소스가 메인에 합쳐져서 하나의 서블릿으로 변환됨 (변수를 공유함)
 :servlet이 따로 생성되지 않음
 -->
<%@ include file="top.jsp"%>
<hr color="red">

<%
    String addr = "서울시 강남구";
%>
<h3>여기는 Main.jsp입니다</h3>
<hr color="blue">
<%@ include file="footer.jsp"%>
</body>
</html>