<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="../js/person/person.js"></script>
<link rel="stylesheet" href="../css/person/signup.css" />

</head>

<body>
	<!-- ȸ������ container  -->
	<div id="signup-cont">
		<h2>���Ʈ ȸ������</h2>
		<form action="../signup.lip" id="signup-form" name="form">
		<table>
			<tbody>
				<tr>
					<td>���̵�</td>
					<td>
						<input type="text" id="id" name="memail" placeholder="ex) lip@lip.com" class="form-control" />
					</td>
					<td>
						<input type="button" value="�ߺ�Ȯ��" id="idchkBtn" class="btn btn-default" />
					</td>
				</tr>
				<tr>
					<td>��й�ȣ</td>
					<td>
						<input type="password" id="pw" name="mpw" placeholder="password" maxlength="10" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>��й�ȣȮ��</td>
					<td>
						<input type="password" id="pwchk" placeholder="password check" maxlength="10" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>�̸�</td>
					<td>
						<input type="text" id="name" name="mname" placeholder="ȫ�浿" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>�г���</td>
					<td>
						<input type="text" id="nick" name="mnic" class="form-control" />
					</td>
					<td>
						<input type="button" id="nickchkBtn" value="�ߺ�Ȯ��" class="btn btn-default" />
					</td>
				</tr>
				<tr>
					<td>����</td>
					<td>
						���� <input type="radio" id="boy" name="mgender" value="b" /> 
			 			���� <input type="radio" id="girl" name="mgender" value="g" />
					</td>
				</tr>
				<tr>
					<td>���ȹ���</td>
					<td>
						����
					</td>
					<td>
						����
					</td>
				</tr>
				<tr>
					<td class="tbBtn" colspan="3">
						<input type="button" value="�Ϸ�" id="successBtn" class="btn btn-default" />
						<input type="button" value="���" id="cancelBtn" class="btn btn-default" />
					</td>
				</tr>
			</tbody>
		</table>
		
			<!-- <div id="dt-contain">
				<b id="bid">���̵� </b>:
					<input type="text" id="id" name="memail" placeholder="ex) lip@lip.com" class="form-control" />
					<input type="button" value="�ߺ�Ȯ��" id="idchkBtn" />
				<b id="bpw">��й�ȣ</b>: 
					<input type="password" id="pw" name="mpw" placeholder="password" maxlength="10" class="form-control" />
				<b id="bpwchk">��й�ȣȮ�� </b>: 
					<input type="password" id="pwchk" placeholder="password check" maxlength="10" class="form-control" /> 
				<b id="bname">�̸� </b>: 
					<input type="text" id="name" name="mname" placeholder="ȫ�浿" class="form-control" />
			 	<b id="bnick">�г���</b>: 
			 		<input type="text" id="nick" name="mnic" class="form-control" />
			 		<input type="button" id="nickchkBtn" value="�ߺ�Ȯ��" />
			 	<b id="bsex">����</b>: 
			 	���� <input type="radio" id="boy" name="mgender" value="b" /> 
			 	���� <input type="radio" id="girl" name="mgender" value="g" />
			 	<b id="bsecure">���ȹ��� </b>: 
			 	<input type="button" value="�Ϸ�" id="successBtn" />
			 	<input type="button" value="���" id="cancelBtn" />
			</div> -->
		</form>
	</div>
</body>
</html>