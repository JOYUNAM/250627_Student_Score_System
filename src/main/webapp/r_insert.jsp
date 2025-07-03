<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	*{margin:0; padding: 0;}
	ul,li{list-style : none;}
	a{text-decotration:none; color: white;}
	.logo{background-color: blue; color: white; text-align:center; padding: 16px 0; }
	.nav{overflow : hidden; background-color: plum; padding: 16px 0;}
	.nav ul,li{float: left; text-align:center; padding: 0 20px;}
	.title{text-align:center; padding: 20px;}
	.content {background-color:#808080; padding: 15px 20px;}
	.content table{width:400px; margin:0 auto;}
	.content table th,td{border:1px solid black;}
	.content table .btn_group{text-align:center;}
	.footer{background-color: blue; color: black; text-align:center; padding: 16px 0; }
</style>
<script>
	function send(){
		if(!frm.syear.value){
			alert("학년이 입력되지 않았습니다.");
			frm.syear.focus();
			return;
		}
		if(!frm.sclass.value){
			alert("반이 입력되지 않았습니다.");
			frm.sclass.focus();
			return;
		}
		if(!frm.sno.value){
			alert("번호가 입력되지 않았습니다.");
			frm.sno.focus();
			return;
		}
		if(!frm.kor.value){
			alert("국어성적이 입력되지 않았습니다.");
			frm.kor.focus();
			return;
		}
		if(!frm.eng.value){
			alert("영어성적이 선택되지 않았습니다.");
			frm.eng.focus();
			return;
		}
		if(!frm.mat.value){
			alert("수학성적이 입력되지 않았습니다.");
			frm.mat.focus();
			return;
		}
		alert("학생 정보를 등록 합니다.");
		frm.submit();
	}
	function cancel(){
		alert("정보를 지우고 처음부터 다시 입력합니다.");
		frm.reset();
		frm.syear.focus();
		return;
	}
</script>
</head>
<body>
	<div class="header">
		<h1 class="logo">고교성적관리프로그램</h1>
			<div class="navi">
				<ul class="nav">
					<li><a href="s_insert.jsp">학생등록</a></li>
					<li><a href="r_insert.jsp">성적입력</a></li>
					<li><a href="r_list.jsp">성적조회</a></li>
					<li><a href="c_list.jsp">반별통계</a></li>
					<li><a href="index.jsp">홈으로</a></li>
				</ul>
			</div>
	</div>
	<div class="section">
		<section>
			<div class="content">
				<form name="frm" id="frm" method="post" action="r_insert_pro.jsp">
					<h2 class="title">성적입력</h2>
						<table>
							<tr>
								<th>학년</th>
								<td>
									<input type ="text" name="syear" >예)1
								</td>
							</tr>
							<tr>
								<th>반</th>
								<td>
									<input type ="text" name="sclass" >예)01
								</td>
							</tr>
							<tr>
								<th>번호</th>
								<td>
									<input type ="text" name="sno" >예)01
								</td>
							</tr>
							<tr>
								<th>국어</th>
								<td>
									<input type ="text" name="kor">점수범위(0~100)
								</td>
							</tr>
							<tr>
								<th>영어</th>
								<td>
									<input type ="text" name="eng" >점수범위(0~100)
								</td>
							</tr>
							<tr>
								<th>수학</th>
								<td>
									<input type ="text" name="mat">점수범위(0~100)
								</td>
							</tr>
							<tr>
								<td colspan="2" class="btn_group">
									<input type ="button" value="성적등록" onClick="send()">
									<input type ="button" value="다시쓰기" onClick="cancel()">
								</td>
							</tr>
						</table>
				</form>
			</div>
		</section>
	</div>
	<div class="footer">
		<p>HRD Korea Human Resources Development Service of Korea</p>
	</div>
</body>
</html>