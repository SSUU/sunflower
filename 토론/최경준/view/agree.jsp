<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>new member</title>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<style type="text/css">
.btn1{
background-color: green;
border-radius:25px;
color: white;
font-style: oblique;
}
.btn2{
background-color: green;
border-radius:25px;
color: white;
font-style: oblique;
}
</style>
</head>
<body  background="./back.jpg">
<form name="form1">
<table align="center">
<tr><td><font size="5" style="">약관동의<hr></font></td></tr>
<tr><td><textarea rows="15" cols="75" id="agree11"  disabled="disabled">제 1조 (목 적)

이 서비스 이용약관(이하 “약관”이라 합니다)은 SK커뮤니케이션즈㈜(이하 “회사”라 합니다)가 제공하는 서비스와 관련하여 회사와 이용 고객(또는 회원) 간에 서비스의 이용 조건 및 절차, 회사와 회원 간의 권리, 의무 및 책임 사항 기타 필요한 사항을 규정함을 목적으로 합니다.

제 2 조 (용어의 정의)

이 약관에서 사용하는 용어의 정의는 다음 각호와 같으며, 정의되지 않은 용어에 대한 해석은 관계법령 및 서비스별 안내에서 정하는 바에 따릅니다.
1)서비스 : 이용 고객 또는 회원이 PC, TV, 휴대형 단말기 등 각종 유무선 기기 또는 프로그램을 통하여 이용할 수 있도록 회사가 제공하는 모든 인터넷 서비스를 말하며, 회사가 공개한 API를 이용하여 제3자가 개발 또는 구축한 프로그램이나 서비스를 통하여 이용 고객 또는 회원에게 제공되는 경우를 포함합니다.
2)회원 : 이 약관에 동의하고 회사와 이용 계약을 체결하여, 회사가 제공하는 서비스를 사용하는 자를 말합니다.
3)이용고객 : 회사의 서비스를 이용하기 위하여 회사와 이용계약을 체결하려고 하는 자를 말합니다.
4)회원정보 : 회사가 이용고객에게 회원가입 신청양식(이하 “신청양식"이라 합니다)에 기재를 요청하는 이용고객의 개인정보를 말합니다.
</textarea></td></tr>

<tr><td>첫번째 약관에 동의합니다<input type="checkbox" name="agree1" id="cb1" value="agree1" ></td></tr>
<tr><td><textarea rows="15" cols="75" id="agree22" disabled="disabled">제 3 조 (약관의 효력 및 변경)
1)이 약관은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력이 발생합니다.
2)회사는 약관의 규제에 관한 법률, 위치정보보호법, 개인정보보호법, 전자상거래 등에서의 소비자보호에 관한 법률, 정보통신망 이용촉진 및 정보보호 등에 관한 법률 등 관계법령에 위배되지 않는 범위 내에서 이 약관을 개정할 수 있습니다.
3)회사는 약관을 개정할 경우 그 개정이유 및 적용일자를 명시하여 현행 약관과 함께 적용일자 10일전부터 적용일 전일까지 제1항의 방법으로 공지합니다. 다만, 회원의 권리 또는 의무에 관한 중요한 규정의 변경은 최소한 30일전에 공지하고 개정약관을 회원이 등록한 메일, SMS 등으로 발송하여 통지합니다.
4)회사가 제3항에 따라 개정약관을 공지 또는 통지하면서 회원에게 약관 변경 적용일까지 거부의사를 표시하지 않으면 의사표시가 표명된 것으로 본다는 뜻을 공지 또는 통지하였음에도 불구하고 회원이 명시적으로 거부의사를 표시하지 아니하는 경우 회원이 개정약관에 동의한 것으로 봅니다.
5)회원은 변경된 약관에 동의하지 아니하는 경우 서비스의 이용을 중단하고 이용계약을 해지할 수 있습니다. 이때 회사는 회원이 가입한 유료서비스이용기간이 남아 있는 경우 이용계약 해지시점을 기준으로 제11조, 제12조 또는 제16조에 따라 환불합니다.
6)국내이동통신사의 이동전화에 가입한 회원은 유무선연동 통합서비스의 원활한 제공을 위하여 이동전화 이용약관의 유무선 연동 통합서비스 관련 내용 중 서비스와 관련된 내용을 이 약관의 내용으로 하는데 동의한 것으로 봅니다.
7)회원은 약관의 변경에 대하여 주의의무를 다하여야 하며, 변경된 약관의 부지로 인한 회원의 피해는 회사가 책임지지 않습니다.
</textarea></td></tr>
<tr><td>두번째 약관에 동의합니다.<input type="checkbox" id="cb2" name="agree2" value="agree2"></td></tr>
<tr><td>전체 내용에 동의합니다.<input type="checkbox" id="checkall" name="checkall"><hr></td></tr>


<tr><td><input type="button" value="동의함" align="top" onclick="agree();" class="btn1" name="agreebtn"/>
<input type="button" value="동의하지 않음" align="top" class="btn2"/>
</td></tr>
</table>
</form>

<script type="text/javascript">
$(document).ready(function(){
	$("#checkall").click(function(){
		if(form1.agree1.checked == false && form1.agree2.checked == false){
			$("#cb1").click();
			$("#cb2").click();
		}
	});
	
});
 	function agree(){
 		
 		if(form1.agree1.checked == false){
 			alert("첫번째 약관에 동의해주세요.");
 			form1.agree1.focus();
 			return;
 		}else if(form1.agree2.checked == false){
 			alert("두번째 약관에 동의해주세요.");
 			form1.agree2.focus();
 			return;
 		}
 	};	
 		$(".btn1").click(function(){
 			$(".contents").load("newuser.jsp");
 		});
 		$(".btn2").click(function(){
 			goToMain();
 		});
</script>

</body>
</html>