<%@ page import="java.util.concurrent.atomic.AtomicInteger" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Document</title>
</head>
<body>

<--%
    //1. 기존 counter 값을 읽어옴
    Object obj = application.getAttribute("count");

    //2. 만약 없으면 0으로 세팅
    if(obj==null){
        application.setAttribute("count",0);
        obj = application.getAttribute("count");
    }
    //3. 읽어온 데이터에 +1해서 저장하고 출력
    int count = (Integer)obj;
    //application.setAttribute("count", ++count);

    // 새로운 세션(유져)일때만 count가 1씩 증가함 - if문이 없으면 새로고침할때마다 방문자수가 1씩 증가함
    if(session.isNew()){
        count++;
        application.setAttribute("count", count);
    }
%>

<%
    Object obj = application.getAttribute("count");
    if(obj==null){
        application.setAttribute("count", new AtomicInteger());
        obj=application.getAttribute("count");
    }

    AtomicInteger atomic = (AtomicInteger)obj;
    int count = atomic.intValue();

    if(session.isNew()){
        count = atomic.incrementAndGet();
    }
%>

<h1> 방문자수 : <%=count%> 명 </h1>
</body>
</html>