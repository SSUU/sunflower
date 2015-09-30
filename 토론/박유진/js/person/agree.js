$(document).ready(function(){
	agree();
});

function agree(){
	//이용약관 동의
	$("#checkall").click(function(){
		if(form1.agree1.checked == false && form1.agree2.checked == false){
			$("#cb1").click();
			$("#cb2").click();
		}
	});
 		
 		$("#agreeBtn").click(function(){
 			if(form1.agree1.checked == false){
 	 			alert("첫번째 약관에 동의해주세요.");
 	 			form1.agree1.focus();
 	 			return;
 	 		}else if(form1.agree2.checked == false){
 	 			alert("두번째 약관에 동의해주세요.");
 	 			form1.agree2.focus();
 	 			return;
 	 		}
 			if(form1.agree1.checked && form1.agree2.checked == true){
 				$(".contents").load(tPath.getView("signup"));
 			}
 		});
 		$("#noagreeBtn").click(function(){
 			if(confirm('미동의 시 가입이 불가능합니다'))
 			tPath.goToMain();
 			
 		});
}	
