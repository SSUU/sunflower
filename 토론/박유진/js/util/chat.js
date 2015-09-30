$(document).ready(function(){
	
	chatEvent();
	
});

function chatEvent(){

	var no=0;
	$(".tbtn").click(function(){
		var txt = $(".ta").val();
		var ss = "<fieldset id='"+no+"'>"+txt+"<button id='"+no+"'>X</button></fieldset>";
		$("#c3").append(ss);
		$("button[id='"+no+"']").focus();
		no++;
	});
	
}