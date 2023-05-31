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
<h3>nbJoin.jsp</h3>
<!-- noticeboards와 join할 테이블 nbmember 생성 -->
<form action="nbJoinProc.jsp">
	아이디 : <input type="text" name="id" placeholder="아이디를 입력하세요" autofocus required /> <br />
	비밀번호 : <input type="text" name="pwd" placeholder="비밀번호를 입력하세요" autofocus required /> <br />
	이름 : <input type="text" name="name" placeholder="이름을 입력하세요" autofocus required /> <br />
	성별 :
	<select name="gender" id="gender">
		<option value="남성">남성</option>
		<option value="여성">여성</option>
	</select> <br />
	생년월일 : <input type="date" name="birth" /> <br />
	<input type="radio" name="islunar" name="solar" checked /> 양력
	<input type="radio" name="islunar" name="islunar" /> 음력 <br />
	핸드폰 번호 : <input type="tel" name="phone" placeholder="예) 010-1234-5678"/> 예) 010-1234-5678 <br />
	이메일 : <input type="email" name="email" /> <br />
	
	<input type="submit" value="확인" />
</form>
</body>
</html>