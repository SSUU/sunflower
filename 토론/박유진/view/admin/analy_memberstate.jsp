<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원현황</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">

#anlaymemberstate-cont {
	width: 800px;
	min-width: 800px;
	margin: 0px auto;
}
#overall-msgtate-cont {
	width: 100%;
}

#overall-msgtate-cont #member-table {
	width: 45%;
	display: inline-block;
}

#overall-msgtate-cont .search-date {
	width: 52%;
	height: 76px;
	border: 1px solid #ddd;
	display: inline-block;
	float: right;
	text-align: center;
	padding-top: 1.5em;
}

#overall-msgtate-cont .graph {
	width: 100%;
	height: 100px;
	background-color: red;
}

#overall-msgtate-cont .cc {
	float: right;
}

#overall-msgtate-cont .cc>input {
	display: inline-block;
}

#membersignup-cont {
	width: 800px;
	min-width: 800px;
}

#membersignup-cont table {
	width: 100%;
}

#membersignup-cont .search-cont {
	width: 100%;
}

#membersignup-cont .search-date {
	display: inline-block;
	float: left;
}

#membersignup-cont .search-word {
	display: inline-block;
	float: right;
	text-align: right;
}

#membersignup-cont .search-word > .input-text{
	width: 75%;
}

#membersignup-cont .detail-cont {
	width: 100%;
}

#membersignup-cont .detail-cont .detail1 {
	width: 70%;
	display: inline-block;
	float: left;
}

#membersignup-cont .detail-cont .detail2 {
	width: 30%;
	display: inline-block;
	float: right;
	height: 186px;
}

#membersignup-cont .detail-cont .graph2 {
	width: 100%;
	height: inherit;
	border: 1px solid #ddd;
}

#membersignup-cont .detail-cont .detail3 {
	clear: both;
}

#membersignup-cont .detail3 span {
	display: inline-block;
	float: right;
}

#anlaymemberstate-cont .pages {
	width: 100%;
	text-align: center;
}

#anlaymemberstate-cont .input-text {
	width: 30%;
	display: inline-block;
}

#anlaymemberstate-cont .buttons {
	width: 100%;
	text-align: center;
}

#anlaymemberstate-cont h3 {
	float: left;
}

#anlaymemberstate-cont .h3-right {
	float: right;
	margin-top: 20px;
}

.clear {
	clear: both;
}

</style>
</head>

<body>
	<div id="anlaymemberstate-cont">
		<h2>회원 현황</h2>
		<!-- 회원 종합 현황 container -->
		<div id="overall-msgtate-cont">
			<h3>회원 종합 현황</h3>
			<div class="clear">
				<div id="member-table">
					<table class="table table-bordered" >
						<thead>
							<tr>
								<td>전일 가입자</td>
								<td>금일 가입자</td>
								<td>총 가입자</td>
								<td>탈퇴 가입자</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>12,230</td>
								<td>34,234</td>
								<td>46,464</td>
								<td>23,000</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div class="search-date">
					<span>검색 기간선택</span>
					<input type="text" name="start_da" class="form-control input-text" />
					 ~ 
					 <input type="text" name="end_da" class="form-control input-text" /> 
					 <input type="button" value="검색" class="btn btn-default" />
				</div>
			</div>

			<div class="graph">
				<span class="cc"><input type="button" value="가입" class="btn btn-default" /><input
					type="button" value="탈퇴" class="btn btn-default" /></span>
			</div>
			<h3>시간별 가입 현황</h3>
			<div class="graph clear">
				<span class="cc"><input type="button" value="가입" class="btn btn-default" /><input
					type="button" value="탈퇴" class="btn btn-default" /></span>
			</div>
		</div>

		<!-- 회원 가입 현황 container -->
		<div id="membersignup-cont">
			<h3>회원 가입 현황</h3>
			<!-- 검색 container -->
			<div class="search-cont clear">
				<div class="search-date">
					<span>검색 기간</span> 
					<input type="text" class="form-control input-text"  /> 
					<span> ~ </span> 
					<input type="text" class="form-control input-text" />
				</div>
				<div class="search-word">
					<input type="text" class="form-control input-text" /> 
					<input type="button" value="검색" class="btn btn-default" />
				</div>
			</div>
			<table class="table table-bordered" >
				<thead>
					<th>번호</th>
					<th>날짜</th>
					<th>시간</th>
					<th>상태</th>
					<th>아이디</th>
					<th>닉네임</th>
					<th>성별</th>
					<th>신고접수</th>
				</thead>
				<tbody>
				</tbody>
			</table>
			<p class="pages">
				<span class="pagenum">&lt</span><a href="">1</a><a href="">2</a><span
					class="pagenum">&gt</span>
			</p>

			<!-- 정보 table container -->
			<div class="detail-cont">
				<div class="detail1">
					<h3>회원 상세정보</h3>
					<table class="table table-bordered claer" >
						<tbody>
							<tr>
								<td>가입일</td>
								<td>2015-20-12 20:12:22</td>
								<td>최근접속일</td>
								<td>2015-20-12 20:12:22</td>
							</tr>
							<tr>
								<td>성별</td>
								<td>남</td>
								<td>닉네임</td>
								<td>정호</td>
							</tr>
							<tr>
								<td>아이디</td>
								<td>@torron</td>
								<td>신고접수</td>
								<td>21</td>
							</tr>
							<tr>
								<td>개설포인트</td>
								<td>20</td>
								<td>참여포인트</td>
								<td>200</td>
							</tr>
							<tr>
								<td>탈퇴메시지</td>
								<td colspan="3">탈퇴합니다.</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="detail2">
					<h3>나의 토론 성향</h3>
					<!-- graph2 -->
					<div class="graph2 clear">
					graph
					</div>
				</div>
				<div class="detail3">
					<h3>토론방 개설 현황</h3>
					<span class="h3-right">
						<span>개설수 : <label>20</label>건 진행중 : <label>20</label>건 종료 :
							<label>20</label>건 신고 : <label>20</label>건
						</span>
					</span>
					<table class="table table-bordered" >
						<thead>
							<th>번호</th>
							<th>카테고리</th>
							<th>토론명</th>
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
					<p class="buttons"><input type="button" value="토론방 개설" id="btn" class="btn btn-default" /></p>
				</div>
			</div>
			
			<div class="black-cont">
				<h3>신고접수 현황</h3>
				<table class="table table-bordered clear" >
					<thead>
						<th>번호</th>
						<th>카테고리</th>
						<th>토론방</th>
						<th>개설자</th>
						<th>신고 접수자</th>
						<th>접수내용</th>
					</thead>
					<tbody>
					</tbody>
				</table>
				<p class="pages">
					<span class="pagenum">&lt</span><a href="">1</a><a href="">2</a><span
						class="pagenum">&gt</span>
				</p>
				<p class="buttons">
					<input type="button" value="확인" class="btn btn-default"  />
					<input type="button" value="취소" class="btn btn-default" />
				</p>
			</div>
		</div>
		
	</div>
</body>
</html>