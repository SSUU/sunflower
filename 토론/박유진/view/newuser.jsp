<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script src="//code.jquery.com/jquery-1.11.3.min.js" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" />
	<link rel="stylesheet" src="../css/newuser.css" />
</head>
<body>

<div id="dt-contain">
	<h2> ���Ʈ ȸ������  </h2>
	<b id="bid">���̵� </b>:<font size="2"></font> : <input type="text" id="id" placeholder="ex) lip@lip.com"/><input type="button" value="�ߺ�Ȯ��" id="chkIdBtn"/> <br /><br />
	<b id="bpw">��й�ȣ </b>: <input type="password" id="pw"/> <br /> <br />
	<b id="bpwchk">��й�ȣȮ�� </b>: <input type="password" id="pwchk" /> <br /><br />
	<b id="bname">�̸� </b>: <input type="text" id="name" /> <br />  <br />
	<b id="bnick">�г��� </b>: <input type="text" id="nick" /> <br />  <br />
	<b id="bsex">���� </b>: ���� <input type="radio" id="boy" name="1" value="b"/> ���� <input type="radio" id="girl" name="1" value="g"/><br /> <br />
	<b id="bsecure">���ȹ���  </b>: <br /><br />
	<input type="button" value="�Ϸ�" id="successBtn"/><input type="button" value="���" id="cancelBtn"/>
</div>

<script src="../js/newuser.js" />

</body>

</html>