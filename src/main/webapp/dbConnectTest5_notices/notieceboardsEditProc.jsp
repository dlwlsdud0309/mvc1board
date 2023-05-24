<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%String num = request.getParameter("no"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>notieceboardsEditProc.jsp</h3>
<!-- 전달된 value값을 받아 데이터 베이스에서 해당 글을 수정,
페이지 Detail로 이동하여 수정된 상태를 확인하기 -->
<%=num %>
</body>
</html>