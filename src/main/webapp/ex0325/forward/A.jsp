<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<%
    String name = request.getParameter("name");
    String blood = request.getParameter("blood");
    String type = "성격이 ~~~~ 하다. 좋아하는 것은 ~~ 이다.";
%>
<h1> <%=blood%>형 페이지 입니다. </h1>
<h3>
    <%=request.getParameter("name")%>님의 혈액형은 <%=blood%> 입니다.<br>
    <%=blood%> 형의 혈액형 특징 : <%=type%>
</h3>
</body>
</html>