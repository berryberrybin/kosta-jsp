<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<%
    String blood = request.getParameter("blood");
    out.print(blood);
%>
<jsp:forward page='<%=blood+".jsp"%>'/>
</body>
</html>