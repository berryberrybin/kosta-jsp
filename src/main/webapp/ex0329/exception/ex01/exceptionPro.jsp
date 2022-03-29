<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
errorPage ="error.jsp"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> title </h1>
<%
    int num1 = Integer.parseInt(request.getParameter("num1"));
    int num2 = Integer.parseInt(request.getParameter("num2"));
%>
<h3>
    <%=num1%> + <%=num2%> = <%=num1+num2%>
</h3>

</body>
</html>