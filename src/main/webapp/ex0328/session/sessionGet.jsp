<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> 세션정보 확인하자 </h1>
<h3>
    아이디 : <%=session.getAttribute("id")%><br>
    나이 : <%=session.getAttribute("age")%><br>
    취미 : <%=session.getAttribute("hobbys")%><br>
</h3>
</body>
</html>