<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<% request.setCharacterEncoding("utf-8"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel = "stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Insert title here</title>
</head>
<body>
	<%-- request parameter 는 String --%>
	<%-- request attribute 는 Object --%>
	<%
		List<String> list = new ArrayList<>();
		list.add("jimin");
		list.add("rm");
		list.add("jhope");
		
		request.setAttribute("singer", list);
	%>
	
	<jsp:forward page="ex04to.jsp">
		<jsp:param value="doctor" name="job"/>
	</jsp:forward>
</body>
</html>