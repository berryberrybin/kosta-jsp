<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>

<!--액션태그를 이용해서 top.jsp include
    서블릿문서 각각 만들어짐
-->
<jsp:include page="top.jsp"/>
<hr color="red">
<% String addr="제주도...";
//request 요청의 한글인코딩 처리가 필요함
    request.setCharacterEncoding("UTF-8");
%>
<h1> 액션태그 - include </h1>
<h3> 여기는 main.jsp입니다.</h3>

<hr color="blue">
<!--footer.jsp에서 현재페이지에 있는 addr 정보를 사용할 수 있도록 param으로 넘긴다-->

<jsp:include page="footer.jsp">
<jsp:param name="id" value="jang"/>
    <jsp:param name="addr" value="<%=addr%>"/>
</jsp:include>

</body>
</html>
