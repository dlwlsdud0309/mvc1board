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
<h3>Hello jsp</h3>

<h4>session - setAttribute, getAttribute</h4>
<%
String testId="testidddd";
//session.setAttribute("testId", testId);
application.setAttribute("testId", testId);
%>
<%
//out.println("세션확인 id : "+session.getAttribute("testId"));
out.println("세션확인 id : "+application.getAttribute("testId"));
%>
</body>
</html>