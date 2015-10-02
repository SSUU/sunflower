<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">

#analysiteuse-cont {
	width: 800px;
	min-width: 800px;
	margin: 0px auto;
}

#dateanaly-cont {
	width: 100%;
}

#analysiteuse-cont .left {
	float: left;
	display: inline-block;
}

#analysiteuse-cont .right {
	float: right;
	text-align: right;
	display: inline-block;
}

#analysiteuse-cont table {
	width: 100%;
	clear: both;
}

/* .pagenum {
	cursor: pointer;
}

p {
	text-align: center;
}

p a {
	margin-left: 5px;
	margin-right: 5px;
	padding: 5px;
} */

#analysiteuse-cont #browser-cont {
	width: 100%;
}

#analysiteuse-cont .graph-br {
	width: 70%;
}


#analysiteuse-cont h2 {
	margin: 0px;
}

#analysiteuse-cont .pages {
	width: 100%;
	text-align: center;
}

#analysiteuse-cont .input-text {
	width: 30%;
	display: inline-block;
}

#analysiteuse-cont .right-buttons {
	float: right;
	margin-top: 20px;
}

#category-selector {
	width: 20%;
	display: inline-block;
}

</style>

</head>
<body>

	<div id="analysiteuse-cont">
		<h2>사이트 이용 현황</h2>
		<!-- 날짜별 접속 통계 container  -->
		<div id="dateanaly-cont">
			<span class="left">날짜별 접속 통계</span>
			<div class="right">
				<span>검색 기간선택</span> 
				<input type="text" name="start_da" class="form-control input-text" />
				<span> ~ </span>
				<input type="text" name="end_da" class="form-control input-text" /> 
				<input type="button" value="검색" class="btn btn-default" />
			</div>
			<table class="table table-bordered" >
				<thead>
					<tr>
						<td>번호</td>
						<td>접속</td>
						<td>시간</td>
						<td>접속 URL</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>2015-10-11</td>
						<td>20:22:23</td>
						<td>/view/index.lip</td>
						<!-- 
						- 각 컬럼 값은 DAO 작업 후 가져온 값으로 셋팅하기
						- 날짜와 시간은 서버에서 포맷하여 보내기
							ex : YY-MM-DD, HH:MM:SS 
					 -->
					</tr>
				</tbody>
			</table>
			<p class="pages" >
				<span class="pagenum">&lt</span><a href="">1</a><a href="">2</a><span
					class="pagenum">&gt</span>
			</p>
		</div>

		<!-- 카테고리 접속 통계 container  -->
		<div id="category-cont">
			<span class="left">카테고리별 접속 통계</span>
			<div class="right">
				<span>검색 기간선택</span> 
				<input type="text" name="start_da" class="form-control input-text" />
				<span> ~ </span>
				<input type="text" name="end_da" class="form-control input-text" /> 
				<select id="category-selector" class="form-control">
					<!-- 
						- js에서 카테고리 삽입하기
			 		-->
					<option>카테고리</option>
					<option>정치</option>
				</select>
			</div>
			<table class="table table-bordered" >
				<thead>
					<tr>
						<td>카테고리</td>
						<td>접속자 수</td>
						<td>카테고리 경로</td>
						<td>그래프</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>서비스소개 V</td>
						<td>20,234</td>
						<td>/view/intro.lip</td>
						<td>막대그래프 80%</td>
						<!--
						- 해당 메뉴 클릭 시 하위 메뉴 보여주기
						- 각 컬럼 값은 DAO 작업 후 가져온 값으로 셋팅하기
					  -->
					</tr>
				</tbody>
			</table>
			<p class="pages">
				<span class="pagenum">&lt</span><a href="">1</a><a href="">2</a><span
					class="pagenum">&gt</span>
			</p>
		</div>

		<div>
			<h3 class="left">브라우저별 이용 / 디바이스별 이용 통계</h3>
			<input type="button" value="디바이스" class="btn btn-default right-buttons" /> 
			<input type="button" value="브라우저" class="btn btn-default right-buttons" />
		</div>

		<!-- 브라우저 / 디바이스 container -->
		<div id="browser-cont">
			<table class="table table-bordered">
				<thead>
					<tr>
						<td id="title">브라우저</td>
						<td>점유율(%)</td>
						<td class="graph-br">그래프</td>
					</tr>

				</thead>
				<tr>
					<td id="name">Internet Explorer</td>
					<td>60%</td>
					<!-- 꺽은선 그래프 사용 -->
					<td class="graph-br">그래프</td>
				</tr>
				<tbody>

				</tbody>
			</table>
		</div>
	</div>

	<!-- <script type="text/javascript">
		var x = "Version Info : " + navigator.appVersion;
		document.write(x + "<br />");
		var mstr = x.match(/Macintosh/g);
		document.write(mstr);
		console.log(x);
	</script> -->

</body>
</html>