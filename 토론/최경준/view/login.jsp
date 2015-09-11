<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
 	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
 	<script src="../js/fblogin.js" ></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>

<body>

	<form action="loginPro.lip" method="post">
		<table border="2">
			<tr>
				<td align="center">아이디 : <input type="text" id="id"  /></td>
				<td rowspan="3"><input type="submit" value="로그인" class="btn btn-info" style="height:95px; width:80px; "/>
			</tr>
			<tr>
				<td align="center">비밀번호 : <input type="password" id="pw" size="20"/></td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" value="회원가입" id="newuser"/>
					<input type="button" value="계정찾기" id="find"/>
				</td>
			</tr>
		</table>

		<img src="C:/Users/user2/Desktop/페북.jpg" width="25" href="http://www.facebook.com"/>
		<a href="http://www.facebook.com" ><font color="blue" size="3">페이스북으로 로그인</font></a>
	</form>
	
	<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
	페이스북 연동하기
	</fb:login-button>

<script type="text/javascript">

	$(document).ready(function(){
		$("#newuser").click(function(){
			$(".contents").load("agree.jsp");
		});
		$("#find").click(function(){
			$(".contents").load("find.jsp");
		});
	$.get("http://www.naver.com",data,function(){
		alert("2")});
	});
	
</script>	
</body>
</html>