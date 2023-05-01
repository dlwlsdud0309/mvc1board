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
GENDER : <label><input type="radio" id="gender" name="gender" value="F" checked="checked"/>여성</label>
<label><input type="radio" id="gender" name="gender" value="M" />남성</label>
<br />
BIRTHDATE : <input type="text" id="birthdate" name="birthdate" placeholder="1980-01-01" /> <i>예) 1980-01-01</i> <br />
PHONE : <input type="text" id="phone" name="phone" placeholder="010-1111-2222" /> <i>예) 010-1111-2222</i> <br />
EMAIL : <input type="email" id="email" name="email" placeholder="a@a.com" /> <i>예) a@a.com</i> <br />
<input type="submit" value="insert" />
<button type="button" onclick="location.href='updateForm.jsp'">수정</button>
<button type="button" onclick="location.href='deleteForm.jsp'">삭제</button>
<button type="button" onclick="location.href='selectPro.jsp'">목록</button>
</form>
</body>
</html>