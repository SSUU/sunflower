$(document).ready(
		function() {
			$.ajax({
				url : "../select.lip",
				type : "get",
				success : function(result) {
					$("#listmenu").text("");
					var tata = JSON.parse(result);
					var a = new Array();
					a = tata;
					
					if (tata.length > 0) {
						var tableTr = "<tr>";
						for (var i = 0; i < tata.length; i++) {
							tableTr += "<td align='center'>" + a[i].tno
									+ "</td>"
									+ "<td align='center'><label id='"
									+ a[i].tno + "'>" + a[i].tsub
									+ "</label></td>" + "<td align='center'>"
									+ a[i].mnic + "</td>"
									+ "<td align='center'>"
									+ a[i].tdate.substring(0, 10) + "</td>"
									+ "<td align='center'>" + a[i].ting
									+ "</td></tr>";
						}
						$("#listmenu").append(tableTr);
					}// if

					boardclick();
					listEvent();

				} // success!
			});// ajax
			
///////////////////////////////정호
			$.ajax({
				url:"../paging.lip",
				type:"get",
				success: function(result){
					var result1 = JSON.parse(result);
					$("#pageno").text("");
					for(var i = 1; i <= result; i++){
						var w = "<a href='' onclick='atag(); return false' >"+i+"</a>"
						$("#pageno").append("["+w+"]&nbsp");
					}
					//////
					$("#pageno > a").click(function(){
						var a = $(this).text();
						atag(a);
					});
					////////
				}//success
			
			});//ajax
			
		});///function
/////////////////////////////////정호
		//a태그 클릭시
		function atag(pageno){
		
		if(pageno == null){
		
		
		}else{
		$.ajax({
		url:"../select.lip",
		type : "get",
		data : {pno : pageno},
		success :function(result){
		$("#listmenu").text("");
		var sub = JSON.parse(result);
		var a = new Array();
		a = sub;
		
		if (sub.length > 0) {
			var tableTr = "<tr>";
			var listno = sub.length;
			$("#listmenu").text("");
			for (var i = 0; i < sub.length; i++) {
				tableTr += "<td align='center'>" + a[i].tno
						+ "</td>"
						+ "<td align='center'><label id='"
						+ a[i].tno + "'>" + a[i].tsub
						+ "</label></td>" + "<td align='center'>"
						+ a[i].mnic + "</td>"
						+ "<td align='center'>"
						+ a[i].tdate.substring(0, 10) + "</td>"
						+ "<td align='center'>" + a[i].ting
						+ "</td></tr>";
			}
			$("#listmenu").append(tableTr);
		}// if
		boardclick();
		listEvent();
		}
		});
		}
		}
//////////////////////////////////

var dlistno=0;
//보드 리스트 클릭했을시,
function boardclick() {
	// 게시판 넘버 가져온다.
var datlength=0;
var datcon = null;
	$("td > label").click(function() {
		var boardno = $(this).attr("id");
		alert("boardno : "+boardno);
		$.ajax({
			url : "../rcontents.lip",
			type : "get",
			cache : false,
			data : {
				nono : boardno
			},
			success : function(result) {
				$("#listmenu").text("");
				var rjson = JSON.parse(result);
				var roomcon = new Array();
				
				var list = rjson.list;
//				alert("list : "+list.length);
//				for(var i=0; i<list.length; i++){
//					for(var key in list[i]){
//						alert("key : "+key+", v : "+list[i][key]);
//					}
//				}
				var datlist = rjson.datlist;
//				alert("dat : "+datlist.length);
//				for(var i=0; i<datlist.length; i++){
//					for(var key in datlist[i]){
//						alert("key : "+key+", v : "+datlist[i][key]);
//					}
//				}
				
				roomcon = rjson;
				$(".contents").load(tPath.getView("room"), function() {
					$(".head > label").text(list[0].tsub);
					$(".t_contents > label").text(list[0].tcon);
					$("#hidtimer").val(list[0].ttimer);
					$(".t_host > label").text(list[0].mnic);
					$("#boardnumber > label").text(boardno);
					/////////////////////////////////
					var no=0;
					for(var i=0;i<datlist.length;i++){
						 var ss = "<fieldset id='"+no+"'><label class ='"+no+"' id='"+datlist[i].tdatno+"'>"+datlist[i].tdatcon+"</label>&nbsp;&nbsp;<button class='ox' id='"+no+"'>X</button><br/><button class='singo' id='sin"+no+"'>신고하기</button></fieldset>";
							$("#c3").append(ss);
							no++;
					}
					
					$(".ox").click(function(){
						var cno = $(this).attr("id");
						alert(cno);
						
						//댓글삭제 유효성해야함.
						var delcon = $("label[class='"+cno+"']").attr("id");
						$.ajax({
							url:"../datupdate.lip",
							type:"get",
							data:{delcontents:delcon},
							cache:false,
							success:function(result){
								alert(result);
								$("fieldset[id='"+cno+"']").remove();
							}//function
						})//ajax
					
					});
						////////
					//마감입니다. 로 변경하는 부분.
					var boardnum = $("#boardnumber > label").text();
					$.ajax({
						url:"../tingupdate.lip",
						type:"get",
						data:{boardno:boardnum},
						success:function(){
							
						}
					})//ajax
				});//room load
				
				
				
			}
		});
			
		
	});
	// 게시판 리스트 호버.
	$("td > label").hover(function() {
		$(this).css("color", "red");
	}, function() {
		$(this).css("color", "black");
	});

}// 보드 리스트 액션 관리

