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
<h3>logout2.jsp</h3>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
%>
<%=id %> <br />
<%=pass %> <br />
</body>
</html>