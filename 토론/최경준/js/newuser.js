$(document).ready(function(){
	loginInit();
	myPageInit();
	
});

function myPageInit(){
	$("#mytoronBtn").click(function(){
	$(".contents").load("./contentlist.jsp");
});

	$("#myinformationBtn").click(function(){
		$(".contents").load("./myinformation.jsp", function(){
			// myinformation.jsp 가 로드 된 후 실행	
			myPageInformation();
			
		});
		
	});
	
	$("#useroutBtn").click(function(){
		$(".contents").load("./userout.jsp", function(){
			myPageOutUser();
		});
	});
	$("#blacklistBtn").click(function(){
		$(".contents").load("./blacklist.jsp", function(){
			myPageBlackList();
		});
	});
//	$("#mytoronBtn").click(function(){
//		$(".contents").load("./.jsp");
//	});
}

// 회원탈퇴 모든 이벤트 처리
function myPageOutUser(){
	$("#byeBtn").click(function(){
		var text = $("#userouttxt").val();
		if(text == ""){
			alert("탈퇴 사유를 작성해주세요");
			return;
		}
		alert("회원탈퇴 완료 Bye~");
		goToMain();
	});
	$("#cancelBtn").click(function(){
		goToMain();
	});
}

//정보수정 모든 이벤트 처리
function myPageInformation(){
	$("#chkNickBtn").click(function(){
		var chkNick = $("#nick").val();
		// DAO 작업
		if(chkNick==""){
			alert("닉네임을 입력해주세요");
		}
	});
	$("#cancelBtn").click(function(){
		goToMain();
	});
	$("#updateBtn").click(function(){
		var pw = $("#pw").val();
		var pwchk = $("#pwchk").val();
		var nick = $("#nick").val();
		if(pw == ""){
			alert("비밀번호를 입력해주세요");
			return;
		}
		if(pwchk == ""){
			alert("비밀번호를 입력해주세요");
			return;
		}
		if(nick == ""){
			alert("닉네임을 입력해주세요");
			return;
		}
		alert("수정이 완료되었습니다");
		goToMain();
	});
}
//토론방 모든 이벤트 처리
function myPageToron(){

}
//블랙리스트 모든 이벤트 처리
function myPageBlackList(){
	
	$("#blackBtn").click(function(){
		$("#blackBtn").hide();
		// 실제 DAO 작업을 통해서 추가하기
		// 추가할 때 ID는 고유 아이디로 만들기
		var info = $("span[class=blist-info]");
		var addTag = "";
		for(var i=0; i<info.length; i++){
			addTag += "<td>"+$(info[i]).text()+"</td>";
		}
		addTag += "<td><input type='button' value='해제하기' id='blackBtn0'/></td>";
		
		$("#blist-table").append("<tr id='bltr"+"2"+"'>"+addTag+"</tr>");
		
		// 실제 DAO 권한 제한 풀어주기  
		$("#blackBtn0").click(function(){
			$("#blist-table tr").eq($(this).parent().parent().index()).remove();
		});
	});
	
	$("#whiteBtn").click(function(){
		alert("쓰기 권한 부여완료");
	});
}


function loginInit(){
	//아이디 중복확인
	$("#chkIdBtn").click(function(){
		var chkid = $("#id").val();
		if(chkid != ""){
			// DAO 작업 하기
			alert("사용가능");
		}else{
			alert("아이디를 입력해주세요");
		}
	});
	$("#chkNickBtn").click(function(){
		var chkNickBtn = $("#nick").val();
		if(chkNickBtn == ""){
			// DAO 작업 하기
			alert("닉네임을 입력해주세요");
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
		goToMain();
	});
	
	$("#cancelBtn").click(function(){
		$(".contents").load("login.jsp");
	});
}
	
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
