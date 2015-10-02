<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<style type="text/css">
#roomcreate-cont {
	width: 800px;
	min-width: 800px;
	margin: 0px auto;
}

#roomcreate-cont table {
	width: 80%;
}

#roomcreate-cont input[type=text], textarea {
	width: 98%;
}

#roomcreate-cont .invitation {
	width: 88% !important;
}

#roomcreate-cont .invitation-list {
	width: 100%;
}

#roomcreate-cont .invitation-list table {
	width: 100%;
}

#roomcreate-cont .buttons {
	width: 80%;
	text-align: center;
}

input[type=radio] {
	margin-right: 5px;
}

</style>
</head>

<body>
	<!-- 토론방 개설하기 container -->
	<div id="roomcreate-cont">
		<h2>토론방 개설하기</h2>

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
					<td>토론초대</td>
					<td>
						<div>
							<input type="text" class="invitation" placeholder="아이디 또는 닉네임" /> 
							<input type="button" value="검색" class="btn btn-default" />
						</div>
						<p>
							초대 참여자 : <span>@torron(엄윤길)</span>
						</p>
						<div class="invitation-list">
							<p>검색결과</p>
							<table class="table table-bordered">
								<thead>
									<th>아이디</th>
									<th>이름</th>
									<th>성별</th>
									<th>초대</th>
								</thead>
								<tbody>
									
								</tbody>
							</table>
							<p>초대 메시지 남기기(200자)</p>
							<textarea rows="5" placeholder="토론 주제와 전달하려는 메시지를 함께 전달하세요." ></textarea>
							<p class="buttons"><input type="button" value="초대하기" class="btn btn-default" /></p>
						</div>
					</td>
				</tr>
				<tr>
					<td>토론기간</td>
					<td>
						<div class="dateset">
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
		
		<p class="buttons"><input type="button" value="개설" class="btn btn-default" /></p>
	</div>
	
</body>
</html>