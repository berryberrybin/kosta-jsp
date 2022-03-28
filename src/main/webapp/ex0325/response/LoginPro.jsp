<%@ page import="java.net.URLEncoder" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> title </h1>
<%
    String dbId="aaa", dbPwd = "123"; // DB에서 값을 가져왔다고 가정

    //전송된 id, pwd, 이름 받기
    String userId = request.getParameter("userId");
    String userPwd = request.getParameter("userPwd");
    String userName = request.getParameter("userName");

    // if(userId.equals(dbId) && userPwd.equals(dbPwd)){ // userId는 사용자가 입력함 즉, null.equals 예외가 발생할 확률높음
    if(dbId.equals(userId) && dbPwd.equals(userPwd)){

        // redirect 방식 :  request와 response를 유지하지 않음
        //http://localhost:8080/ex0325/response/LoginPro.jsp
        // response.sendRedirect("LoginOK.jsp");
        //esponse.sendRedirect("LoginOK.jsp?userName="+userName); // LoginOK.jsp에서 ~님의 값을 이제 받을 수 있음

        response.sendRedirect("LoginOK.jsp?userName="+ URLEncoder.encode(userName, request.getCharacterEncoding()));

        //forword 방식으로 이동해보기 - 기존 자신이 갖고있는 request와 response를 유지할 수 있다는 특징이 있음
        //http://localhost:8080/ex0325/response/LoginPro.jsp?userId=aaa&userPwd=123&userName=a (뒤에 값이 같이 넘겨짐)
        //RequestDispatcher rd = request.getRequestDispatcher("LoginOK.jsp");
        //rd.forward(request, response);
    }else{
        //메시지를 출력
        %>

        <script type="text/javascript">
            alert("<%=userName%>님 아이디와 패스워드를 확인해주세요.")
            //location.href="LoginForm.html"; // 화면이 다시 구성되어 기존 작성한 내용들이 다 사라짐
            history.back(); // 화면을 back으로 돌아가므로 기존 작성 내용들을 유지함
        </script>

        <%
        //response.sendRedirect("LoginForm.html");
    }

%>
</body>
</html>