$(document).ready(function(){
	clickMenu();
});

function clickMenu(){
	
	$("li").click(function(){		
		var path = "./admin/admin_";
		path += $(this).attr("value")+".jsp";
		$(".contents").load(path);
	});
}