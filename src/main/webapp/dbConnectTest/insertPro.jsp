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
<h3>insertPro.jsp</h3>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
String addr=request.getParameter("addr");
%>
<h4>입력값 확인</h4> <br />
<%=id %>
<%=pass %>
<%=name %>
<%=addr %>
</body>
</html>