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
	<%
		String agree = request.getParameter("agree");
		String ad = request.getParameter("accept");
		
		String message1 = "";
		String message2 = "";
		
		if(agree != null) {
			message1 = "개인정보 수집에 동의하셨습니다.";
		} else {
			message1 = "개인정보 수집에 동의하지 않으셨습니다.";
		}
		
		if(ad != null) {
			message2 = "광고수신에 동의하셨습니다.";			
		} else {
			message2 = "광고수신을 거부하셨습니다.";
		}
	%>
	
	<h1><%= message1 %></h1>
	<h1><%= message2 %></h1>
</body>
</html>