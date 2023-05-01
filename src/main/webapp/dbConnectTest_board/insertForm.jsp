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
<h3>insertForm.jsp</h3>
<form action="insertPro.jsp">
ID : <input type="text" id="id" name="id" /> <br />
PASS : <input type="text" id="pass" name="pass" /> <br />
NAME : <input type="text" id="name" name="name" /> <br />
ADDR : <input type="text" id="addr" name="addr" /> <br />
<input type="submit" value="insert" />
<button type="button" onclick="location.href='updateForm.jsp'">수정</button>
<button type="button" onclick="location.href='deleteForm.jsp'">삭제</button>
<button type="button" onclick="location.href='selectPro.jsp'">목록</button>
</form>
</body>
</html>