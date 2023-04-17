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
<!-- <script src="../js/jquery-3.6.1.min.js"></script> -->
</head>
<body>
<h3>updateForm2.jsp</h3>
<form action="updatePro2.jsp">
<!-- id : <input type="text" id="id" name="id" /> <br /> -->
sessionId : <%= session.getAttribute("sessionId") %> <br />

<h4>회원정보 수정</h4>
name : <input type="text" id="name" name="name" /> <br />
address : <input type="text" id="addr" name="addr" /> <br />
<input type="submit" value="update" />
</form>

<!-- <button onclick="gotoInsertForm2();">join</button> -->
<button onclick="location.href='insertForm2.jsp'">join</button>
<button onclick="location.href='deletePro2.jsp'">delete</button>
</body>

<!-- script와 함수 사용 불가, 파일 생성하여 로그아웃처리 해야함 -->
<%-- <script>
	function gotoInsertForm2() {
		//alert("확인");
		<%
			session.removeAttribute("id");
			//response.sendRedirect("insertForm2.jsp");
		%>
		location.href="insertForm2.jsp";
	}
</script> --%>
</html>