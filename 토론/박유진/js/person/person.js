$(document).ready(function(){
	
	loadPageEvent();
	newUserEvent();
	checkSignUpEvent();
//	checkValidity();
	myinformation()
	findEvent();
	mytorronroom();
	UserOutEvent();
	blackcontroll();
});

function loadPageEvent(){
	$("input[type=button]").click(function(){
		var loadFileName = $(this).attr("id");
		$(".contents").load(tPath.getView(loadFileName), function(){
			checkSignUpEvent();
		});
	});
}

function newUserEvent(){
	//회원가입 
			$("#signupBtn").click(function(){
				$(".contents").load(tPath.getView("agree"),function(){});
			});
}

function UserOutEvent(){
	//회원탈퇴
		$("#byeBtn").click(function(){
		var a = $("#userouttxt").val();
			if(a ==""){
				alert("탈퇴사유를 작성해주세요");
				return;
			}
			if(confirm('정말이지 회원탈퇴를 하실겁니까?'))
				alert("회원탈퇴 되었습니다");
			tPath.goToMain();
		});
		$("#cancelBtn").click(function(){
			alert("메인으로 돌아갑니다");
			tPath.goToMain();
		});
}

function myinformation(){
	// 내 정보 수정
	$("#updateBtn").click(function(){
		var pw = $("#pw").val();
		var pwchk = $("#pwchk").val();
		var nickName = $("#nicktxt").val();
		if(pw == "" || pwchk == ""){
			alert("비밀번호를 입력해주세요");
			return;
		}
		if(pw != pwchk){
			alert("비밀번호가 일치 하지 않습니다.");
			return;
		}
		if(nickName == ""){
			alert("닉네임을 입력해주세요");
			return;
		}else{
			// 닉네임 중복확인 작업
		}
		if(confirm('정말 수정하시겠습니까?')){
			alert("수정완료");
			tPath.goToMain();
		}
	});
	$("#updateNickBtn").click(function(){
		var nickName = $("#nicktxt").val();
		if(nickName != "" ){
			alert("사용가능한 닉네임");
		}else{
			alert("닉네임 입력하시오");
		}
	});
}
function blackcontroll(){
	// 블랙리스트 쓰기 권한 제어
	var blist = $(".blist-suspect").text();
	var rno= $(".blist-roomno").text();
	var count = $(".blist-count").text();
	var badd = "<tr id='bl'><td align='center'>"+blist+
	"</td><td align='center'>"+rno+
	"</td><td align='center'>"+count+
	"</td></tr><tr><td colspan='3' align='center'>" +
	"<input type='button' id='clear' value='블랙리스트 해제'></button></td></tr>";
	
	$("#blackBtn").click(function(){
		$("#blackBtn").hide();
		$("#blistoff").after(badd);

		$("#clear").click(function(){
			$("#bl").hide();
			$("#clear").hide();
		});
	});
}
function findEvent(){
	// 비밀번호 찾기
	$("#findBtn").click(function(){
		$(".contents").load(tPath.getView("find"));
	});
	$("#askbtn").click(function(){
//			var field = $("input[type=text]");
		var data = {
					memail : $("#id").val(),
					mname : $("#name").val()
		}
		if($("#id").val() == ""){
			alert("아이디를 입력해주세요");
			return;
		}
		$.get("../idchk.lip",data,function(result){
				if(result === 'false'){
					var emailStr = $("#id").val(); // input 의 이메일 값 추출 (jquery)
					var format = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
					if(emailStr.search(format) == -1){
					// 형식에 어긋남
					alert("올바른 이메일 형식이 아닙니다.");
					$("#id").val("");
					$("#id").focus(); //해당 input으로 포커스 이동
					return;
					}bid = true;
					alert("등록되지 않은 아이디 입니다.");
					$("#id").focus();
					$("#id").val("");
					return;
				}
				if($("#name").val() != ""){
					$.get("../namechk.lip",data,function(result){
						if(result === 'false'){
							bname = true;
							alert("아이디와 이름이 일치하지 않습니다");
							$("#name").focus();
							$("#name").val("");
							return;
						}else{
							$(".contents").load("../view/person/findresult.jsp");
						}
					});
				}else{
					alert("이름을 입력해주세요");
					return;
				}
		});
//			for(var i=1; i<field.length ; i++){
//			if($(field[i]).val()== ""){
//				alert("빠짐없이 작성해주세요");
//				return;
//			}
//			}
	});
}
function mytorronroom(){
	// 나의 토론방
	$("#mytorronroomBtn").click(function(){
		alert("good");
	});
}


