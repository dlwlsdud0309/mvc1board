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
<h3>ifTest</h3>
<%
String n=request.getParameter("name");
String c=request.getParameter("color");
%>
<%=n%> <br />
<%=c%>
</body>
</html>