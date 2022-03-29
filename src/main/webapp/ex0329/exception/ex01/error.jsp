<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
         isErrorPage="true" %>
<%response.setStatus(200);%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> 예외가 발생했습니다 </h1>
예외종류 : <%=exception%><br>
예외메시지 : <%=exception.getMessage()%><br>
예외클래스 : <%=exception.getClass()%><br>
</body>
<a href="exceptionForm.jsp">폼으로 이동</a>
</html>