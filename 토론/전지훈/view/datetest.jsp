<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<div id="datetest"></div>
</body>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript">
var jojo=null;
$(document).ready(function(){
	
	jojo = setInterval("show()", 1000);
	
	//alert("시간"+hour);
	//alert("몇일 : "+test.getDate());
	//alert("몇분 : "+test.getMinutes());
	//alert("몇년도 : "+test.getFullYear());
	//alert("무슨요일에 몇번째인지 : "+test.getDay());
	//alert("시간초"+test.getSeconds());
	////alert("타임"+test.getTime());
	////alert("몬스"+test.getMonth());
});



function show(){
	test = new Date();
	var month =  test.getMonth()+1;
	var day =  test.getDate();
	var hour = test.getHours();
	var minutes = test.getMinutes();
	var second = test.getSeconds();
	
	//var day1 =  7;
	var hour1 = 23-hour;
	var minutes1 = 59-minutes;
	var second1 = 59-second;
	
	var tt = "<div>남은 시간 : ";
	//tt+="<b>"+month+"</b>월";
	//tt+="<b>"+day1"</b>일";
	//tt+="<b>"+hour1+"</b>시간";
	//tt+="<b>"+minutes1+"</b>분";
	if(minutes1 > 0){
		tt+="<b>"+second1+"</b>초 남았습니다.</div>";
	}
	
	var obj = document.getElementById('datetest');
	obj.innerHTML = tt;
	
	if(second1 == 10){
		obj.innerHTML = "남은시간 : 종료되었습니다.";
		clearInterval(jojo);
	}
	
}

</script>
</html>