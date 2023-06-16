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
<%
if(session.getAttribute("seesionId")==null || session.getAttribute("seesionId")==""){ //로그인이 안 된 상태
	//response.sendRedirect("./dbConnectTest5_login/loginForm.jsp");
	System.out.println(session.getAttribute("sessionId"));
}else { //로그인 된 상태
%>
<h3>왜안나오지??</h3>
	<%=session.getAttribute("sessionId") %>님이 로그인하셨습니다. <br />
	<input type="button" value="logout" onclick="logoutProc();" /> <br />
<%
}
%>
<br />
	<a href="./dbConnectTest5_notices/noticeboards.jsp">noticeBoards</a>

<script>
	function logoutProc(){
		location.href="./dbConnectTest5_login/logoutProc.jsp";
	}
</script>
</body>
</html>