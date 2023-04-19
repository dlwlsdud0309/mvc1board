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
<h3>myPage.jsp</h3>
<br />
<br />
<h4><%=session.getAttribute("sessionId") %>님의 마이페이지</h4>
<%
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
		if(session.getAttribute("sessionId").equals(rs.getString("id"))){
			session.setAttribute("sessionName", rs.getString("name"));
			session.setAttribute("sessionAddr", rs.getString("addr"));
		}
	}
}catch(Exception e){
	e.printStackTrace();
}
%>

id : <%=session.getAttribute("sessionId") %> <br />
name : <%=session.getAttribute("sessionName") %> <br />
addr : <%=session.getAttribute("sessionAddr") %> <br />

<button type="button" onclick="location.href='mainLogin.jsp'">main</button>
<button type="button" onclick="location.href='update.jsp'">update</button>
<button type="button" onclick="location.href='logoutPro.jsp'">logout</button>
<button type="button" onclick="location.href='deletePro.jsp'">delete</button>
</body>
</html>