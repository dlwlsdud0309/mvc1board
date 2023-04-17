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
<h3>mainPage.jsp</h3>
<%
if(session.getAttribute("sessionId")==null){
%>
<i>로그인이 필요합니다.</i>
<form action="loginPro.jsp" method="post">
	아이디 : <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" autofocus required /> <br />
	비밀번호 : <input type="text" id="pass" name="pass" placeholder="비밀번호를 입력하세요" autofocus required /> <br />
	<input type="submit" value="login" />
</form>
<%
}else{
%>
<%=session.getAttribute("sessionId") %>님께서 로그인하셨습니다. <br />
<form action="logout2.jsp" method="post">
	<input type="submit" value="logout" />
</form>
<button type="button" onclick="location.href='updateForm2.jsp'">update</button>
<%
}
%>
<button type="button" onclick="location.href='insertForm2.jsp'">join</button>
</body>
</html>