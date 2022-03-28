<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>
<h1> Cookie </h1>
<h3>서버가 사용자의 정보를 클라이언트 pc쪽에 저장하는 기술</h3>
<%
    //쿠키생성
    Cookie cookie1 = new Cookie("id","roopy");
    Cookie cookie2= new Cookie("age","20");

    //저장전에 옵션 설정
    cookie1.setMaxAge(60*60*24); //1일
    cookie1.setMaxAge(60*60*24*365); //365일 = 1년

    cookie1.setPath("/"); // cookie1은 루트로 설정함  (즉, cookie2는 이 파일을 벗어나면 사용 불가)

    //저장
    response.addCookie(cookie1);
    response.addCookie(cookie2);

%>
</body>
</html>