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
	<%-- num1, num2 파라미터의 값을 더해서 출력하는 코드 작성 --%>
	<%-- num1이나 num2 파라미터가 없다면 입력해달라는 메세지 출력 --%>
	
	<%
		String param1 = request.getParameter("num1");
		String param2 = request.getParameter("num2");
		
		if (param1 == null || param2 == null) {
	%>
		<h1>두개의 숫자를 입력해주세요</h1>
	<%
		} else {
			int num1 = Integer.parseInt(param1);
			int num2 = Integer.parseInt(param2);
			int result = num1 + num2;
	%>
		<h1><%= num1 + " + " + num2 + " = " + result %></h1>
	<%
		}
	%>
</body>
</html>