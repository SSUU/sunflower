<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>계정 찾기</title>
</head>
<body>
<!-- 	<h3>아이디 찾기(절대못찾음)</h3>  -->
<!-- 	이름 : <input type="text" /> <br /><br /> -->
<!-- 	<input type="button" value="조회" /> -->
	<h3>비밀번호 찾기</h3> 
	아이디 : <input type="text" placeholder="ex)lip@lip.com" id="id"/> <br /><br />
	이름 : <input type="text" id="name" /> <br /><br />
	<input type="button" value="조회" id="askbtn"/>
	
	<script type="text/javascript">
	
	$(document).ready(function(){
		$("#askbtn").click(function(){
// 			var field = $("input[type=text]");
			if($("#id").val() ==""){
				alert("아이디를 입력해주세요");
				return;
			}
			if($("#name").val() == ""){
				alert("이름을 입력해주세요");
				return;
			}
// 			for(var i=1; i<field.length ; i++){
// 			if($(field[i]).val()== ""){
// 				alert("빠짐없이 작성해주세요");
// 				return;
// 			}
// 			}
			$(".contents").load("findresult.jsp");
		});
	});
	
	</script>
	
</body>
</html>