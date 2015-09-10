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

<script type="text/javascript">

	$(document).ready(function(){
		
		$("#chkIdBtn").click(function(){
			var chkid = $("#id").val();
			if(chkid != ""){
				// DAO �۾� �ϱ�
				alert("��밡��");
			}else{
				alert("���̵� �Է����ּ���");
			}
		});
		$("#successBtn").click(function(){
			
		 	var pwArr = checkValidity();
		 	
		 	if($(pwArr[0]).val() != $(pwArr[1]).val()){
		 		alert("��й�ȣ�� Ȯ�����ּ���.");
		 		return;
		 	}
		 	
		 	// DAO ���� �μ�Ʈ �۾��ϱ�
			alert("������ �Ϸ�Ǿ����ϴ�.");
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
				alert($("#b"+$(chkArr[i]).attr("id")).text()+"�� �Է����ּ���.");
				return;
			} 
		}
		
		for(var i=0; i<chkPwArr.length; i++){
			 if($(chkPwArr[i]).val() == ""){
				alert($("#b"+$(chkPwArr[i]).attr("id")).text()+"�� �Է����ּ���.");
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
			alert("���� �������ּ���.");
			return;
		}
		
		return chkPwArr;
	}

</script>

</body>

</html>