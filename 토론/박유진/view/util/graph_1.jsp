<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="../js/util/graph_1.js"></script>
</head>

<body>
 <div id="donut_single" class="graph">
 </div>
 <div class="cbtn">
 <button id="chan" class="gbtn"  style="background-color: blue; color: white;">찬성</button>
 <button id="ban"  class="gbtn" style="background-color: red; color: white;">반대</button>
 </div>
</body>

<!-- <script type="text/javascript" src="https://www.google.com/jsapi?autoload={'modules':[{'name':'visualization','version':'1.1','packages':['corechart']}]}"></script> -->
<script type="text/javascript">

google.setOnLoadCallback(drawChart);

var chan  = 1;
var ban = 1;
var total = chan+ban;
function drawChart() {
  
  var chanper = 100*chan/total;
  var banper = 100*ban/total;
    
    
  var data = google.visualization.arrayToDataTable([
    ['Effort', 'Amount given'],
    ['찬성',     chanper],['반대',     banper],
  ]);
    
  var options = {
    pieHole: 0.4,
    pieSliceTextStyle: {
      color: 'white',
    },
    legend: 'none'
  };

  var chart = new google.visualization.PieChart(document.getElementById('donut_single'));
  chart.draw(data, options);
}

drawChart();

$(document).ready(function(){
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
});
</script>   
   
</html>