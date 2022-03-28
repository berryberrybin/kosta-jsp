<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> 회원정보 </h1>
<%
    request.setCharacterEncoding("UTF-8"); // 한글 깨지면 사용
    //폼으로 전송된 모든 name정보 찾기
    Enumeration<String> e = request.getParameterNames();
    while (e.hasMoreElements()){ // 요소에 데이터가 있다면
        String name = e.nextElement();
        String value = request.getParameter(name);
        out.println(name +"=" + value +  "<br>");
    }
%>
</body>
</html>