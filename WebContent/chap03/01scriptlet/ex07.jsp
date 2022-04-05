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
		List<String> list = new ArrayList<>();
		list.add("가");
		list.add("나");
		list.add("다");
		list.add("라");
	%>
	
	<ul>
		<%
			for(String item : list) {
				out.print("<li>");
				out.print(item);
				out.print("</li>");
			}
		%>
	</ul>
</body>
</html>