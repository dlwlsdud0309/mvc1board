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
<h3>sessionTest1.jsp</h3>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
%>
<%=id %> <br />
<%=pass %> <br />

<%
//리다이렉트
//response.sendRedirect("logout2.jsp"); //이 경우 id와 pass값이 null
%>
<jsp:forward page="logout2.jsp"></jsp:forward>
</body>
</html>