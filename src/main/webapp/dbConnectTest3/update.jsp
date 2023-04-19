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
<h3>update.jsp</h3>
<h3>회원정보변경</h3>
id : <%=session.getAttribute("sessionId") %> <br />
<form action="updatePro.jsp" method="post">
name : <input type="text" id="name" name="name" autofocus required /> <br />
addr : <input type="text" id="addr" name="addr" autofocus required /> <br />
<input type="submit" value="update" />
</form>
</body>
</html>