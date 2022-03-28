<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<%
    response.setHeader("Cache-Control","no-store"); //캐시기능을 사용하지 않겠다.
    session.setMaxInactiveInterval(10); // 세션만료시간 30분에서 10초로 변경
%>
<head>
    <meta charset="UTF-8">
    <script type="text/javascript" src="../../js/jquery-3.6.0.min.js"></script>
    <script type="text/javascript">
        $(function (){
            $("a").click(function (){
                if(confirm("정말 로그아웃 하시겠습니까?")){
                    location.href="Logout.jsp";
                    //모든 세션의 정보를 삭제함
                }
            })
        })
    </script>
    <title>Document</title>
</head>
<body>
<%
    if(session.getAttribute("sessionId")==null){
        out.println("<script>");
        out.println("alert('인증하고 이용해주세요.')");
        out.println("location.href='LoginForm.html'");
        out.println("</script>");
    }else{
        %>
        <h3> <%=session.getAttribute("sessionName")%> 님 로그인중 </h3>
        아이디 : <%=session.getAttribute("sessionId")%><br>
        이름 : <%=session.getAttribute("sessionName")%><br>
        접속시간 : <%=session.getAttribute("accessTime")%><br>
        <img src="../../img/jquery.jpg"><p>
        <a href="#">로그아웃</a>
        <%
    }
%>
</body>
</html>