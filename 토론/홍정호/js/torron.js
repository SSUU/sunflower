$(document).ready(function(){
	jojo = setInterval("show()", 1000);
	
	var no=0;
	$(".tbtn").click(function(){
		 
		var txt = $(".ta").val();
		var ss = "<fieldset id='"+no+"'>"+txt+"<button id='"+no+"'>X</button></fieldset>";
		$("#c3").append(ss);
		$("button[id='"+no+"']").focus();
		no++;
		
	});
	
});

function toto(){
	var obj = document.getElementById('ttotal');
	var tt = "총 :"+(total-2)+"명 중, 찬성 :"+(chan-1)+"명/ 반대"+(ban-1)+"명";
	obj.innerHTML = tt;
}

// graph

function chattingGraphInit(){
	//찬성 버튼 호버
	$("#chan").hover(function(){
		$(this).css("background-color","white");
		$(this).css("color","black");
	},function(){
		$(this).css("background-color","blue");
		$(this).css("color","white");
	});
	//반대 버튼 호버
	$("#ban").hover(function(){
		$(this).css("background-color","white");
		$(this).css("color","black");
	},function(){
		$(this).css("background-color","red");
		$(this).css("color","white");
	});
	
	//버튼 클릭시,
	$("button").click(function(){
		var vote = $(this).text();
		if(vote == "찬성"){
			chan+=1;
			total+=1;
			setInterval(drawChart(), 1000);
			setInterval(toto(), 1000);
		}else if(vote == "반대"){
			ban+=1;
			total+=1;
			setInterval(drawChart(), 1000);
			setInterval(toto(), 1000);
		}
	});
}


// 시간 세기
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