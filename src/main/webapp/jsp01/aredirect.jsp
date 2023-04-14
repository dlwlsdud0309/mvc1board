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
<h3>Aredirect</h3>
<%response.sendRedirect("bredirect.jsp");%>
<!-- aredirect.jsp 접속 시 바로 bredirect.jsp로 이동됨
redirect란 제어권이 완전히 넘어간 것을 의미함 -->
</body>
</html>