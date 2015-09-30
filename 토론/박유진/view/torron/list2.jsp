<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
#pageHeader-cont {
	width: 100%;
}
#pageHeader-cont > h2 {
	text-align: center;
}
.left {
	float: left;
}
.right {
	float: right;
}

#tlist-cont{
	width: 100%;
	height: 200px;
	clear: both;
	background-color: green;
}

#tlist-cont table {
	width: 100%;
}

#tlist-action-cont{
	width: 100%;
	text-align: center;
}
#tlist-action-cont > * {
	display: inline-block;
}
.page {
	margin: 0px auto;
}
</style>
</head>

<body>
	<!-- page header container -->
	<div id="pageHeader-cont">
		<h2>게시판</h2>
		<span class="left">공지사항</span>
		<span class="right">전체 : 2,000건</span>
	</div>
	<!-- 토론방 list container -->
	<div id="tlist-cont">
		<table class="listTable" border="1">
			<thead>
				<tr>
					<td>번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>등록일자</td>
					<td>조회수</td>
					<td>진행중</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
	</div>
	
	<!-- action container -->
	<div id="tlist-action-cont">
		<div class="page">
			<span><a href="">1</a></span>
			<span><a href="">2</a></span>
			<span><a href="">3</a></span>
			<span><a href="">4</a></span>
		</div>
		<button id="twriteBtn" class="right">글쓰기</button>
	</div>

</body>
</html>