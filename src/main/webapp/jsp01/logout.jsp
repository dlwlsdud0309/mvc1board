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
<h3>logout.jsp</h3>
<%
//세션제거처리
//전체세션삭제 sessionn.invalidate();

//세션일부제거
session.removeAttribute("id");

response.sendRedirect("sessionTestForm2.jsp");
%>




</body>
</html>