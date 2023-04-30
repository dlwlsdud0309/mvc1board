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
<h3>loginForm.jsp</h3>
<form action="loginPro.jsp" method="post">
ID : <input type="text" id="id" name="id" /> <br />
PASS : <input type="text" id="pass" name="pass" /> <br />
<input type="submit" value="login" /> <br />
</form>
</body>
</html>