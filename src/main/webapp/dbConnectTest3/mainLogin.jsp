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
<h3>mainLogin.jsp</h3>

<%
if(session.getAttribute("sessionId")!=null){
%>
	<%=session.getAttribute("sessionId") %>님께서 로그인하셨습니다. <br />
	<button type="button" onclick="location.href='logoutPro.jsp'">logout</button>
	<button type="button" onclick="location.href='myPage.jsp'">mypage</button>
<%
}else{
%>
<form action="loginPro.jsp" method="post">
id : <input type="text" id="id" name="id" /> <br />
pass : <input type="text" id="pass" name="pass" /> <br />
<input type="submit" value="login" />
</form>

<button type="button" onclick="location.href='join.jsp'">join</button>
<%
}
%>

</body>
</html>