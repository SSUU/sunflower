<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>new member</title>
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>

<style type="text/css">
.btn1{
background-color: green;
border-radius:25px;
color: white;
font-style: oblique;
}
.btn2{
background-color: green;
border-radius:25px;
color: white;
font-style: oblique;
}
</style>
</head>
<body  background="./back.jpg">
<form name="form1">
<table align="center">
<tr><td><font size="5" style="">�������<hr></font></td></tr>
<tr><td><textarea rows="15" cols="75" id="agree11"  disabled="disabled">�� 1�� (�� ��)

�� ���� �̿���(���� ��������̶� �մϴ�)�� SKĿ�´����̼����(���� ��ȸ�硱�� �մϴ�)�� �����ϴ� ���񽺿� �����Ͽ� ȸ��� �̿� ��(�Ǵ� ȸ��) ���� ������ �̿� ���� �� ����, ȸ��� ȸ�� ���� �Ǹ�, �ǹ� �� å�� ���� ��Ÿ �ʿ��� ������ �������� �������� �մϴ�.

�� 2 �� (����� ����)

�� ������� ����ϴ� ����� ���Ǵ� ���� ��ȣ�� ������, ���ǵ��� ���� �� ���� �ؼ��� ������� �� ���񽺺� �ȳ����� ���ϴ� �ٿ� �����ϴ�.
1)���� : �̿� �� �Ǵ� ȸ���� PC, TV, �޴��� �ܸ��� �� ���� ������ ��� �Ǵ� ���α׷��� ���Ͽ� �̿��� �� �ֵ��� ȸ�簡 �����ϴ� ��� ���ͳ� ���񽺸� ���ϸ�, ȸ�簡 ������ API�� �̿��Ͽ� ��3�ڰ� ���� �Ǵ� ������ ���α׷��̳� ���񽺸� ���Ͽ� �̿� �� �Ǵ� ȸ������ �����Ǵ� ��츦 �����մϴ�.
2)ȸ�� : �� ����� �����ϰ� ȸ��� �̿� ����� ü���Ͽ�, ȸ�簡 �����ϴ� ���񽺸� ����ϴ� �ڸ� ���մϴ�.
3)�̿�� : ȸ���� ���񽺸� �̿��ϱ� ���Ͽ� ȸ��� �̿����� ü���Ϸ��� �ϴ� �ڸ� ���մϴ�.
4)ȸ������ : ȸ�簡 �̿������ ȸ������ ��û���(���� ����û���"�̶� �մϴ�)�� ���縦 ��û�ϴ� �̿���� ���������� ���մϴ�.
</textarea></td></tr>

<tr><td>ù��° ����� �����մϴ�<input type="checkbox" name="agree1" id="cb1" value="agree1" ></td></tr>
<tr><td><textarea rows="15" cols="75" id="agree22" disabled="disabled">�� 3 �� (����� ȿ�� �� ����)
1)�� ����� ���� ȭ�鿡 �Խ��ϰų� ��Ÿ�� ������� ȸ������ ���������ν� ȿ���� �߻��մϴ�.
2)ȸ��� ����� ������ ���� ����, ��ġ������ȣ��, ����������ȣ��, ���ڻ�ŷ� ����� �Һ��ں�ȣ�� ���� ����, ������Ÿ� �̿����� �� ������ȣ � ���� ���� �� ������ɿ� ������� �ʴ� ���� ������ �� ����� ������ �� �ֽ��ϴ�.
3)ȸ��� ����� ������ ��� �� �������� �� �������ڸ� ����Ͽ� ���� ����� �Բ� �������� 10�������� ������ ���ϱ��� ��1���� ������� �����մϴ�. �ٸ�, ȸ���� �Ǹ� �Ǵ� �ǹ��� ���� �߿��� ������ ������ �ּ��� 30������ �����ϰ� ��������� ȸ���� ����� ����, SMS ������ �߼��Ͽ� �����մϴ�.
4)ȸ�簡 ��3�׿� ���� ��������� ���� �Ǵ� �����ϸ鼭 ȸ������ ��� ���� �����ϱ��� �ź��ǻ縦 ǥ������ ������ �ǻ�ǥ�ð� ǥ��� ������ ���ٴ� ���� ���� �Ǵ� �����Ͽ������� �ұ��ϰ� ȸ���� ��������� �ź��ǻ縦 ǥ������ �ƴ��ϴ� ��� ȸ���� ��������� ������ ������ ���ϴ�.
5)ȸ���� ����� ����� �������� �ƴ��ϴ� ��� ������ �̿��� �ߴ��ϰ� �̿����� ������ �� �ֽ��ϴ�. �̶� ȸ��� ȸ���� ������ ���Ἥ���̿�Ⱓ�� ���� �ִ� ��� �̿��� ���������� �������� ��11��, ��12�� �Ǵ� ��16���� ���� ȯ���մϴ�.
6)�����̵���Ż��� �̵���ȭ�� ������ ȸ���� ���������� ���ռ����� ��Ȱ�� ������ ���Ͽ� �̵���ȭ �̿����� ������ ���� ���ռ��� ���� ���� �� ���񽺿� ���õ� ������ �� ����� �������� �ϴµ� ������ ������ ���ϴ�.
7)ȸ���� ����� ���濡 ���Ͽ� �����ǹ��� ���Ͽ��� �ϸ�, ����� ����� ������ ���� ȸ���� ���ش� ȸ�簡 å������ �ʽ��ϴ�.
</textarea></td></tr>
<tr><td>�ι�° ����� �����մϴ�.<input type="checkbox" id="cb2" name="agree2" value="agree2"></td></tr>
<tr><td>��ü ���뿡 �����մϴ�.<input type="checkbox" id="checkall" name="checkall"><hr></td></tr>


<tr><td><input type="button" value="������" align="top" onclick="agree();" class="btn1" name="agreebtn"/>
<input type="button" value="�������� ����" align="top" class="btn2"/>
</td></tr>
</table>
</form>

<script type="text/javascript">
$(document).ready(function(){
	$("#checkall").click(function(){
		if(form1.agree1.checked == false && form1.agree2.checked == false){
			$("#cb1").click();
			$("#cb2").click();
		}
	});
	
});
 	function agree(){
 		
 		if(form1.agree1.checked == false){
 			alert("ù��° ����� �������ּ���.");
 			form1.agree1.focus();
 			return;
 		}else if(form1.agree2.checked == false){
 			alert("�ι�° ����� �������ּ���.");
 			form1.agree2.focus();
 			return;
 		}
 	};	
 		$(".btn1").click(function(){
 			$(".contents").load("newuser.jsp");
 		});
 		$(".btn2").click(function(){
 			goToMain();
 		});
</script>

</body>
</html>