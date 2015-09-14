<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
</head>
<body>
	<form action="">
	<div align="center" width: "80%;" >
		주제<input type="text" id="subject" style="width:100%" name="subject">	<br /><br />
	
		내용<textarea rows="20" id="contents"  cols="50" name="content" style="width: 100%"></textarea><br /><br />
		<input type="button" id="create" value="방 개설하기"> 
	</div>
	</form>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$("#create").click(function(){
	 		
		opener.window.$(".contents").load("./torron/room.jsp", function(){
				// list 에서 필요한 정보를 data 객체에 담아서 사용
				// 유효성 검사 필요
				var data = {
					subject : $("#subject").val(),
					host : 'yj',
					contents : $("#contents").val() 
				}
				
				opener.returnT(data);
				opener.addRoom(data);
				
				window.close();
	 		}); 
			
			/* var data = {
					subject : $("#subject").val(),
					host : 'yj',
					contents : $("#contents").val() 
				}
				
				opener.addRoom(data);
				
				window.close();
			*/
		});
	});
	</script>
</body>
</html>