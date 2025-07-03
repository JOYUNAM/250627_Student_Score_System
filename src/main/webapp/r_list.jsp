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
					<h2 class="title">학생성적조회</h2>
						<table>
							<tr>
								<th>학년-반-번호</th>
								<th>이름</th>
								<th>성별</th>
								<th>국어</th>
								<th>영어</th>
								<th>수학</th>								
								<th>총점</th>								
								<th>평균</th>								
							</tr>
							<%	DAO dao = new DAO();
								List<DTO>list = dao.r_list();
								//과목별 누적 합계
								int sumKor=0, sumEng=0, sumMat=0;
								int cnt = 0;
								
								for (DTO dto : list ){
							//  int tot = dto.getKor()+dto.getEng()+dto.getMat();
							//  String avg = String.format("%,1d", tot/3);
								sumKor += dto.getKor();
								sumEng += dto.getEng();
								sumMat += dto.getMat();
								cnt++;
							%>
							<tr>
								<td>
									<%= dto.getSyear()+"-"+ dto.getSclass() +"-"+ dto.getSno() %>
								</td>
								<td><%= dto.getSname()%></td>
								<td>
									<% if("M".equals(dto.getGender())){
										out.print("남자");
									}else if("F".equals(dto.getGender())){
										out.print("여자");
									}
									%>
								</td>
								<td><%= dto.getKor()%></td>
								<td><%= dto.getEng()%></td>
								<td><%= dto.getMat()%></td>
								<td><%= dto.getTot()%></td>
								<td><%= dto.getAvg()%></td>
							</tr>
							<%
								}
							%>
							  <!-- ➍ 학년 총점 행 -->
							<tr>
								<td></td>
								<td></td>
							    <td>학년총점</td>
							    <td><%= sumKor %></td>
							    <td><%= sumEng %></td>
							    <td><%= sumMat %></td>
							    <td></td>
							    <td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td>학년총점</td>
								<td><%= String.format("%,1f", sumKor /(double)cnt)%></td>
								<td><%= String.format("%,1f", sumEng /(double)cnt)%></td>
								<td><%= String.format("%,1f", sumMat /(double)cnt)%></td>
								<td></td>
								<td></td>
							</tr>
						</table>
			</div>
		</section>
	</div>
	<div class="footer">
		<p>HRD Korea Human Resources Development Service of Korea</p>
	</div>
</body>
</html>