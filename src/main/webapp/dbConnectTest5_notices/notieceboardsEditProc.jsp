<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String num = request.getParameter("no");
String title = request.getParameter("title");
String content = request.getParameter("content");

String driver = "oracle.jdbc.Driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw = "123456";

Class.forName(driver);
Connection conn = null;
conn = DriverManager.getConnection(url, user, pw);

//String sql = "select * from noticeboards where seq=?";

PreparedStatement pstmt = null;
pstmt = conn.prepareStatement(sql);

pstmt.setInt(1, Integer.parseInt(num));
pstmt.setString(2, title);
pstmt.setString(3, content);

ResultSet rs = null;
rs = pstmt.executeQuery();
//rs.next();
%>
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