<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
#dt-contain {
	width: 940px;
	margin: 0px auto;
}

</style>
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

<script type="text/javascript">

	$(document).ready(function(){
		
		$("#chkIdBtn").click(function(){
			var chkid = $("#id").val();
			if(chkid != ""){
				// DAO 작업 하기
				alert("사용가능");
			}else{
				alert("아이디를 입력해주세요");
			}
		});
		$("#successBtn").click(function(){
			
		 	var pwArr = checkValidity();
		 	
		 	if($(pwArr[0]).val() != $(pwArr[1]).val()){
		 		alert("비밀번호를 확인해주세요.");
		 		return;
		 	}
		 	
		 	// DAO 가입 인설트 작업하기
			alert("가입이 완료되었습니다.");
		});
		$("#cancelBtn").click(function(){
			$(".contents").load("login.jsp");
		});
	});
	
	function checkValidity(){
		var chkArr = $("input[type=text][class!=search-box]");
		var chkPwArr = $("input[type=password]");
		var chkSexArr = $("input[type=radio]");
		
		for(var i=0; i<chkArr.length; i++){
			 if($(chkArr[i]).val() == ""){
				alert($("#b"+$(chkArr[i]).attr("id")).text()+"를 입력해주세요.");
				return;
			} 
		}
		
		for(var i=0; i<chkPwArr.length; i++){
			 if($(chkPwArr[i]).val() == ""){
				alert($("#b"+$(chkPwArr[i]).attr("id")).text()+"를 입력해주세요.");
				return;
			}
			 
		}
		var bSex = false;
		for(var i =0; i<chkSexArr.length; i++){
			if(chkSexArr[i].checked){
				bSex = chkSexArr[i].checked;
			}
		}
		
		if(!bSex){
			alert("성별 선택해주세요.");
			return;
		}
		
		return chkPwArr;
	}

</script>

</body>

</html>