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
<h3>join.jsp</h3>
<h3>회원가입</h3>
<form action="joinPro.jsp" method="post">
id : <input type="text" id="id" name="id" autofocus required /> <br />
pass : <input type="text" id="pass" name="pass" autofocus required /> <br />
name : <input type="text" id="name" name="name" autofocus required /> <br />
addr : <input type="text" id="addr" name="addr" autofocus required /> <br />
<input type="submit" value="join" />
</form>
</body>
</html>