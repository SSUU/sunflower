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
<!-- 	카테 고리 정의 하는곳  -->
	분야 : 
	<select>
		<option id="jung">정치</option>
		<option id="sa">사회</option>
		<option id="mun">문화</option>
	</select>
	<br/>
	기간선택:
	<input type="radio" id="3" name="rdo" value="3" />3일
	<input type="radio" id="7" name="rdo" value="7" />7일
	<input type="radio" id="10" name="rdo" value="10" />10일
	
	
	<div align="center">
<!-- 	<div align="center" width: "80%;" > -->
		주제<input type="text" id="subject" style="width:100%" name="subject">	<br /><br />
		
		<div id="scrap" style="overflow: auto;  width:100%;  height:110px; border:1px solid black;">
		스크랩할 url : <input id="url" type="text" style="width: 58%;"><button id="add">추가</button>
		<div></div>
		</div>
		내용<textarea rows="20" id="contents"  cols="50" name="content" style="width: 100%"></textarea><br /><br />
		<input type="button" id="create" value="방 개설하기"> 
	</div>
	
	<script type="text/javascript">
	
	
	//스크랩 갯수제한
// 	function siteno(){
// 		var scrapcon = $("#scrap").text();
// 		var scrapmoon = scrapcon+"";
// 		var scrapnono = scrapmoon.match(/http:/g);
// 		return scrapnono;
// 	}
	//사이트 이름 유효성 체크
	function is(scra){
		var s = scra+"";
		var ye = s.indexOf("http://");
		var site = "";
		if(ye == -1){
			site = "http://"+s;
			
		}else{
			site = s;
		}
		return site;
	}//is function
	
	$(document).ready(function(){
		var ssno = 0;
		$("#add").click(function(){
		var scra = $("#url").val();
		var sc = scra.trim();
		var sitename = is(scra);
		
		var snono = $("#scrap a").length;
		
		if(snono >= 5){
			alert("5개 까지만 스크랩가능합니다.");
			return;
		}
		//스크랩 유효성
		if(sc == "" || scra ==""){
			alert("url을 입력해주세요.");
		}else{		
			$("#scrap").append("<div id='"+ssno+"'><a href='"+sitename+"'><label id='"+ssno+"'>"+sitename+"</label></a><button class='del' id='"+ssno+"'>X</button><br/></div>");
			$("#url").val("");
			ssno++;
			}//else
				
		
		$(".del").click(function(){
			var delno = $(this).attr("id");
			$("div[id='"+delno+"']").remove();
			ssno--;
		});	
		
		
	});
			
	});
	
	
	
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