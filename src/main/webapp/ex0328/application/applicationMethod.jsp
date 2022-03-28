<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> ServletContext  - application 관련 메소드 </h1>
application.getContextPath() = <%=application.getContextPath()%><br>
application.getRealPath("/") = <%=application.getRealPath("/")%><br>

application.getMajorVersion()=<%=application.getMajorVersion()%><br>
application.getMinorVersion()=<%=application.getMinorVersion()%><br>
application.getServerInfo()= <%=application.getServerInfo()%><br>

<%
    //application 영역에 정보 저장
    application.setAttribute("message","application 영역입니다.");
    application.setAttribute("address","경기도 오리역");
%>
<h3>
    저장된 정보 확인 <p>
    메시지 : <%=application.getAttribute("message")%><p>
    주소 : <%=application.getAttribute("address")%><p>
</h3>

    <a href="../session/sessionGet.jsp">application확인하러 가자</a>

</body>
</html>