<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%! 
	private int num = 3;
	private int gugudan(int a, int b) {
		return a * b;
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 3단</h1>
	<% for(int i = 1; i <= 9; i++) { %>
		<%= num + " X " + i + " = " + gugudan(num, i) %>
		<br />
	<% }%>
</body>
</html>