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
<div id="wrap">
	<form action="loginProc.jsp" method="post" name="logininfo">
		<img src="../img/loginimg.png" alt="login_img" id="wel_img" height="250" />
		<br /> <br />
		<table class="loginTable">
			<tr>
				<td></td>
			</tr>
		</table>
	</form>
</div>
</body>
</html>