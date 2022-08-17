<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" name="login">
<table border="1" align=center style="text-align:center;width:400px">
	<tr>
		<td colspan=2><b>로그인 페이지</b></td>
	</tr>
	<tr>
		<td>아이디 : </td>
		<td><input id="id" name="id"></td>
	</tr>
	<tr>
		<td>비밀번호 : </td>
		<td><input id="pass" name="pass"></td>
	</tr>
	<tr>
		<td colspan=2>
			<a href="javascript:login.submit();">로그인</a>
			<a href="#">다시작성</a>
		</td>
	</tr>
</table>
</form>
</body>
</html>