<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<%
String dbId="qwe", dbPwd = "123"; // DB에서 값을 가져왔다고 가정

//전송된 id, pwd, 이름 받기
String userId = request.getParameter("userId");
String userPwd = request.getParameter("userPwd");
String userName = request.getParameter("userName");

    if(dbId.equals(userId) && dbPwd.equals(userPwd)) {
        session.setAttribute("sessionId",userId);
        session.setAttribute("sessionName",userName);
        session.setAttribute("accessTime",new Date(session.getCreationTime()).toLocaleString());

        response.sendRedirect("LoginOK.jsp");

    }else{
        %>
    <script type="text/javascript">
        alert("<%=userName%>님 아이디와 패스워드를 확인해주세요.");
        history.back();
    </script>

    <%
    }
    %>
</body>
</html>