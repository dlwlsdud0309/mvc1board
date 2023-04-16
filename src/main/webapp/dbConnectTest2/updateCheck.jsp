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
<h3>updateCheck</h3>
<h3>회원정보 수정된 내용 확인</h3>
<%=session.getAttribute("id") %> <br />

<%
String name=request.getParameter("name");
String addr=request.getParameter("addr");
%>

<%=name %> <br /> <!-- update는 정상작동 하나 name과 addr는 null값으로 확인됨 -->
<%=addr %> <br />

<button type="button" onclick="location.href='insertForm2.jsp'">join</button>
</body>
</html>