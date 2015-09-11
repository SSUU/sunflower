$(document).ready(function(){

		$("#chkIdBtn").click(function(){
			var chkid = $("#id").val();
			if(chkid != ""){
				// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
				// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
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
			// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
			// ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
		 	// DAO 가입 인설트 작업하기
			alert("가입이 완료되었습니다.");
			goToMain();
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
