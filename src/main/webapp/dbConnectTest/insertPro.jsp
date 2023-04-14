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
<h3>insertPro.jsp</h3>
<%
String id=request.getParameter("id");
String pass=request.getParameter("pass");
String name=request.getParameter("name");
String addr=request.getParameter("addr");

//db연결하여 insert
Connection conn=null;
PreparedStatement pstmt=null;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

try{
	Class.forName(driver);
	conn=DriverManager.getConnection(url, user, pw);
	
	//insert작업
	String sql="insert into testmember(id,pass,name,addr) values(?,?,?,?)";
	pstmt=conn.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, pass);
	pstmt.setString(3, name);
	pstmt.setString(4, addr);
	
	//실행
	//pstmt.executeUpdate();
	int resultNum=pstmt.executeUpdate();
	System.out.println("resultNum : "+resultNum);
}catch(Exception e){
	e.printStackTrace();
}finally{
	//나중에 만들어진 것을 먼저 close
	if(pstmt!=null)try{pstmt.close();}catch(Exception e){}
	if(conn!=null)try{conn.close();}catch(Exception e){}
}

response.sendRedirect("insertForm.jsp");

%>
<h4>입력값 확인</h4> <br />
<%=id %>
<%=pass %>
<%=name %>
<%=addr %>
</body>
</html>