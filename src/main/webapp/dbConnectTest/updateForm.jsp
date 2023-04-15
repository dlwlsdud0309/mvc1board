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
<h3>updateForm</h3>
<form action="updatePro.jsp" method="post">
id : <input type="text" id="id" name="id" /> <br />
<!-- pass : <input type="text" id="pass" name="pass" /> <br />
name : <input type="text" id="name" name="name" /> <br />
address : <input type="text" id="addr" name="addr" /> <br /> -->
<input type="submit" value="update" />
</form>
</body>
</html>