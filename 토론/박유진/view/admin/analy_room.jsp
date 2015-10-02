<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
#analyroom {
	width: 800px;
	min-width: 800px;
	margin: 0px auto;
}

#analyroom .section1 span {
	border: 1px solid #ddd;
	width: 50px;
	float: left;
	text-align: center;
}

#analyroom .popanalyroom {
	width: 100%;
}

#analyroom .popanalyroom table {
	width: 100%;
	clear: both;
}

#analyroom .categoryanalyroom {
	width: 100%;
}

#analyroom .categoryanalyroom table {
	width: 100%;
	clear: both;
}

#analyroom .categoryanalyroom label {
	float: right;
}

#analyroom .categoryanalyroom label > span {
	float: none;
	border: none;
}

#analyroom input[type=text] {
	width: 40%;
	display: inline-block;
}

#analyroom .pages {
	width: 100%;
	text-align: center;
}

</style>
</head>

<body>

	<!-- 토론방 관리 container -->
	<div id="analyroom">
		<h2>토론방 관리</h2>

		<div class="popanalyroom">
			<h3>인기방 TOP5</h3>
			<div class="section1">
				<span>정치</span> <span>경제</span> <span>문화</span> <span>IT</span>
			</div>
			<table class="table table-bordered">
				<thead>
					<th>번호</th>
					<th>토론방</th>
					<th>개설일</th>
					<th>종료일</th>
					<th>상태</th>
					<th>참여수</th>
					<th>찬:반</th>
					<th>신고</th>
					<th>관리</th>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>

		<div class="categoryanalyroom">
			<h3>카테고리별 토론 현황 / <span>정치</span></h3>
			<div class="search-word">
				<input type="text" class="form-control" />
				<input type="button" value="검색" class="btn btn-default" /> 
				<input type="button" value="토론방 개설" class="btn btn-default"  />
			</div>
			<div class="section1">
				<span>정치</span> <span>경제</span> <span>문화</span> <span>IT</span>
				<label>전체 : <span>23,000</span>건</label>
			</div>
			<table class="table table-bordered">
				<thead>
					<th>번호</th>
					<th>토론방</th>
					<th>개설일</th>
					<th>종료일</th>
					<th>상태</th>
					<th>참여수</th>
					<th>찬:반</th>
					<th>신고</th>
					<th>관리</th>
				</thead>
				<tbody>
				</tbody>
			</table>
			<p class="pages">
				<span class="pagenum">&lt</span><a href="">1</a><a href="">2</a><span
					class="pagenum">&gt</span>
			</p>
		</div>

	</div>

</body>
</html>