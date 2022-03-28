<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<%
//param으로 전송된 데이터 받기
    String id = request.getParameter("id");
    String addr = request.getParameter("addr");

%>
<h3>footer.jsp입니다 </h3>
<h4>아이디 : <%=id%> </h4>
<h4>주소 : <%=addr%> </h4>
<%
%>
</body>
</html>