<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, model.*" %>
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
	.content table{width:700px; margin:0 auto; text-align:center;}
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
					<h2 class="title">반별통계</h2>
						<table>
							<tr>
								<th>학년</th>
								<th>반</th>
								<th>교사명</th>
								<th>국어총점</th>
								<th>영어총점</th>
								<th>수학총점</th>
								<th>국어평균</th>
								<th>영어평균</th>								
								<th>수학평균</th>								
							</tr>
							<%	DAO dao = new DAO();
								List<DTO>list = dao.c_list();
								//과목별 누적 합계
								
								
								for (DTO dto : list ){
							//  int tot = dto.getKor()+dto.getEng()+dto.getMat();
							//  String avg = String.format("%,1d", tot/3);
								
							%>
							<tr>
								<td><%= dto.getSyear()%></td>
								<td><%= dto.getSclass()%></td>
								<td><%= dto.getTname()%></td>
								<td><%= dto.getSkor()%></td>
							    <td><%= dto.getSeng()%></td>
							    <td><%= dto.getSmat() %></td>
							    <td><%= dto.getKavg()%></td>
							    <td><%= dto.getEavg()%></td>
							    <td><%= dto.getMavg()%></td>
							</tr>

							<%
								}
							%>
							
						</table>
			</div>
		</section>
	</div>
	<div class="footer">
		<p>HRD Korea Human Resources Development Service of Korea</p>
	</div>
</body>
</html>