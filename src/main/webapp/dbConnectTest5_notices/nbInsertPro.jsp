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
<%
String title = request.getParameter("title");
String content = request.getParameter("content");

//db연결하여 insert
Connection conn = null;
PreparedStatement pstmt = null;

String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw = "123456";

Class.forName(driver);
conn = DriverManager.getConnection(url, user, pw);

String sql = "insert into noticeboards(seq, title, writer, content, regdate, hit)";
		sql+= " values((select max(seq)+1 from noticeboards)";
		sql+= ", ?, '임의작성자', ?, systimestamp, 0)";
pstmt = conn.prepareStatement(sql);

pstmt.setString(1, title);
pstmt.setString(2, content);

int resultNum = pstmt.executeUpdate();
System.out.println("resultNum : "+resultNum);

response.sendRedirect("noticeboards.jsp");
%>

<%-- <%=title %> <br />
<%=content %> --%>
</body>
</html>