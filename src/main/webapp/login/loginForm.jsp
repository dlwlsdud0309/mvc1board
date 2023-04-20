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
<link rel="stylesheet" href="../css/join_style.css" />
</head>
<body>
<script>
	function checkLoginButton(){
		inputForm=eval("document.logininfo")
		alert(inputForm.pass.value);
		
		return false; //login을 눌러도 다음 창으로 넘어가지 않음
	}
</script>
<h3>loginForm.jsp</h3>
<div id="wrap">
	<form action="loginproc.jsp" method="post" name="logininfo"
	onsubmit="return checkLoginButton();">
		<img src="../img/loginimg.png" id="wel_img" alt="welcome" height="250" />
		<br /><br />
		<table>
			<tr>
				<td><img class="login_form_img" src="../img/idimg.png" alt="idimg" height="20px" /></td>
				<td>
					<input type="text" name="id" id="id" maxlength="50" autofocus required placeholder="아이디"/>
				</td>
			</tr>
			<tr>
				<td><img class="login_form_img" src="../img/passimg.png" alt="passimg" height="25px" /></td>
				<td>
					<input type="password" name="pass" id="pass" maxlength="50" autofocus required placeholder="비밀번호"/>
				</td>
			</tr>
		</table>
		<br />
		<input type="submit" value="login" />
		<input type="button" value="join" />
	</form>
</div>
</body>
</html>