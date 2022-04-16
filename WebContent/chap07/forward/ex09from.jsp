<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "chap07.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<%
		Car myCar = new Car();
		Car yourCar = new Car();
		
		myCar.setName("kia");
		myCar.setPrice(5000);
		
		yourCar.setName("hyundai");
		yourCar.setPrice(5000);
		
		request.setAttribute("myCar", myCar);
		request.setAttribute("yourCar", yourCar);
	%>
	<jsp:forward page="ex09to.jsp"></jsp:forward>
</body>
</html>