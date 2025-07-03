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
		if(!frm.sname.value){
			alert("이름이 입력되지 않았습니다.");
			frm.sname.focus();
			return;
		}
		if(!frm.birth.value){
			alert("생년월일이 입력되지 않았습니다.");
			frm.birth.focus();
			return;
		}
		if(!frm.gender.value){
			alert("성별이 선택되지 않았습니다.");
			frm.gender.focus();
			return;
		}
		if(!frm.tel1.value){
			alert("전화번호가 입력되지 않았습니다.");
			frm.tel1.focus();
			return;
		}
		if(!frm.tel2.value){
			alert("전화번호가 입력되지 않았습니다.");
			frm.tel2.focus();
			return;
		}
		if(!frm.tel3.value){
			alert("전화번호가 입력되지 않았습니다.");
			frm.tel3.focus();
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
				<form name="frm" id="frm" method="post" action="s_insert_pro.jsp">
					<h2 class="title">학생등록</h2>
						<table>
							<tr>
								<th>학년</th>
								<td>
									<input type ="text" name="syear" style="width:80px;">예)1
								</td>
							</tr>
							<tr>
								<th>반</th>
								<td>
									<input type ="text" name="sclass" style="width:80px;">예)01
								</td>
							</tr>
							<tr>
								<th>번호</th>
								<td>
									<input type ="text" name="sno" style="width:80px;">예)01
								</td>
							</tr>
							<tr>
								<th>이름</th>
								<td>
									<input type ="text" name="sname">
								</td>
							</tr>
							<tr>
								<th>생년월일</th>
								<td>
									<input type ="text" name="birth">예)20250629
								</td>
							</tr>
							<tr>
								<th>성별</th>
								<td>
									<input type ="radio" name="gender" value="M">남성
									<input type ="radio" name="gender" value="F">여성
								</td>
							</tr>
							<tr>
								<th>전화번호</th>
								<td>
									<input type ="text" name="tel1" style="width:40px;">-
									<input type ="text" name="tel2" style="width:60px;">-
									<input type ="text" name="tel3" style="width:60px;">									
								</td>
							</tr>
							<tr>
								<td colspan="2" class="btn_group">
									<input type ="button" value="학생등록" onClick="send()">
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