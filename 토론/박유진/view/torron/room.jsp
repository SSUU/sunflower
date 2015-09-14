<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
	<title>Insert title here</title>
	<script src="../js/torron/room.js" ></script>
	<link rel="stylesheet" href="../css/torron/torron.css">
</head>

<body>

	<div class="head">
		주제 : <span></span>
	</div>
	<div class="t_host">
		개설자 : <span></span>
		<button id="list">목록보기</button>
	</div>
	
	<!-- 타이머  -->
	<div class="shead1">
		<jsp:include page="../util/timer.jsp" />
	</div>
	
	<!--  -->
	<div class="shead1" id="ttotal">
	</div>
	
	<div class="t_contents">
		내용 : <span></span>
	</div>
	
	<!-- 차트 -->
	<div class="center" id="jh-graph">
		<jsp:include page="../util/graph_1.jsp" /> 
	</div>
	
	<!-- 채팅 -->
	<div class="center2">
		<jsp:include page="../util/chat.jsp" />
	</div>
	
</body>

</html>