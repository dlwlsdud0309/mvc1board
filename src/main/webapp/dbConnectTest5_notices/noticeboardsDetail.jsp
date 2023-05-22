<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");
%>
<%
String num = request.getParameter("no");


String driver = "oracle.jdbc.driver.OracleDriver";
String url = "jdbc:oracle:thin:@localhost:1521:xe";
String user = "hr";
String pw = "123456";

Class.forName(driver);
Connection conn = DriverManager.getConnection(url, user, pw);

//String sql = "select * from noticeboards where seq='"+num+"'"; //num이 String이기 때문에 작은따옴표 사용

//Statement st = conn.createStatement();
//ResultSet rs = st.executeQuery(sql);

String sql = "";

if(num==null){
	System.out.println("null");
	response.sendRedirect("noticeboards.jsp");
	return;
}else {
	System.out.println("sql 정상 작동");
	sql = "select * from noticeboards where seq=?";
}

PreparedStatement pstmt = conn.prepareStatement(sql);
pstmt.setInt(1, Integer.parseInt(num));

ResultSet rs = pstmt.executeQuery();
rs.next();


//System.out.println(rs.getString("title"));
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>my jsp file</title>
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticeboardsDetail.jsp</h3>

<table class="twidth">
	<colgroup>
		<col width="15%"/>
		<col width="35%"/>
		<col width="5%"/>
		<col width="35%"/>
	</colgroup>
	<caption>Detail</caption>
	<tbody>
		<tr>
			<th class="left">글번호</th>
			<td><%=num %></td>
			<th class="left">조회수</th>
			<td><%=rs.getInt("hit") %></td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td><%=rs.getString("writer") %></td>
			<th class="left">작성일</th>
			<td><%=rs.getDate("regdate") %></td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content"><%=rs.getString("content") %></td>
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">첨부</td>
		</tr>
	</tbody>
</table>

</body>
</html>