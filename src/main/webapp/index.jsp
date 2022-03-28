<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<body>
    <h1>JSP Start ! 시작</h1>
<%
    String name="문수빈";
    int age = 28;

    System.out.println("난 어디에 출력되니?");

    //모니터 출력 = 브라우져에 출력 - jsp내장객체 9개
    out.print("이름 : " + name+"<br>");
    out.println("나이 : " + age);
%>
</body>
</html>