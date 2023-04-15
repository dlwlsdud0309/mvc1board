<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
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
<h3>deletePro</h3>
<%
String id=request.getParameter("id");

Connection conn=null;
PreparedStatement pstmt=null;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, pw);
	
	//delete
	String sql="delete from testmember where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, id);
	
	pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}

response.sendRedirect("deleteForm.jsp");
%>
<%=id %>
</body>
</html>