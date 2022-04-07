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
		String param1 = request.getParameter("num1");
		String param2 = request.getParameter("num2");
		String cal = request.getParameter("calculator");
		
		double num1 = Double.parseDouble(param1);
		double num2 = Double.parseDouble(param2);
		double result = 0;
		
		switch(cal){
			case "plus":
				result = num1+num2;
	%>
				<h1><%= result %></h1>
	<%
				break;
	
			case "minus":
				result = num1-num2;
	%>
				<h1><%= result %></h1>
	<%
				break;
			
			case "multi":
				result = num1*num2;
	%>
				<h1><%= result %></h1>
	<%
				break;
			
			case "divide":
				result = num1/num2;
	%>
				<h1><%= result %></h1>
	<%
				break;			
		}
			
	%>
</body>
</html>