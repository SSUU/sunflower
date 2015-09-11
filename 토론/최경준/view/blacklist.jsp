<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>블랙리스트 관리</title>
</head>
	<h2>블랙리스트 관리 페이지</h2>
<body>

	<div>
		<table border="2" >
			<tr>
				<td>신고자 :<span>나</span></td>
				<td>날짜 :<span>001100</span></td>
			</tr>
			<tr>
				<td>용의자 :<span class="blist-info">너</span> </td><td>방이름 (방번호):<span>토론주제</span> <span class="blist-info">23</span></td><td>신고횟수 :<span class="blist-info">2</span></td> 
			</tr>
			<tr>
				<td>신고내용:<span>글내용 불라불라~</span></td>
				<td colspan="2">gyigyiyfgi</td>
			</tr>
			<tr>
				<td colspan="3" align="center"><input type="button" value="쓰기 권한 제재" id="blackBtn"/></td>
			</tr>
			
		</table>
		
		<table border="2" id="blist-table">
		<tr>
			<td colspan="3" align="center">블랙리스트 명단</td> 
		</tr>
		<tr  id="blistoff">
			<td>아이디 : </td>
			<td>방번호 : </td>
			<td>신고횟수 :</td>
		</tr> 
		
		</table>
	</div>	

</body>
</html>