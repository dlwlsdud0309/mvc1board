<%@page import="java.sql.ResultSet"%>
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
<h3>loginPro.jsp</h3>
<%
String sessionId=(String)session.getAttribute("id");
String pass=request.getParameter("pass");

Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, pw);
	String sql="select * from testmember";
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	
	while(rs.next()){
		System.out.println(rs.getString("id"));
		if(sessionId.equals(rs.getString("id")) && pass.equals(rs.getString("pass"))){
			session.setAttribute("sessionId", sessionId);
		}
		response.sendRedirect("mainPage.jsp");
	}
}catch(Exception e){
	e.printStackTrace();
}


//세션처리


%>
<%=sessionId %> <br />
<%=pass %> <br />

<%
//리다이렉트
//response.sendRedirect("sessionTestForm2.jsp"); //이 경우 id와 pass값이 null
%>
</body>
</html>