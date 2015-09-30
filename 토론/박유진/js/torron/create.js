//날짜 계산
$(document).ready(
		function() {
			var tchange = 0;

			$("input[name=finish]").click(function() {
				tchange = $(this).val();
				var naljja = stt(tchange);
				$("#hid").val(naljja);
			});

			function stt(dday) {
				test = new Date();
				var month = test.getMonth() + 1;
				var day = test.getDate();
				var hour = test.getHours();
				var minutes = test.getMinutes();
				var second = test.getSeconds();
				var fullyear = test.getFullYear();
				var mon = "";
				var daytotal = "";
				switch (month) {
				case 1:
					mon = "jan";
					daytotal = "31";
					break;
				case 2:
					mon = "feb";
					daytotal = "28";
					break;
				case 3:
					mon = "mar";
					daytotal = "31";
					break;
				case 4:
					mon = "apr";
					daytotal = "30";
					break;
				case 5:
					mon = "may";
					daytotal = "31";
					break;
				case 6:
					mon = "jun";
					daytotal = "30";
					break;
				case 7:
					mon = "jul";
					daytotal = "31";
					break;
				case 8:
					mon = "aug";
					daytotal = "31";
					break;
				case 9:
					mon = "sep";
					daytotal = "30";
					break;
				case 10:
					mon = "oct";
					daytotal = "31";
					break;
				case 11:
					mon = "nov";
					daytotal = "30";
					break;
				case 12:
					mon = "dec";
					daytotal = "31";
					break;
				}

				var plusday;
				if (dday == 3) {
					plusday = (day + 3);
				} else if (dday == 7) {
					plusday = (day + 7);
				} else if (dday == 10) {
					plusday = (day + 10);
				}

				var dday = "";
				var afterday = "";
				if (hour < 10) {
					hour = "0" + hour;
				}
				if (minutes < 10) {
					minutes = "0" + minutes;
				}
				if (second < 10) {
					second = "0" + second;
				}
				if (plusday > daytotal) {
					dday = plusday - daytotal;
					afterday = mon + " " + dday + " " + fullyear + " " + hour
							+ ":" + minutes + ":" + second;
				} else {
					afterday = mon + " " + plusday + " " + fullyear + " "
							+ hour + ":" + minutes + ":" + second;
				}
				return afterday;
			}
		});
// 날짜 계산

// 사이트 이름 유효성 체크
$(document)
		.ready(
				function() {
					var ssno = 0;
					$("#add")
							.click(
									function() {
										var scra = $("#url").val();
										var sc = scra.trim();
										var sitename = is(scra);
										var snono = $("#scrap a").length;

										if (snono >= 5) {
											return;
										}
										// 스크랩 유효성
										if (sc == "" || scra == "") {
											alert("url을 입력해주세요~~~~~");
											return;
										} else {
											$("#scrap")
													.append(
															"<div id='"
																	+ ssno
																	+ "'><a href='"
																	+ sitename
																	+ "' target='_blank'><label id='"
																	+ ssno
																	+ "'>"
																	+ sitename
																	+ "</label></a><button class='del' id='"
																	+ ssno
																	+ "'>X</button><br/></div>");
											$("#url").val("");

											ssno++;
										}// else

										$(".del")
												.click(
														function() {

															var delno = $(this)
																	.attr("id");
															$(
																	"div[id='"
																			+ delno
																			+ "']")
																	.remove();
															ssno--;
														});
									});
				});
// url 받아오기

$(document).ready(function() {
	// 설정 시간 저장

	var rdoid = null;
	var rdoid1 = null;
	$("input[name=cateno]").click(function() {
		rdoid = $(this).attr("id");

	});
	$("input[name=finish]").click(function() {
		rdoid1 = $(this).attr("id");

	});

	// -->방개설하기 클릭시 동작
	$("#createBtn").click(function() {
		// url가져오기
		var scrap = $("#scrap").text();
		$("#urlrap").val(scrap + "");

		// 유효성 체크
		if (rdoid == null) {
			alert("분야를 선택해수세요.");
			return;
		} else if (rdoid1 == null) {
			alert("기간을 설정 해주세요.");
			return;

		} else if ($("#subject").val().trim() == "") {

			alert("제목을 입력하세요");
			$("#subject").focus();

		} else if ($("#contents").val().trim() == "") {

			alert("내용을 입력하세요.");
			$("#contents").focus();

		} else {
//			$("#createBtn").attr("type", "submit");
			var data = $("#create-form").serialize();
			alert("s : "+data);
//			$.post("./tcreate.lip", data, function(){
//				// add data to table
//				// 추가하기 전에 글번호 data 변수에 추가하기
//				
//				opener.returnT(data);
//				opener.addRoom(data);
//			});
//			var data = {
//					subject : $("#subject").val(),
//					host : 'yj',
//					contents : $("#contents").val()
//				}
//				opener.returnT(data);
//				opener.addRoom(data);
//
//				window.close();
//			opener.window.$(".contents").load("./torron/room.jsp", function() {
//				// list 에서 필요한 정보를 data 객체에 담아서 사용
//				// 유효성 검사 필요
//				
//			});

		}

		/*
		 * if($("#subject").val().trim() == ""){ alert("제목을 입력하세요"); return;
		 * }else if($("#contents").val().trim() == ""){ alert("내용을 입력하세요.")
		 * return; }else{
		 */

		// }
		// });
	});
});
/*
 * var data = { subject : $("#subject").val(), host : 'yj', contents :
 * $("#contents").val() }
 * 
 * opener.addRoom(data);
 * 
 * window.close();
 */

function is(scra) {
	var s = scra + "";
	var ye = s.indexOf("http://");
	var site = "";
	if (ye == -1) {
		site = "http://" + s;

	} else {
		site = s;
	}
	return site;
}// is function

