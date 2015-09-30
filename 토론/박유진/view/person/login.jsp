<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
 	<script src="../js/person/person.js" ></script>
 	<script src="../js/util/fblogin.js" ></script>
	<link rel="stylesheet" href="../css/person/person.css">
</head>

<body>
	
	<div id="login-cont">
	<h3>로그인</h3>
		<!-- 입력창 container -->
		<div class="input-cont">
			<span>아이디</span>
			<input type="text" class="form-control" id="id" name="id" placeholder="Email" />
			<span>비밀번호</span>
			<input type="password" class="form-control" id="pw" size="20" placeholder="Password"/>
		</div>
		<!-- 버튼 container -->
		<div class="btn-cont">
			<input type="button" value="로그인" id="loginBtn" class="btn btn-default" />
			<p>
				<input type="button" value="회원가입" id="signupBtn" name="signup" class="btn btn-default left" />
				<input type="button" value="계정찾기" id="findBtn" name="find" class="btn btn-default right" />
			</p>
		</div>
	</div>
	
	<!-- <form action="login.lip" method="post">
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
					<input type="button" value="회원가입" id="signup"/>
					<input type="button" value="계정찾기" id="find"/>
				</td>
			</tr>
		</table>

		<img src="C:/Users/user2/Desktop/페북.jpg" width="25" href="http://www.facebook.com"/>
		<a href="http://www.facebook.com" ><font color="blue" size="3">페이스북으로 로그인</font></a>
	</form>
	
	<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
	페이스북 연동하기
	</fb:login-button> -->

</body>
</html>