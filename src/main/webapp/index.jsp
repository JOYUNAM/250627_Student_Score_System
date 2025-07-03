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
	.content table{width:500px; margin:0 auto;}
	.content table th,td{border:1px solid black;}
	.content table .btn_group{text-align:center;}
	.footer{background-color: blue; color: black; text-align:center; padding: 16px 0; }
</style>
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
				<h2 class="title"></h2>
				<br>국가능력표준으로 설계된 교육훈련 과정을 이수한 후 내외부 평가를 거쳐 합격 가준을 충족하는 훈련생에게 국가기술자격을 부여하는 제도<br>
				<br>산업현장 중심의 교육평가로 더 커지는 능력!<br>
				<br>알고 있는 것에 할 수 있는 것을 더하는 <br>
				<br>과정평가형 자격은 현장 중심 인재육성을 지원합니다.<br>
				
			</div>
		</section>
	</div>
	<div class="footer">
		<p>HRD Korea Human Resources Development Service of Korea</p>
	</div>
</body>
</html>