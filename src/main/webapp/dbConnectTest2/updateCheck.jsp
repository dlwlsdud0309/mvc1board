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
<h3 style="text-decoration: line-through; color:#d3d3d3;">updateCheck</h3>
<h3>MyPage</h3>
<h3>회원정보 확인</h3>
<%=session.getAttribute("sessionId") %> <br />

<%
//String name=request.getParameter("name");
//String addr=request.getParameter("addr");

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
			session.setAttribute("name", rs.getString("name"));
			session.setAttribute("addr", rs.getString("addr"));
		}
	}
}catch(Exception e){
	e.printStackTrace();
}

%>
<!-- update는 정상작동 하나 name과 addr는 null값으로 확인됨 -->
<%-- <%=name %> <br /> 
<%=addr %> <br /> --%>

<%=session.getAttribute("name") %> <br />
<%=session.getAttribute("addr") %> <br />
<button type="button" onclick="location.href='insertForm2.jsp'">join</button>
<button type="button" onclick="location.href='mainPage.jsp'">main</button>
<button type="button" onclick="location.href='updateForm2.jsp'">update</button>
</body>
</html>