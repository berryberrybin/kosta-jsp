<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<%
    //post 방식 한글 인코딩 처리
    request.setCharacterEncoding("UTF-8");
    //폼으로 전송된 데이터 받기

%>
<h1>회원 정보</h1>
<h3>
    이름 : <%=request.getParameter("name")%><br>
    나이 : <%=request.getParameter("age")%><br>
    취미 :
    <%String[] hobbys =  request.getParameterValues("hobby");
        for(String h : hobbys){
            out.println(h+" , ");
        }
    %><br>
    접속자 IP : <%=request.getRemoteAddr()%><br>
</h3>
</body>
</html>