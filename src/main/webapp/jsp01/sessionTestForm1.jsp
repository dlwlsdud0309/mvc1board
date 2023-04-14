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
<h3>sessionTestForm1.jsp</h3>
<form action="sessionTest1.jsp" method="post">
	아이디 : <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" /> <br />
	비밀번호 : <input type="text" id="pass" name="pass" placeholder="비밀번호를 입력하세요" /> <br />
	<input type="submit" value="login" />
</form>
</body>
</html>