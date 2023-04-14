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
<h3>sessionTestForm2.jsp</h3>

<%
if(session.getAttribute("id")==null){
%>

<form action="sessionTest2.jsp" method="post">
	아이디 : <input type="text" id="id" name="id" placeholder="아이디를 입력하세요" /> <br />
	비밀번호 : <input type="text" id="pass" name="pass" placeholder="비밀번호를 입력하세요" /> <br />
	<input type="submit" value="login" />
</form>
<%
}else{
%>
<form action="logout.jsp" method="post">
	<input type="submit" value="logout" />
	<%=session.getAttribute("id") %>님께서 로그인하셨습니다. <br />
</form>
<%
}
%>


<h4>세션확인</h4>
<%
out.println("세션확인 id : "+session.getAttribute("id"));
%>
</body>
</html>