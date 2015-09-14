<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="../js/util/chat.js"></script>
<style type="text/css">
.center3{
width: 100%;
height: 430px;
border:2px solid black;
overflow: auto;
}
.center4{
width: 100%;
height: 66px;
border:2px solid black;
}

.ta{
height: 60px;
width: 88.7%;
float: left;
}
.tbtn{
width: 10%;
height: 67px;
}
</style>
</head>

<body>
		<div class="center3" id="c3"> </div>
		<div class="center4">
			<div id="contents"></div>
			<textarea rows="5" cols="10" class="ta"></textarea>
			<button class="tbtn">쓰기</button>
		</div>
		
</body>
</html>