<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<style type="text/css">

body {font-size: 9pt; font-family: ����,Arial; color: #58595B;}
</style>
</head>
<body bgcolor='#FFFFFF' onLoad="startclock();">

<div id='left_time'></div>

</body>
<script type="text/javascript">
var timerID = null;
var timerRunning = false;

function stopclock () {
    if(timerRunning) clearTimeout(timerID);
    timerRunning = false;
}

function startclock () {
    stopclock();
    showtime();
}

function showtime() {

    now = new Date();
    var CurHour = now.getHours();
    var CurMinute = now.getMinutes();
    var CurMonth = now.getMonth();
    var CurDate = now.getDate();
    var CurSecond = now.getSeconds();
    var Hourleft = 23 - CurHour
    var Minuteleft = 59 - CurMinute
    var Secondleft = 59 - CurSecond
    var Monthleft = 5 - CurMonth
    var Dateleft = 20 - CurDate

    var obj = document.getElementById('left_time');
    event_day = new Date(2015,09,10,1,59,59)

    if((event_day.getTime() - now.getTime()) > 0){
        var leftStr = "<div>�����ð� : ";
        //if(Dateleft > 0) leftStr += "<b>"+Dateleft+"</b>�� ";
        if(Hourleft > 0) leftStr += "<b>"+Hourleft+"</b>�ð� ";
        if(Minuteleft > 0) leftStr += "<b>"+Minuteleft+"</b>�� ";
        leftStr += "<b>"+Secondleft+"</b>��</div>";
        obj.innerHTML = leftStr;
    }else{
        obj.innerHTML = '<div>�̺�Ʈ �Ⱓ�� ����Ǿ����ϴ�</div>';
    }

    now = null;
    timerID = setTimeout("showtime()",100);
    timerRunning = true;
    

}
</script>
</html>