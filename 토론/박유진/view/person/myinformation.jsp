<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>my page</title>
<script src="../js/person/person.js" ></script>
</head>
<body>
<div id="dt-contain">
	<h2> 내 정보 관리 </h2>
	<b id="bid">아이디 : <br /><br />
	<b id="bname">이름 </b>:  <br />  <br />
	<b id="bpw">비밀번호 </b>: <input type="password" id="pw"/> <br /> <br />
	<b id="bpwchk">비밀번호확인 </b>: <input type="password" id="pwchk" /> <br /><br />
	<b id="bnick">닉네임 </b>: <input type="text" id="nicktxt" /><input type="button" value="중복확인" id="updateNickBtn"/> <br />  <br />
	<b id="bsex">성별 </b>: 남성   <br /> <br />
	<input type="button" value="수정" id="updateBtn"/><input type="button" value="취소" id="cancelBtn"/>
</div>

</body>
</html>