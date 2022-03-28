<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> 저장된 Cookie정보 확인하기 </h1>
<%
    Cookie[] cookies = request.getCookies();
    if(cookies != null){
        out.println("쿠키 개수 : "+ cookies.length+"<p>");
        for(Cookie co : cookies){
            out.println(co.getName()+" : "+co.getValue()+"<br>");
        }
    }else{
        out.println("<h3>쿠키에 저장된 정보가 없습니다.</h3>");
    }
%>
</body>
</html>