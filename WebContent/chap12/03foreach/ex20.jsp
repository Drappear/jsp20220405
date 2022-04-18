<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css" integrity="sha512-GQGU0fMMi238uA+a/bdWJfpUGKUkBdgfFdgBm72SUQ6BeyWjoY/ton0tEjH+OSH9iP4Dfh+7HM0I9f5eR0L/4w==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.6.0/jquery.min.js" referrerpolicy="no-referrer"></script>
<title>Insert title here</title>
</head>
<body>
	<h1>구구단 2단 ~ 9단 출력</h1>
	
	<c:forEach begin="2" end="9" var="dan">
		<h2>${dan }단</h2>
		<c:forEach begin="1" end="9" var="num">
			<p>${dan } X ${num } = ${dan * num }</p>
		</c:forEach>
	</c:forEach>
	
	<h1>9~2단 거꾸로</h1>
	
	<c:forEach begin="3" end="10" varStatus="status">
		<h2>${status.end - status.count}단</h2>
		<c:forEach begin="1" end="9" var="num">
			<p>${status.end- status.count } X ${num } = ${(status.end - status.count) * num }</p>
		</c:forEach>
	</c:forEach>
	
	<c:forEach begin="1" end="8" var="dan">
		<h2>${10 - dan }단</h2>
		<c:forEach begin="1" end="9" var="num">
			<p>${10 - dan } X ${num } = ${(10 - dan) * num }</p>
		</c:forEach>
	</c:forEach>
</body>
</html>