<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<c:if test="${not empty sessionScope.loggedInUser }" var="login">
		<%-- login한 경우 --%>
		<a href="${pageContext.request.contextPath }/s5/servlet03?logout=true">Logout</a>
		<br />
		<a href="${pageContext.request.contextPath }/s5/memberOnly">Member Contents</a>
	</c:if>
	
	<c:if test="${not login }">
		<h1>Login</h1>
		<form action="${pageContext.request.contextPath }/s5/servlet03"	method="post">
			ID : <input type="text" name="id" />
			<br />
			Password : <input type="password" name="pw" />
			<br />
			<input type="submit" value="로그인" />
		</form>
	</c:if>
	
	
</body>
</html>