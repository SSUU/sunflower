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
				<td align="center">���̵� : <input type="text" id="id"  /></td>
				<td rowspan="3"><input type="submit" value="�α���" class="btn btn-info" style="height:95px; width:80px; "/>
			</tr>
			<tr>
				<td align="center">��й�ȣ : <input type="password" id="pw" size="20"/></td>
			</tr>
			<tr>
				<td align="center">
					<input type="button" value="ȸ������" id="newuser"/>
					<input type="button" value="����ã��" id="find"/>
				</td>
			</tr>
		</table>
	</form>
	
	<fb:login-button scope="public_profile,email,publish_actions" onlogin="checkLoginState();">
	���̽��� �����ϱ�
	</fb:login-button>
	<button id="logoutBtn" >�α׾ƿ�</button>
	<button id="writeBtn" >�۾���</button>

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
			// ���� https://developers.facebook.com/docs/plugins/embedded-posts
			// link �� ���� Ʋ�� �����̸� �ȿö� ��, ���� ! 
			FB.api('/me/feed','post',{message:'test2 �̾��մϴ�...',link:'www.facebook.com'});
    			alert('done');
		});
	});
	
</script>	
</body>
</html>