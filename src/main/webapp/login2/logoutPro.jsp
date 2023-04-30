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
<h3>logoutPro.jsp</h3>
<%
session.invalidate();
response.sendRedirect("loginForm.jsp");
%>
</body>
</html>