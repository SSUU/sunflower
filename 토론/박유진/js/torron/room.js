$(document).ready(function(){
	
	createRoomEvent();
	
});

// 방 개설시 필요한 정보를 data 객체에 담아 사용
function returnT(data){
	
	$(".head > span").text(data.subject);
	$(".t_host > span").text(data.host);
	$(".t_contents > span").text(data.contents);
	
}

function createRoomEvent(){
	
	$("#list").click(function() {
		var loadFileName = $(this).attr("id");
		$(".contents").load(tPath.getView(loadFileName));
	});

}

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
