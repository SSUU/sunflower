<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/torron.css">
</head>
<body>
	<div class="head">
	주제:
	</div>
	<div class="shead1">
	개설자
	</div>
	<div class="shead1">
	<jsp:include page="./datetest.jsp" />
	</div>
	<div class="shead1" id="ttotal">
	
	</div>
	<div class="center">
	<jsp:include page="./graph.jsp" />
	</div>
	<div class="center2">
		<jsp:include page="./chat.jsp"></jsp:include>
	</div>
</body>
<script type="text/javascript" src="../js/torron.js">

// function toto(){
// 	var obj = document.getElementById('ttotal');
// 	var tt = "총 :"+(total-2)+"명 중, 찬성 :"+(chan-1)+"명/ 반대"+(ban-1)+"명";
// 	obj.innerHTML = tt;
// }


</script>
</html>