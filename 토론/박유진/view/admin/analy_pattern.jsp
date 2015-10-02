<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
#analypattern-cont {
	width: 800px;
	min-width: 800px;
	margin: 0px auto;
}

#analypattern-cont .top-cont {
	width: 30%;
	display: inline-block;
}

#analypattern-cont .top-cont table {
	width: 100%;
}

#analypattern-cont .gender-cont {
	width: 70%;
	display: inline-block;
	float: right;
}

#analypattern-cont .gender-cont table {
	width: 100%;
}

#analypattern-cont .category-graph {
	width: 100%;
	clear: both;
}

#analypattern-cont .category-graph .graph {
	width: 100%;
	height: 200px;
	border: 1px solid #ddd;
}

#analypattern-cont .media-cont {
	width: 100%;
}

#analypattern-cont .media-cont table {
	width: 100%;
}

#analypattern-cont .search-cont {
	width: 100%;
}

#analypattern-cont .search-date {
	display: inline-block;
	float: left;
}

#analypattern-cont .search-word {
	display: inline-block;
	float: right;
}

#analypattern-cont .keyword-cont {
	width: 100%;
}

#analypattern-cont .keyword-cont span {
	border: 1px solid #ddd;
	width: 50px;
	float: left;
	text-align: center;
}

#analypattern-cont .keyword-cont table {
	width: inherit;
	clear: both;
}

#analypattern-cont .mediascrap-cont {
	width: 100%;
}

#analypattern-cont .mediascrap-cont table {
	width: inherit;
}

#analypattern-cont .pages {
	width: 100%;
	text-align: center;
}

#analypattern-cont .input-text {
	width: 30%;
	display: inline-block;
}

#analypattern-cont h3 {
	float: left;
}

#analypattern-cont .h3-right {
	float: right;
	margin-top: 20px;
}

.clear {
	clear: both;
}
</style>
</head>

<body>

	<!-- 유형분석 container -->
	<div id="analypattern-cont">
		<h2>유형 분석</h2>

		<div class="top-cont">
			<h3>키워드 TOP5</h3>
			<span class="h3-right">더보기></span>
			<table class="table table-bordered">
				<thead>
					<th>번호</th>
					<th>키워드</th>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>

		<div class="gender-cont">
			<h3>성별 토론 성향</h3>
			<span class="h3-right">참여자 : <span>23,000</span>명</span>
			<table class="table table-bordered">
				<thead>
					<th>토론 성향</th>
					<th>남</th>
					<th>여</th>
				</thead>
				<tbody>
					<tr>
						<td>진보</td>
						<td>1</td>
						<td>2</td>
					</tr>
					<tr>
						<td>보수</td>
						<td>1</td>
						<td>2</td>
					</tr>
				</tbody>
			</table>
		</div>

		<div class="category-graph">
			<h3>카테고리별 토론 참여율</h3>
			<div class="graph clear">
			graph
			</div>
		</div>

		<div class="media-cont">
			<h3>매체별 기사 스크랩 현황</h3>

			<div class="search-cont clear">
				<div class="search-date">
					<span>검색 기간</span> <input type="text" class="form-control input-text" /> 
					<span> ~ </span> 
					<input type="text" class="form-control input-text"  />
				</div>
				<label>매체명 : <span>daum</span> | 스크랩 : <span>234</span>건
				</label>
				<div class="search-word">
					<input type="text" class="form-control input-text" /> <input type="button" value="검색" class="btn btn-default" />
				</div>
			</div>
			<table class="table table-bordered">
				<thead>
					<th>번호</th>
					<th>매체</th>
					<th>스크랩</th>
					<th>카테고리</th>
					<th>제목</th>
					<th>url</th>
				</thead>
				<tbody>
				</tbody>
			</table>
			<p class="pages">
				<span class="pagenum">&lt</span><a href="">1</a><a href="">2</a><span
					class="pagenum">&gt</span>
			</p>
		</div>

		<div class="keyword-cont">
			<h3>키워드 유형분석</h3>
			<div class="section1 clear">
				<span>정치</span> <span>경제</span> <span>문화</span> <span>IT</span>
			</div>
			<table class="table table-bordered">
				<thead>
					<th>번호</th>
					<th>키워드</th>
					<th>사용빈도</th>
					<th>카테고리</th>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>

		<div class="mediascrap-cont">
			<h3>매체별 기사 스크랩 현황 상세보기</h3>
			<table class="table table-bordered clear">
				<thead>
					<th>번호</th>
					<th>아이디</th>
					<th>스크랩</th>
					<th>카테고리</th>
					<th>제목</th>
					<th>URL</th>
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