//회원가입 > ID 유효성검사
// false : 중복확인 아무것도 안함	
// bid true : 아이디 중복확인 통과 (사용가능한 아이디)
// bnic true : 아이디 통과, 닉네임 통과 (사용가능한 닉네임)
var bid = false, bnic=false, bname = false;
function checkSignUpEvent(){
	// DAO 작업 하기
	
	$("#idchkBtn").click(function(){
		var chkid = $("#id").val();
		var data = { 
			memail : $("#id").val()
		}
		if(chkid != ""){
			$.get("../idchk.lip",data,function(result){
					if(result === 'false'){
						var emailStr = $("#id").val(); // input 의 이메일 값 추출 (jquery)
						var format = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
						
						if(emailStr.search(format) == -1){
						// 형식에 어긋남
						alert("이메일 형식에 맞게 입력해 주세요");
						$("#id").focus(); //해당 input으로 포커스 이동
						return false;
						}
						bid = true;
						alert("사용가능한 아이디 입니다");
					}else{
						bid = false;
						alert("중복된 아이디가 있습니다");
					}
			});
		}else{
			alert("아이디를 입력해주세요");
			form.memail.focus();
		}
	});
	
	$("#successBtn").click(function(){
		
		if(!bid || !bnic ){
			alert("아이디 및 닉네임 중복 체크를 해주세요"); 
			return;
		}
		
	 	var pwArr = checkValidity();
	 	var pw = $(pwArr[0]).val();
	 	if(pw.length <= 3 ){
	 		alert("비밀번호는 최소 4자이상 작성해주세요 ");
	 		return;
 		}
	 	
	 	if($(pwArr[0]).val() != $(pwArr[1]).val()){
	 		alert("비밀번호를 확인해주세요.");
	 		return;
	 	}
	 	var name = $("#name").val();
	 
//	 	return true;
	 	// DAO 가입 인설트 작업하기
//	 	var form = $("#signup-form");
	 	var text = $("#name").val();
	 	var regexp = /[ㄱ-ㅎ|가-힣a-zA-Z]/; // 한글,영문,특수문자
//        var regexp = /[0-9a-zA-Z.;\-]/; // 숫자,영문,특수문자
//        var regexp = /[0-9]/; // 숫자만
	 	// var regexp = /[a-zA-Z]/; // 영문만
	 	for( var i=0; i<text.length; i++){
	 		if(text.charAt(i) != " " && regexp.test(text.charAt(i)) == false ){
	 			alert("[이름]" +text.charAt(i) + "는 입력불가능한 문자입니다");
	 			$("#name").focus();
	 			$("#name").val("");
	 			return;
	 		}
	 	}
	 	
	 	var data = $("#signup-form").serialize();
	 	$.get("../signup.lip",data,function(){
	 		alert("가입이 완료되었습니다.");
	 		tPath.goToMain();
	 	});
	 	
	});
	
	$("#nickchkBtn").click(function(){
		var chknick = $("#nick").val();
		var data = {
				mnic : $("#nick").val()
		}
		if(chknick != ""){
			$.get("../nickchk.lip",data,function(result){
				if(result === 'false'){
			        var text = $("#nick").val();
			        var regexp = /[0-9ㄱ-ㅎ|가-힣a-zA-Z.;\-]/; // 한글,영문,특수문자
//			        var regexp = /[0-9a-zA-Z.;\-]/; // 숫자,영문,특수문자
//			        var regexp = /[0-9]/; // 숫자만
			        // var regexp = /[a-zA-Z]/; // 영문만
			        for( var i=0; i<text.length; i++){
			            if(text.charAt(i) != " " && regexp.test(text.charAt(i)) == false ){
			             alert(text.charAt(i) + "는 입력불가능한 문자입니다");
			             $("#nick").focus();
			             $("#nick").val("");
			             return false;
			            }
			        }
					bnic = true;
					alert("사용가능한 닉네임 입니다");
				}else{
					bnic = false;
					alert("중복된 닉네임이 있습니다");
				}
			});
		}else{
			alert("닉네임을 입력해주세요");
		}
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
		 	}if($("#pw").val()==""){
		 		form.mpw.focus();
				return;
		 	}if($("#pwchk").val()==""){
		 		alert("비밀번호확인을 입력 바랍니다");
		 		form.pwchk.focus();
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
