<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>

<%
Connection conn=null;
PreparedStatement pstmt=null;
ResultSet rs=null;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
conn=DriverManager.getConnection(url, user, pw);

//select 작업
String sql="select * from testmember";
pstmt=conn.prepareStatement(sql);

//실행
rs=pstmt.executeQuery();
rs.next();
System.out.println("rs : "+rs.getString("id"));

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>selectPro.jsp</h3>
<table border="1" width="50%">
	<tr>
		<td>ID</td>
		<td>PASS</td>
		<td>NAME</td>
		<td>ADDRESS</td>
		<!-- <td>GENDER</td>
		<td>BIRTHDATE</td>
		<td>PHONE</td>
		<td>EMAIL</td> -->
	</tr>
	<tr>
		<td>id</td>
		<td>pass</td>
		<td>name</td>
		<td>addr</td>
	</tr>
</table>
</body>
</html>