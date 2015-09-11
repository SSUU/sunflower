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
	</form>
	
	<fb:login-button scope="public_profile,email,publish_actions" onlogin="checkLoginState();">
	페이스북 연동하기
	</fb:login-button>
	<button id="logoutBtn" >로그아웃</button>
	<button id="writeBtn" >글쓰기</button>

<script type="text/javascript">

	$(document).ready(function(){
		$("#newuser").click(function(){
			$(".contents").load("newuser.jsp");
		});
		$("#find").click(function(){
			window.open("http://www.naver.com");
		});
		
		// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		$("#writeBtn").click(function(){
			// 참고 https://developers.facebook.com/docs/plugins/embedded-posts
			// link 의 값이 틀린 정보이면 안올라 감, 주의 ! 
			FB.api('/me/feed','post',{message:'test2 미안합니다...',link:'www.facebook.com'});
    			alert('done');
		});
	});
	
</script>	
</body>
</html>