$(document).ready(function(){
	clickMenu();
});

function clickMenu(){
	
	$("li").click(function(){		
		var loadFileName = $(this).attr("value");
		$(".contents").load(tPath.getView(loadFileName));
	});
}