<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import ="java.util.*, model.*" %>
<%	
	DAO dao = new DAO();
	DTO dto = new DTO();
	dto.setSyear(request.getParameter("syear"));
	dto.setSclass(request.getParameter("sclass"));
	dto.setSno(request.getParameter("sno"));
	dto.setKor(Integer.parseInt(request.getParameter("kor")));
	dto.setEng(Integer.parseInt(request.getParameter("eng")));
	dto.setMat(Integer.parseInt(request.getParameter("mat")));
	
	int row = dao.r_insert(dto);

	response.sendRedirect("index.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>