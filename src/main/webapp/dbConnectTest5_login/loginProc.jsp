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
String id = request.getParameter("id");
String pass = request.getParameter("pass");

//db접속
String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw = "123456";

Class.forName(driver);
Connection conn = DriverManager.getConnection(url, user, pw);

String sql = "select id,pwd from nbmember where id=?";

PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs = pstmt.executeQuery();
rs.next();
System.out.println("id : "+rs.getString("id")+" :: "+"pw : "+rs.getString(2));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>loginProc.jsp</h3>
</body>
</html>