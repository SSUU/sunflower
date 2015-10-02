<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
#roomdetail-cont {
	width: 800px;
	min-width: 800px;
	margin: 0px auto;
}

#roomdetail-cont table {
	width: 80%;
	text-align: center;
}

#roomdetail-cont table td:first-child {
	width: 15%;
}

#roomdetail-cont table td:last-child {
	width: 85%;
}

#roomdetail-cont input[type=text], textarea {
	width: 98%;
}

#roomdetail-cont .graph-cont {
	width: 40%;
	display: inline-block;
	float: left;
}

#roomdetail-cont .graph {
	width: 95%;
	height: 140px;
	border: 1px solid #ddd;
}

#roomdetail-cont .date-cont {
	width: 60%;
	display: inline-block;
	float: left;
}

#roomdetail-cont .buttons {
	width: 80%;
	text-align: center;
}

#roomdetail-cont .history {
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
}

#roomdetail-cont .history .contents1 {
	text-align: left;
	border-bottom: 1px solid #ffffff;
}

#roomdetail-cont .history .contents2 {
	text-align: right;
	border-bottom: 1px solid #ffffff;
}

#roomdetail-cont .history > p {
	width: 100%;
	text-align: center;
}

#invitationBtn {
	float: right;
}

input[type=radio] {
	margin-right: 5px;
}
</style>
</head>

<body>
	<!-- 토론방 개설하기 container -->
	<div id="roomdetail-cont">
		<h2>토론방 관리</h2>

		<table class="table table-bordered">
			<tbody>
				<tr>
					<td>토론주제</td>
					<td><input type="text" placeholder="토론 주제는 120자 이내로 작성해주세요." /></td>
				</tr>
				<tr>
					<td>주제설명</td>
					<td><textarea cols="50" rows="10" placeholder="토론 주제의 이해를 돕기 의한 간략한 설명을 작성해주세요."></textarea></td>
				</tr>
				<tr>
					<td>참여자</td>
					<td>
						<div>
							<label>
								<span>@torron(엄윤길)</span>
							</label>
							<input id="invitationBtn" type="button" value="참여 히스토리" class="btn btn-default" />
						</div>
						<div class="history">
							<div class="contents1">
								<p>@torron1 <span>2015-10-01</span> <span>11:11:11</span></p>
								<p>잘생각해보세요. 뭐가 문제인지</p>
							</div>
							<div class="contents2">
								<p>@torron1 <span>2015-10-01</span> <span>11:11:11</span></p>
								<p>잘생각해보세요. 뭐가 문제인지ㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁㅁ</p>
							</div>
							<div class="contents1">
								<p>@torron1 <span>2015-10-01</span> <span>11:11:11</span></p>
								<p>잘생각해보세요. 뭐가 문제인지</p>
							</div>
							<div class="contents2">
								<p>@torron1 <span>2015-10-01</span> <span>11:11:11</span></p>
								<p>잘생각해보세요. 뭐가 문제인지</p>
							</div>
							<p><a href="">더보기</a></p>
						</div>
					</td>
				</tr>
				<tr>
					<td>진행사항</td>
					<td>
						<div class="graph-cont">
							<p>@torront(엄윤길)</p>
							<div class="graph">	
								graph
							</div>
						</div>
						
						<div class="date-cont">
						<p>토론 <span>진행중</span> <b>남은시간 : <span>00:00:00</span> 신고 : <span>2</span>건</b></p>
							<div>
								<span>기간 설정</span>
								<div class="state-date">
									<span><input type="radio" value="3" />3일</span> 
									<span><input type="radio" value="7" />7일</span>
									<span><input type="radio" value="1" />1개월</span> 
									<span><input type="radio" value="3" />3개월</span>
								</div>
								<p>시작일</p>
								<span>현재시각</span>
								<p>종료일 설정</p>
								<span>설정시각</span>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td>기사스크랩</td>
					<td><textarea rows="5"></textarea></td>
				</tr>
				<tr>
					<td>참여성별</td>
					<td><input type="radio" value="m" />남<input type="radio"
						value="f" />여</td>
				</tr>
			</tbody>
		</table>
		
		<p class="buttons">
			<input type="button" value="종료" class="btn btn-default" />
			<input type="button" value="수정" class="btn btn-default" />
			<input type="button" value="확인" class="btn btn-default" />
		</p>
		
	</div>
</body>
</html>