function listEvent() {
	$("#write").click(
			function() {
				var myWindow = window.open(tPath.getView("create"), "create",
						"width=500, height=700", "scrollbar=no", "toolbar=no");
			});
}

function addTableData(idx, data) {
	var addData = {
		id : "",
		value : ""
	}

	switch (idx) {
	case 0:
		addData.id = "no" + idx;
		addData.value = idx;
		break;
	case 1:
		addData.id = "sub" + idx;
		addData.value = data.subject;
		break;
	case 2:
		addData.id = "host" + idx;
		addData.value = data.host;
		break;
	case 3:
		addData.id = "date" + idx;
		addData.value = '111-111';
		break;
	case 4:
		addData.id = "n" + idx;
		addData.value = 'nnn';
		break;

	default:
		break;
	}

	return addData;
}


/////////////////////////////////////////timer
var bubu;
var newtime;
function reverse_counter(){
	/////////////////////////
	today = new Date();
	var ss = $("#hidtimer").val();
	d_day = new Date(ss);
	if(d_day - today > 0){
		days = (d_day - today) / 1000 / 60 / 60 / 24;
		daysRound = Math.floor(days);
		hours = (d_day - today) / 1000 / 60 / 60 - (24 * daysRound);
		hoursRound = Math.floor(hours);
		minutes = (d_day - today) / 1000 /60 - (24 * 60 * daysRound) - (60 * hoursRound);
		minutesRound = Math.floor(minutes);
		seconds = (d_day - today) / 1000 - (24 * 60 * 60 * daysRound) - (60 * 60 * hoursRound) -
		(60 * minutesRound);
		secondsRound = Math.round(seconds);
		sec = " 초."
		min = " 분, "
		hr = " 시간, "
		dy = " 일, "
		document.counter.counter_box.value = " 마감시간 : " + daysRound + 
		dy + hoursRound + hr + minutesRound + min + secondsRound + sec;
	}//if
		if(d_day - today < 0){
			document.counter.counter_box.value = "마감이야";
			window.clearInterval(newtime);
			window.clearTimeout(newtime);
			$(".tbtn").attr("disabled","disabled");
			$(".ta").attr("disabled","disabled");
			$(".ta").attr("placeholder","마감되었습니다.");
			$(".cbtn").text("마감되었습니다.");
			$(".cbtn").css("font-size","x-large");
//			var boardnum = $("#boardnumber > label").text();
//			$.ajax({
//				url:"../tingupdate.lip",
//				type:"get",
//				data:{boardno:boardnum},
//				success:function(){
//				}
//			})//ajax
			
		}//if
	
	}
////////////////////////////////////////////시간세팅
$(document).ready(function(){
	//newtime = window.set("reverse_counter();", 1000);
	newtime = window.setInterval("reverse_counter();", 1000)
});


function stt(dday){
	test = new Date();
	var month =  test.getMonth()+1;
	var day =  test.getDate();
	var hour = test.getHours();
	var minutes = test.getMinutes();
	var second = test.getSeconds();
	var fullyear = test.getFullYear();
	var mon ="";
	var daytotal ="";
	//document.counter.c2.value = test.getFullYear()+""+month+""+day+""+test.getTime();
	switch(month){
	case 1: 
		mon = "jan";
		daytotal = "31";
	break;
	case 2: 
		mon ="feb";
		daytotal = "28";
	break;
	case 3: 
		mon ="mar";
		daytotal = "31";
	break;
	case 4: 
		mon ="apr";
		daytotal = "30";
	break;
	case 5: 
		mon ="may";
		daytotal = "31";
	break;
	case 6: 
		mon ="jun";
		daytotal = "30";
	break;
	case 7: 
		mon ="jul";
		daytotal = "31";
	break;
	case 8: 
		mon ="aug";
		daytotal = "31";
	break;
	case 9: 
		mon ="sep";
		daytotal = "30";
	break;
	case 10: 
		mon ="oct";
		daytotal = "31";
	break;
	case 11: 
		mon ="nov";
		daytotal = "30";
	break;
	case 12: 
		mon ="dec";
		daytotal = "31";
	break;
	}
	
	var plusday;
	if(dday == 3){
		plusday = (day+3);
	}else if(dday == 7){
		plusday = (day+7);
	}else if(dday == 10){
		plusday = (day+10);
	}
	
	var dday = "";
	var afterday ="";
	if(plusday > daytotal){
		dday = plusday - daytotal;
		afterday = mon+" "+dday+" "+fullyear+" "+hour+":"+minutes+":"+second;
	}else{
		afterday = mon+" "+plusday+" "+fullyear+" "+hour+":"+minutes+":"+second;
	}
	//reverse_counter().gogo.val  = afterday;
	return afterday;
}

