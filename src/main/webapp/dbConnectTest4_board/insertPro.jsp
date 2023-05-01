<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date"%>
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
String gender=request.getParameter("gender");

//String을 date로 형변환
/* String date=request.getParameter("birthdate");
SimpleDateFormat format=new SimpleDateFormat("yyyy-MM-dd");
Date birthdate=format.parse(date); */
//String strDate=birthdate.format(date);

String birthdate=request.getParameter("birthdate");
Date dateSqlBirthdate=Date.valueOf(birthdate);
//Timestamp tsBirthdate=Timestamp.valueOf(birthdate);

String phone=request.getParameter("phone");
String email=request.getParameter("email");


Connection conn=null;
PreparedStatement pstmt=null;

String driver="oracle.jdbc.driver.OracleDriver";
String url="jdbc:oracle:thin:@localhost:1521:xe";
String user="hr";
String pw="123456";

Class.forName(driver);
conn=DriverManager.getConnection(url, user, pw);

String sql="insert into testmember(seq,id,pass,name,addr,gender,birthdate,phone,email) values(testmember_seq.nextval,?,?,?,?,?,?,?,?)";
pstmt=conn.prepareStatement(sql);

pstmt.setString(1, id);
pstmt.setString(2, pass);
pstmt.setString(3, name);
pstmt.setString(4, addr);
pstmt.setString(5, gender);
//pstmt.setTimestamp(6, tsBirthdate);
pstmt.setDate(6, dateSqlBirthdate);
pstmt.setString(7, phone);
pstmt.setString(8, email);

int resultNum=pstmt.executeUpdate();
System.out.println("resultNum : "+resultNum);
%>
<%=dateSqlBirthdate %>
<%=gender %>

</body>
</html>