<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>관리자 로그인</title>
<style type="text/css">
	#admin-cont {
		width: 600px;
		margin: 0px auto;
		background-color: red;
	}
	
	#admin-cont div, table {
		width: 600px;
	}
	
	#admin-cont td:first-child {
		width: 100px;
	}
	#admin-cont td:last-child {
		width: 500px;
	}
	
</style>
</head>

<body>
	<!-- 관리자 conatiner -->
	<div id="admin-cont">
		<div>
			<table>
				<thead>
					<th colspan="2"> Torront 관리자 로그인</th>
				</thead>
				<form action="./adminlogin.lip" method="post">
				<tbody>
					<tr>
						<td>아이디</td>
						<td><input type="text" id="adminid" name="id"/></td>
					</tr>
					<tr>
						<td>비밀번호</td>
						<td><input type="text" id="adminpw" name="pw"/></td>
					</tr>
					<tr><td><input type="submit" id="adminloginBtn" /></td></tr>
				</tbody>
				</form>
			</table>
		</div>
	</div>

</body>
</html>