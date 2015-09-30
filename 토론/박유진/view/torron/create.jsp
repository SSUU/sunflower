<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../../js/torron/create.js"></script>
</head>

<body>
<!-- 	카테 고리 정의 하는곳  -->
	<form action="./tcreate.lip">
	분야 : 
	<input type="radio" id="pol" name="cateno" value="pol">정치
	<input type="radio" id="spo" name="cateno" value="spo">스포츠
	<input type="radio" id="love" name="cateno" value="love">연애
    
	<br/>
	기간선택:
	<input type="radio" id="3" name="finish" value="3" />3일
	<input type="radio" id="7" name="finish" value="7" />7일
	<input type="radio" id="10" name="finish" value="10" />10일
	<input type="hidden" id="hid" name="tfinish"/>
	
	<div align="center">
<!-- 	<div align="center" width: "80%;" > -->
		주제<input type="text" id="subject" style="width:100%" name="tsub">	<br /><br />
		 스크랩할 url :
		<div id="scrap" style="overflow: auto;  width:100%;  height:110px; border:1px solid black;">
		<input id="url"  type="text" style="width: 58%;"><input type="button" id="add" value="추가">
		<div></div>
		</div>
		 <input type="hidden" name="scrap" id="urlrap">   
		내용<textarea rows="20" id="contents"  cols="50" name="tcon" style="width: 100%"></textarea><br /><br />
		<input type="button" id="create" value="방 개설하기">
	</div>
	
	
	</form>
	
</body>
</html>