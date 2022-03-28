<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> forwardResult.jsp 문서입니다. </h1>
<%
    // param으로 전송된 데이터 2개 받기
    String message = request.getParameter("message");
%>
<h3>
    총합 : <%=request.getParameter("sum")%> <p>
    메시지 : <%=message%>
</h3>

</body>
</html>
