<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>updateCheck</h3>
<h3>회원정보 수정된 내용 확인</h3>
<%=session.getAttribute("id") %>

<%
String name=request.getParameter("name");
String addr=request.getParameter("addr");
%>
</body>
</html>