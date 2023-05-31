<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String birth = request.getParameter("birth");
String islunar = request.getParameter("islunar");
String phone = request.getParameter("phone");
String email = request.getParameter("email");

response.sendRedirect("../index.jsp");
%>
<%-- <%=gender %>
<%=birth %>
<%=islunar %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>nbJoinProc.jsp</h3>

</body>
</html>