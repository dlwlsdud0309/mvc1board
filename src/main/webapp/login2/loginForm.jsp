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
<h3>loginForm.jsp</h3>
<form action="loginPro.jsp" method="post" name="logininfo"
onsubmit="return checkLogin();">
ID : <input type="text" id="id" name="id" /> <br />
PASS : <input type="password" id="pass" name="pass" /> <br />
<input type="submit" value="login" />
<input type="button" value="join" onclick="joinForm();"/>
</form>
<%
String sendMsg=request.getParameter("msg");
String code1="<tr><td colspan='2' style='text-align:center;'><br><span style='font-weight: bold;'>";
String code2="</span></tr></td>";

if(sendMsg!=null && sendMsg.equals("-1")){
	out.print(code1+"아이디 확인"+code2);
}else if(sendMsg!=null && sendMsg.equals("0")){
	out.print(code1+"비밀번호 확인"+code2);
}
%>

<script>
	function joinForm(){
		location.href="../join2/joinForm.jsp";
	}
	
	function checkLogin(){ //input태그의 name 사용
		var objid={logininfo:logininfo.id.value};
		var objpass={logininfo:logininfo.pass.value};
		var property="logininfo";
		
		//alert(objid[property]);
		//alert(objpass["logininfo"]);
		
		if(!objid[property] || objid[property]==""){
			alert("아이디를 입력하세요")
			return false; //login을 눌러도 다음창으로 이동하지 않음
		}
		else if(!objpass[property] || objpass==""){
			alert("비밀번호를 입력하세요")
			return false;
		}
		return true;
	}
</script>
</body>
</html>