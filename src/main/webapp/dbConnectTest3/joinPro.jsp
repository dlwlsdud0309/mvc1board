<%@page import="javax.naming.PartialResultException"%>
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
<h3>joinPro.jsp</h3>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
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
	
	String sql="insert into testmember(id,pass,name,addr) values(?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pass);
	pstmt.setString(3, name);
	pstmt.setString(4, addr);
	
	int resultNum=pstmt.executeUpdate();
	System.out.println("resultNum : "+resultNum);
}catch(Exception e){
	e.printStackTrace();
}
%>

<!-- 확인ok -->
<%=id %> <br />
<%=pass %> <br />
<%=name %> <br />
<%=addr %> <br />
</body>
</html>