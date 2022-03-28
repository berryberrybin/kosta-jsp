<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<%
//세션 유효시간 설정
//session.setMaxInactiveInterval(10); //30초
%>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> HttpSession - session 관련 메소드 </h1>
<h3>
    session.getId() = <%=session.getId()%> <br>
    session.isNew() = <%=session.isNew()%> <br>
    session.getMaxInactiveInterval() = <%=session.getMaxInactiveInterval()%> <br>
    session.getCreationTime() = <%=session.getCreationTime()%> <br>
    session.getLastAccessedTime() = <%=session.getLastAccessedTime()%> <br>

    <%
        //세션에 정보를 저장
        session.setAttribute("id","Mike");
        session.setAttribute("age","20");
        session.setAttribute("hobbys",new String[]{"등산","수영","골프"});
    %>
    저장된 정보 확인하기 <p>
    아이디 : <%=session.getAttribute("id")%><br>
    나이 : <%=session.getAttribute("age")%><br>
    취미 : <%=session.getAttribute("hobbys")%><br>

    <a href="sessionGet.jsp">세션정보 확인하러 가자.</a>

</h3>
</body>
</html>