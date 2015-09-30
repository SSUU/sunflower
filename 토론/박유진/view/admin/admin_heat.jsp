<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
	#heat-cont{
		width: 100%;
	}
	
	table{
		width: 600px;
		border: 1px solid #000;
		background-color: white;
	}
	
	td {
		border-left: 1px solid #000;
	}
	
	td:first-child, tr:first-child {
		text-align:center;	
	}
	
	#sel-cont {
		width: 600px;
		padding-right: 10px;
		background-color: black;
	}
	
	#sel-cont > select {
		width: 80px;
	}
	
	#heat-contents-cont {
		width: 100%;
	}
	
	#heat-contents-cont > div {
		height: 300px;
		margin-left: 10px;
		background-color: white;
		float: left;
	} 
	
	#heat-contents-cont > div:first-child, div:last-child {
		width: 50px;
	}
	
</style>
</head>

<body>
	<!-- table container -->
	<div id="heat-cont">
		<table>
			<thead>히트</thead>
			<tr>
				<td>No</td>
				<td>Depth1</td>
				<td>Depth2</td>
				<td>Depth3</td>
				<td>Depth4</td>
				<td>Depth5</td>
			</tr>
			<tr>
				<td>1</td>
				<td>Depth1</td>
				<td>Depth2</td>
				<td>Depth3</td>
				<td>Depth4</td>
				<td>Depth5</td>
			</tr>
			<tr>
				<td>2</td>
				<td>Depth1</td>
				<td>Depth2</td>
				<td>Depth3</td>
				<td>Depth4</td>
				<td>Depth5</td>
			</tr>
			<tr>
				<td>3</td>
				<td>Depth1</td>
				<td>Depth2</td>
				<td>Depth3</td>
				<td>Depth4</td>
				<td>Depth5</td>
			</tr>
		</table>	
	</div>
	
	<!-- select container -->
	<div id="sel-cont">
		<select id="select1">
			<option>페이지</option>	
			<option>소개</option>	
			<option>토론방</option>	
			<option>서비스</option>	
		</select>
		<select id="select2">
			<option>메뉴</option>	
			<option>소개</option>	
			<option>토론방</option>	
			<option>서비스</option>	
		</select>
		<select id="select3">
			<option>메뉴</option>	
			<option>가수</option>	
			<option>토론</option>	
			<option>전철</option>	
		</select>
		<select id="select4">
			<option>기사</option>	
			<option>다음</option>	
			<option>구글</option>	
			<option>야후</option>	
		</select>
	</div>
	
	<!-- contents container -->
	<div id="heat-contents-cont">
		<!-- div -> img 변경  -->
		<div class="content-left">
			left
		</div>
		<div class="content-center">
			center
		</div>
		<div class="content-right">
			right
		</div>
	</div>
	
</body>
</html>