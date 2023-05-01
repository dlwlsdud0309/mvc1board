<%@page import="java.sql.Date"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
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
<h3>selectPro.jsp</h3>
<table border="1" width="100%">
	<tr style="text-align: center; background-color: #d9dddc; font-weight: bold;">
		<td>NO</td>
		<td>ID</td>
		<td>PASS</td>
		<td>NAME</td>
		<td>ADDRESS</td>
		<td>GENDER</td>
		<td>BIRTHDATE</td>
		<td>PHONE</td>
		<td>EMAIL</td>
	</tr>
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
//rs.next();
//System.out.println("rs : "+rs.getString("id"));

while(rs.next()){
	int seq=rs.getInt("seq");
	String id=rs.getString("id"); //String id=rs.getString(1);와 동일함
	String pass=rs.getString("pass");
	String name=rs.getString("name");
	String addr=rs.getString("addr");
	String gender=rs.getString("gender");
	Date birthdate=rs.getDate("birthdate");
	String phone=rs.getString("phone");
	String email=rs.getString("email");
%>
	<tr>
		<td><%=seq %></td>
		<td><%=id %></td>
		<td><%=pass %></td>
		<td><%=name %></td>
		<td><%=addr %></td>
		<td><%=gender %></td>
		<td><%=birthdate %></td>
		<td><%=phone %></td>
		<td><%=email %></td>
	</tr>
<%
}
%>
</table>
<button type="button" onclick="location.href='insertForm.jsp'">글쓰기</button>
<button type="button" onclick="location.href='updateForm.jsp'">수정</button>
<button type="button" onclick="location.href='deleteForm.jsp'">삭제</button>
</body>
</html>