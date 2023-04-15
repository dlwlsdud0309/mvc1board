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
<h3>회원정보 삭제</h3>
<form action="deletePro.jsp" method="post">
id : <input type="text" id="id" name="id" /> <br />
<input type="submit" value="delete" /> <br />
</form>
</body>
</html>