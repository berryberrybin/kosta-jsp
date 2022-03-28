<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> O형의 특징 </h1>
<%
    String type = "성격이 ~~~~ 하다.";
%>
<h3>
    <%=request.getParameter("name")%>님의 혈액형은 <%=request.getParameter("blood")%> 입니다.<br>
    O형의 혈액형 특징 : <%=type%>
</h3>

</body>
</html>