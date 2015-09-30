$(document).ready(function() {
	// dao list 정보들을 받아와서 
	listEvent();
	
});




function listEvent(){
	
	$("#write").click(function(){
		var myWindow = window.open(tPath.getView("create"),
				"create","width=500, height=700","scrollbar=no","toolbar=no");
	});
	
}

//<tr>
//<td align="center" ><font size="6">글번호</td>
//<td align="center"><font size="6">제목</td>
//<td align="center"><font size="6">작성자</td>
//<td align="center"><font size="6">작성일</td>
//<td align="center"><font size="6">진행상황</td>
//</tr>

// 방 개설시 추가	
// data 에서 추가 정보 받아와 추가하기

function addRoom(data){
	
	var newTr = "<tr>";
	var newTd = "";
	
	for(var i=0; i<5; i++){
		var addData = addTableData(i, data);
		newTd += "<td align='center' id="+addData.id+">"+addData.value+"</td>";
	}
	
	newTr += newTd+"</tr>";
	alert("d2 : "+newTr);
	
	$("#t_listTable").append(newTr);
}

function addTableData(idx, data){
	
	var addData = {
			id : "",
			value : ""
	}
	
	switch (idx) {
	case 0:
		addData.id = "no"+idx;
		addData.value = idx;
		break;
	case 1:
		addData.id = "sub"+idx;
		addData.value = data.subject;
		break;
	case 2:
		addData.id = "host"+idx;
		addData.value = data.host;
		break;
	case 3:
		addData.id = "date"+idx;
		addData.value = '111-111';
		break;
	case 4:
		addData.id = "n"+idx;
		addData.value = 'nnn';
		break;

	default:
		break;
	}
	
	return addData;
}

