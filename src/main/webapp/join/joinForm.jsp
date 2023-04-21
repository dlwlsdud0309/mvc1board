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
<h3>joinForm.jsp</h3>
<h4>회원가입</h4>
<div>
	<form action="" method="post">
		<table class="joinTable">
			<tr>
				<td>ID</td>
				<td>
					<input type="text" id="id" name="id" />
					<button type="button">중복확인</button>
				</td>
			</tr>
			<tr>
				<td>PASS</td>
				<td>
					<input type="text" id="pass" name="pass" />
				</td>
			</tr>
			<tr>
				<td>NAME</td>
				<td>
					<input type="text" id="name" name="name" />
				</td>
			</tr>
			<tr>
				<td>ADDRESS</td>
				<td>
					<input type="text" id="addr" name="addr" />
				</td>
			</tr>
			<tr>
				<td>GENDER</td>
				<td>
					<label for="gender"><input type="radio" id="gender" name="gender" value="man" checked />남성</label>
					<label for="gender"><input type="radio" id="gender" name="gender" value="woman" />여성</label>
				</td>
			</tr>
			<tr>
				<td>BIRTHDATE</td>
				<td>
					<input type="text" id="brithdate" name="birthdate" placeholder="YYYY-MM-DD" />
				</td>
			</tr>
			<tr>
				<td>PHONE</td>
				<td>
					<input type="text" id="phone" name="phone" placeholder="010-0000-0000" />
				</td>
			</tr>
			<tr>
				<td>EMAIL</td>
				<td>
					<input type="email" id="email" name="email" placeholder="a@a.com" />
				</td>
			</tr>
		</table>
		<input class="inputButton" type="submit" value="회원가입" />
		<input class="inputButton" type="button" value="취소" onclick="location.href='../login/loginForm.jsp'" />
	</form>
</div>
</body>
</html>