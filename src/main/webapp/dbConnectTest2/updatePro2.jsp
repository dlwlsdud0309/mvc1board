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
<h3>updatePro2.jsp</h3>
<%
//String id=(Object)request.getParameter();
String sessionId=(String)session.getAttribute("sessionId");
String name=request.getParameter("name");
String addr=request.getParameter("addr");

Connection conn=null;
PreparedStatement pstmt=null;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, pw);
	
	String sql="update testmember set name=?, addr=? where id=?";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, name);
	pstmt.setString(2, addr);
	pstmt.setString(3, sessionId);
	
	pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}

response.sendRedirect("updateCheck.jsp");
%>

<!-- name과 addr은 정상으로 나온다 -->
<%=name %>
<%=addr %>

</body>
</html>