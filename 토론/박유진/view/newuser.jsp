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
	<h2> 토론트 회원가입  </h2>
	<b id="bid">아이디 </b>:<font size="2"></font> : <input type="text" id="id" placeholder="ex) lip@lip.com"/><input type="button" value="중복확인" id="chkIdBtn"/> <br /><br />
	<b id="bpw">비밀번호 </b>: <input type="password" id="pw"/> <br /> <br />
	<b id="bpwchk">비밀번호확인 </b>: <input type="password" id="pwchk" /> <br /><br />
	<b id="bname">이름 </b>: <input type="text" id="name" /> <br />  <br />
	<b id="bnick">닉네임 </b>: <input type="text" id="nick" /> <br />  <br />
	<b id="bsex">성별 </b>: 남성 <input type="radio" id="boy" name="1" value="b"/> 여성 <input type="radio" id="girl" name="1" value="g"/><br /> <br />
	<b id="bsecure">보안문자  </b>: <br /><br />
	<input type="button" value="완료" id="successBtn"/><input type="button" value="취소" id="cancelBtn"/>
</div>

<script src="../js/newuser.js" />

</body>

</html>