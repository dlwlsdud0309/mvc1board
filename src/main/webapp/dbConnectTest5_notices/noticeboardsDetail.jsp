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
<link rel="stylesheet" href="../css/nstyle.css" />
</head>
<body>
<h3>noticeboardsDetail.jsp</h3>

<table class="twidth" border="1">
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
			<td>1</td>
			<th class="left">조회수</th>
			<td>100</td>
		</tr>
		<tr>
			<th class="left">작성자</th>
			<td>asd123</td>
			<th class="left">작성일</th>
			<td>2099-99-99</td>
		</tr>
		<tr>
			<th class="left">내용</th>
			<td colspan="3" id="content">내용입력</td>
		</tr>
		<tr>
			<th class="left">첨부</th>
			<td colspan="3" id="addfile">첨부</td>
		</tr>
	</tbody>
</table>

</body>
</html>