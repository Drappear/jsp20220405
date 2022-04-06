<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- dan 요청 파라미터 값에 따라 구구단 출력되도록 작성 -->
	<% 		
		String param = request.getParameter("dan");
		if(param == null){
	%>
			<h1>단 번호를 입력해주세요</h1>
	<%
		} else {
			int dan = Integer.parseInt(request.getParameter("dan"));				
			for(int i = 1; i <= 9; i++) {
	%>
				<%= dan + " X " + i + " = " + dan*i %>
				<br />
	<%
			}
		}
	%>			
	
</body>
</html>