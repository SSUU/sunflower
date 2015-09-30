<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>게시판</title>
	<script type="text/javascript" src="../js/torron/list.js"></script>
	<link rel="stylesheet" href="../css/torron/list.css" />
</head>

<body>

	<!-- 게시물 container -->
	<div id="list-cont">
		<table id="t_listTable" class="table table-bordered">
			<h3>게시판 만들기</h3>
			<thead>
				<tr>
					<td align="center" >글번호</td>
					<td align="center">제목</td>
					<td align="center">작성자</td>
					<td align="center">작성일</td>
					<td align="center">진행상황</td>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		<button id="write" class="btn btn-default">글작성하기</button>
	</div>
</body>
</html>