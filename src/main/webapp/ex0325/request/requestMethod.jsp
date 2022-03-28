<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h3> HttpServletRequest = request 관련 메소드</h3>
<%
   Enumeration<String> e = request.getHeaderNames();
   while(e.hasMoreElements()){
       String headerName = e.nextElement();
       String value = request.getHeader(headerName);
       out.println(headerName + " = " + value+"<br>");
   }
%>
<hr>
<h3>
    request.getContextPath() = <%=request.getContextPath()%><br>
    request.getRealPath("/") = <%=request.getRealPath("/")%>
    request.getRequestURL() = <%=request.getRequestURL()%>
</h3>
</body>
</html>