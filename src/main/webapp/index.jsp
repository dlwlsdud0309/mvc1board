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
<h3>index.jsp</h3>
<%=session.getAttribute("sessionId") %>님이 로그인하셨습니다. <br />
<input type="button" value="logout" onclick="logoutProc();" />

<script>
	function logoutProc(){
		location.href="./dbConnectTest5_login/logoutProc.jsp";
	}
</script>
</body>
</html>