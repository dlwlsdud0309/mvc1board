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


/* Class.forName(driver);
Connection conn=DriverManager.getConnection(url, user, pw);

String sql="select id,pass from testmember where id=?";
PreparedStatement pstmt=conn.prepareStatement(sql);
pstmt.setString(1, id);

ResultSet rs=pstmt.executeQuery(); */

String dbPass="";
int x=-1;
String msg="";

if(rs.next()){
	//if(id.equals(rs.getString("id")) && pass.equals(rs.getString("pass"))){
	//	session.setAttribute("sessionId", id);
	//}
	
	//rs.next()가 true라면 칼럼 id가 존재한다는 의미
	dbPass=rs.getString("pass");
	if(dbPass.equals(pass)){
		x=1;
	}else{ //pass불필치
		x=0;
	}
}else{
	System.out.println("id 불일치, input id : "+id);
	x=-1;
}
System.out.println("x : "+x);


//x값으로 전송위치를 결정
if(x==1){ //id와 pass 전부 일치, 로그인 성공
	session.setAttribute("sessionId", id);
	//msg="../index.jsp";
	msg="checkLogin.jsp";
}else if(x==0){ //pass 불일치
	msg="loginForm.jsp?msg=0";
}else{ //id와 pass 전부 불일치
	msg="loginForm.jsp?msg=-1";
}
response.sendRedirect(msg);
%>

<%-- <%=id %>
<%=pass %>
<%=session.getAttribute("sessionId") %> --%>
</body>
</html>