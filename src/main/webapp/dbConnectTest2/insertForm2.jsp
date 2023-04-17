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
<h3>insertForm2.jsp</h3>
<%-- <%session.invalidate(); %> --%>

<form action="insertPro2.jsp" method="post">
id : <input type="text" id="id" name="id" /> <br />
pass : <input type="text" id="pass" name="pass" /> <br />
name : <input type="text" id="name" name="name" /> <br />
address : <input type="text" id="addr" name="addr" /> <br />
<input type="submit" value="insert" />
</form>
<button type="button" onclick="location.href='mainPage.jsp'">main</button>

</body>
</html>