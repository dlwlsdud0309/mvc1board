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
<h3>ifTestform</h3>
<h3>좋아하는 색상</h3>
<form action="ifTest.jsp">
	<label for="name">이름</label>
	<input type="text" id="name" name="name"
	placeholder="이름을 입력하세요" autofocus required /> <br />
	<label for="color">색상</label>
	<select name="color" id="color">
		<option value="blue">파랑</option>
		<option value="green">초록</option>
		<option value="red">빨강</option>
		<option value="yellow">노랑</option>
	</select> <br />
	<input type="submit" value="send" />
</form>
</body>
</html>