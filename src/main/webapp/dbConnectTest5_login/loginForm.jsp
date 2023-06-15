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
<h3>loginForm.jsp</h3>
<div id="wrap">
	<form action="loginProc.jsp" method="post" name="logininfo"
	onsubmit="return checkLoginButton();"
	>
		<img src="../img/loginimg.png" alt="login_img" id="wel_img" height="250" />
		<br /> <br />
		<table class="loginTable">
			<tr>
				<td><img class="login_form_img" src="../img/idimg.png" alt="idimg" height="20px" /></td>
				<td>
					<input type="text" name="id" id="id" maxlength="50" placeholder="아이디" />
				</td>
			</tr>
			<tr>
				<td><img class="login_form_img" src="../img/passimg.png" alt="passimg" height="25px" /></td>
				<td>
					<input type="password" name="pass" id="pass" maxlength="50" placeholder="비밀번호" />
				</td>
			</tr>
		</table>
		<br />
		<input class="inputButton" type="submit" value="login" />
		<input class="inputButton" type="button" value="join" />
	</form>
</div>

<script>
	function checkLoginButton(){
		//alert("check");
		input=eval("document.logininfo")
		alert(input.pass.value);
		
		return false;
	}
</script>
</body>
</html>