<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>���� ã��</title>
</head>
<body>
<!-- 	<h3>���̵� ã��(�����ã��)</h3>  -->
<!-- 	�̸� : <input type="text" /> <br /><br /> -->
<!-- 	<input type="button" value="��ȸ" /> -->
	<h3>��й�ȣ ã��</h3> 
	���̵� : <input type="text" placeholder="ex)lip@lip.com" id="id"/> <br /><br />
	�̸� : <input type="text" id="name" /> <br /><br />
	<input type="button" value="��ȸ" id="askbtn"/>
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		$("#askbtn").click(function(){
// 			var field = $("input[type=text]");
			if($("#id").val() ==""){
				alert("���̵� �Է����ּ���");
				return;
			}
			if($("#name").val() == ""){
				alert("�̸��� �Է����ּ���");
				return;
			}
// 			for(var i=1; i<field.length ; i++){
// 			if($(field[i]).val()== ""){
// 				alert("�������� �ۼ����ּ���");
// 				return;
// 			}
// 			}
			$(".contents").load("findresult.jsp");
		});
	});
	
	</script>
	
</body>
</html>