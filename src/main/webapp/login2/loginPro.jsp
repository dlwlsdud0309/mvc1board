<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
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
<h3>loginPro.jsp</h3>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");

//db접속
String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;

Class.forName(driver);
conn=DriverManager.getConnection(url, user, pw);

String sql="select id,pass from testmember where id=?";
pstmt=conn.prepareStatement(sql);
pstmt.setString(1, id);

rs=pstmt.executeQuery();

while(rs.next()){
	if(id.equals(rs.getString("id")) && pass.equals(rs.getString("pass"))){
		session.setAttribute("sessionId", id);
	}
}

/* Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, pw);

String sql="select id,pass from testmember where id=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs=pstmt.executeQuery(); */
%>

<%=id %>
<%=pass %>
<%=session.getAttribute("sessionId") %>
</body>
</html>