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
	<!-- 회원가입 container  -->
	<div id="signup-cont">
		<h2>토론트 회원가입</h2>
		<form action="../signup.lip" id="signup-form" name="form">
		<table>
			<tbody>
				<tr>
					<td>아이디</td>
					<td>
						<input type="text" id="id" name="memail" placeholder="ex) lip@lip.com" class="form-control" />
					</td>
					<td>
						<input type="button" value="중복확인" id="idchkBtn" class="btn btn-default" />
					</td>
				</tr>
				<tr>
					<td>비밀번호</td>
					<td>
						<input type="password" id="pw" name="mpw" placeholder="password" maxlength="10" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>비밀번호확인</td>
					<td>
						<input type="password" id="pwchk" placeholder="password check" maxlength="10" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>이름</td>
					<td>
						<input type="text" id="name" name="mname" placeholder="홍길동" class="form-control" />
					</td>
				</tr>
				<tr>
					<td>닉네임</td>
					<td>
						<input type="text" id="nick" name="mnic" class="form-control" />
					</td>
					<td>
						<input type="button" id="nickchkBtn" value="중복확인" class="btn btn-default" />
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						남성 <input type="radio" id="boy" name="mgender" value="b" /> 
			 			여성 <input type="radio" id="girl" name="mgender" value="g" />
					</td>
				</tr>
				<tr>
					<td>보안문자</td>
					<td>
						ㅁㅁ
					</td>
					<td>
						ㅁㅁ
					</td>
				</tr>
				<tr>
					<td class="tbBtn" colspan="3">
						<input type="button" value="완료" id="successBtn" class="btn btn-default" />
						<input type="button" value="취소" id="cancelBtn" class="btn btn-default" />
					</td>
				</tr>
			</tbody>
		</table>
		
			<!-- <div id="dt-contain">
				<b id="bid">아이디 </b>:
					<input type="text" id="id" name="memail" placeholder="ex) lip@lip.com" class="form-control" />
					<input type="button" value="중복확인" id="idchkBtn" />
				<b id="bpw">비밀번호</b>: 
					<input type="password" id="pw" name="mpw" placeholder="password" maxlength="10" class="form-control" />
				<b id="bpwchk">비밀번호확인 </b>: 
					<input type="password" id="pwchk" placeholder="password check" maxlength="10" class="form-control" /> 
				<b id="bname">이름 </b>: 
					<input type="text" id="name" name="mname" placeholder="홍길동" class="form-control" />
			 	<b id="bnick">닉네임</b>: 
			 		<input type="text" id="nick" name="mnic" class="form-control" />
			 		<input type="button" id="nickchkBtn" value="중복확인" />
			 	<b id="bsex">성별</b>: 
			 	남성 <input type="radio" id="boy" name="mgender" value="b" /> 
			 	여성 <input type="radio" id="girl" name="mgender" value="g" />
			 	<b id="bsecure">보안문자 </b>: 
			 	<input type="button" value="완료" id="successBtn" />
			 	<input type="button" value="취소" id="cancelBtn" />
			</div> -->
		</form>
	</div>
</body>
</html>