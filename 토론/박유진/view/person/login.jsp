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
	<h3>�α���</h3>
		<!-- �Է�â container -->
		<div class="input-cont">
			<span>���̵�</span>
			<input type="text" class="form-control" id="id" name="id" placeholder="Email" />
			<span>��й�ȣ</span>
			<input type="password" class="form-control" id="pw" size="20" placeholder="Password"/>
		</div>
		<!-- ��ư container -->
		<div class="btn-cont">
			<input type="button" value="�α���" id="loginBtn" class="btn btn-default" />
			<p>
				<input type="button" value="ȸ������" id="signupBtn" name="signup" class="btn btn-default left" />
				<input type="button" value="����ã��" id="findBtn" name="find" class="btn btn-default right" />
			</p>
		</div>
	</div>
	
	<!-- <form action="login.lip" method="post">
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
					<input type="button" value="ȸ������" id="signup"/>
					<input type="button" value="����ã��" id="find"/>
				</td>
			</tr>
		</table>

		<img src="C:/Users/user2/Desktop/���.jpg" width="25" href="http://www.facebook.com"/>
		<a href="http://www.facebook.com" ><font color="blue" size="3">���̽������� �α���</font></a>
	</form>
	
	<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
	���̽��� �����ϱ�
	</fb:login-button> -->

</body>
</html>