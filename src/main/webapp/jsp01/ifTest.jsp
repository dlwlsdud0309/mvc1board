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
<h3>ifTest</h3>
<%
String n=request.getParameter("name");
String c=request.getParameter("color");
%>
<%=n%> <br />
<%=c%> <br />
<h4>선택한 색상 이미지</h4>
<img alt="" src="../img/<%=c%>.png">

<h4>영어를 한글로 출력하기</h4>
<%
String strCol="";
if(c.equals("blue")){
	strCol="파랑";
}else if(c.equals("green")){
	strCol="초록";
}else if(c.equals("red")){
	strCol="빨강";
}else if(c.equals("yellow")){
	strCol="노랑";
}
%>

<h3>
당신이 선택한 색상은 <i><%=strCol %></i>입니다.
</h3>
</body>
</html>