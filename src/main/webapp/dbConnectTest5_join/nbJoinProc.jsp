<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
String birth = request.getParameter("birth");
String islunar = request.getParameter("islunar");
String phone = request.getParameter("phone");
String email = request.getParameter("email");

String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw = "123456";

Class.forName(driver);
Connection conn = null;
PreparedStatement pstmt = null;
conn = DriverManager.getConnection(url, user, pw);

String sql = "insert into nbmember(id,pwd,name,gender,birth,is_lunar,phone,email,regdate) ";
		sql+="values(?,?,?,?,?,?,?,?,sysdate)";
pstmt = conn.prepareStatement(sql);
pstmt.setString(1, id);
pstmt.setString(2, pwd);
pstmt.setString(3, name);
pstmt.setString(4, gender);
pstmt.setString(5, birth);
pstmt.setString(6, islunar);
pstmt.setString(7, phone);
pstmt.setString(8, email);

int cnt = pstmt.executeUpdate();
System.out.println("cnt : "+cnt);

response.sendRedirect("../index.jsp");
%>
<%-- <%=gender %>
<%=birth %>
<%=islunar %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
</head>
<body>
<h3>nbJoinProc.jsp</h3>

</body>
</html>