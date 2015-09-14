$(document).ready(function() {
	graph1Event();
});

function graph1Event(){
	jojo = setInterval("show()", 1000);
}

//시간 세기
var jojo=null;

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