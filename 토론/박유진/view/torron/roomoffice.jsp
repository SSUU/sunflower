<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#table-cont {
	width: 100%;
}

table {
	width: 80%;
	table-layout: fixed;
}

td {
	padding: 5px;
}

table  td:first-child {
	width: 20%;
}
table  td:last-child {
	width: 80%;
}

td > input, textarea {
	width: 100%;
}

.left {
	float: left;
}

.right {
	float: right;
}

#graph-cont {
	width: 30%;
}

#state-cont {
	width: 70%;
	padding: 3px;
	border: 1px solid #000;
}

.section1 {
	width: 50%;
	
}

.state-date span{
	margin-left: 8%;
}

</style>

</head>
<body>
	
	<!-- table container -->
	<div id="table-cont">
		<table>
			<tbody>
				<tr>
					<td><span>토론</span></td>
					<td><input id="of-title" type="text"/></td>
				</tr>
				<tr>
					<td>주제설명</td>
					<td><textarea id="of-contents" rows="5" cols="20" ></textarea></td>
				</tr>
				<tr>
					<td>참여자</td>
					<td><span class="of-users">@엄윤길</span><span class="of-users">@박유진</span><span class="of-users">@최경준</span><span class="of-users">@홍정호</span><span class="of-users">@전지훈</span></td>
				</tr>
				<tr>
					<td>진행사항</td>
					<td>
						<div id="graph-cont" class="left">
							<span>@엄윤길</span>
							<!-- 그래프 추가 -->
							<div class="graph_2">
							</div>
						</div>
						<div id="state-cont" class="right">
							<span>토론진행중</span>
							<span>남은시간 : <span>03:02:00</span></span>
							<span class="right">신고 : <span>2</span>건</span>
							
							<div id="state-info">
								<span>빠른 기간 설정</span>
								<div class="state-date">
									<span><input type="radio"  value="3" />3일</span>
									<span><input type="radio"  value="7" />7일</span>
									<span><input type="radio"  value="1" />1개월</span>
									<span><input type="radio"  value="3" />3개월</span>
								</div>
								<div class="left section1">
									<p>시작일 설정</p>
									<select>
										<option>1월</option>
										<option>2월</option>
										<option>3월</option>
										<option>4월</option>
									</select>
									<select>
										<option>10일</option>
										<option>12일</option>
										<option>23일</option>
										<option>30일</option>
									</select>
								</div>
								<div class="right section1">
									<p>종료일 설정</p>
									<select>
										<option>01시</option>
										<option>02시</option>
										<option>03시</option>
										<option>04시</option>
									</select>
									<select>
										<option>10분</option>
										<option>12분</option>
										<option>23분</option>
										<option>30분</option>
									</select>
									<span>부터</span>
								</div>
								<div class="left section1">
									<p>시작일 설정</p>
									<select>
										<option>1월</option>
										<option>2월</option>
										<option>3월</option>
										<option>4월</option>
									</select>
									<select>
										<option>10일</option>
										<option>12일</option>
										<option>23일</option>
										<option>30일</option>
									</select>
								</div>
								<div class="right section1">
									<p>종료일 설정</p>
									<select>
										<option>01시</option>
										<option>02시</option>
										<option>03시</option>
										<option>04시</option>
									</select>
									<select>
										<option>10분</option>
										<option>12분</option>
										<option>23분</option>
										<option>30분</option>
									</select>
									<span>부터</span>
								</div>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>관련 기사 스크랩</td>
					<td><textarea id="of-news" rows="5" cols="100"></textarea></td>
				</tr>
				<tr>
					<td>참여형태</td>
					<td>
						<input type="radio" value="익명" />익명
						<input type="radio" value="실명" />실명
					</td>
				</tr>
				<tr>
					<td>참여성별</td>
					<td>
						<input type="radio" value="남" />남
						<input type="radio" value="여" />여
					</td>
				</tr>
			</tbody>
		</table>
	</div>
</body>
</html>