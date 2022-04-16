<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<title>Insert title here</title>
</head>
<body>
	<%
		List<String> list = (List<String>)request.getAttribute("names");
		HashMap<String, String> map = (HashMap<String, String>)request.getAttribute("movies");
	%>
	<ul>
	<%	
		for(String name : list) {
	%>
		<li><%= name %></li>
	<%		
		}
	%>
	</ul>
	
	<ul>
	<%
		for(String movie : map.keySet()) {
			String val = map.get(movie);
	%>
				<li><%= movie + "는 " + val + " 개봉됩니다." %></li>
	<%		
		}
	%>
	</ul>
	
</body>
</html>