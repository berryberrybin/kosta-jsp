<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> 액션태그-forward태그 </h1>
<%
    int sum=0;
    for(int i=0;i<=10;i++){
        out.print(i+"<br>");
        sum+=i;
    }
    request.setCharacterEncoding("UTF-8");
%>
<jsp:forward page="forwardResult.jsp">
    <jsp:param name="message" value="즐거운 주말"/>
    <jsp:param name="sum" value="<%=sum%>"/>
</jsp:forward>
</body>
</html>
