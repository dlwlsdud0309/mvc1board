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
<script src="../js/jquery-3.6.1.min.js"></script>
</head>
<body>
<h3>updateForm2.jsp</h3>
<form action="updatePro2.jsp">
<!-- id : <input type="text" id="id" name="id" /> <br /> -->
sessionId : <%= session.getAttribute("id") %> <br />

<h4>회원정보 수정</h4>
name : <input type="text" id="name" name="name" /> <br />
address : <input type="text" id="addr" name="addr" /> <br />
<input type="submit" value="update" />
</form>

<button onclick="gotoInsertForm2();">join</button>
<button onclick="location.href='deletePro2.jsp'">delete</button>
<!-- <button type="button">join</button> -->
</body>
<script>
	function gotoInsertForm2() {
		//alert("확인");
		<%
			session.removeAttribute("id");
			//response.sendRedirect("insertForm2.jsp");
		%>
		location.href="insertForm2.jsp";
	}
</script>
</html>