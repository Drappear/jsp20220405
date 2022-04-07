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
	<%-- include directive --%>
	<%-- file 속성으로 이 위치에 포함될 파일의 경로를 작성 --%>
	<%-- 다른 파일의 내용을 현재 위치에 삽입(복사 후 붙여넣기)후 java로 변환 --%>
	<%@ include file = "module/header01.jsp" %>
	<!-- div>(h1>lorem1^p>lorem)*3 -->
	<div>
		<h1>Lorem.</h1>
		<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aperiam sit architecto eius commodi dolorem veniam totam nostrum et aliquid ipsum obcaecati nobis enim consequuntur reiciendis odio ea suscipit. Ipsum nam.</p>
		<h1>Autem.</h1>
		<p>Adipisci quae odio in exercitationem incidunt itaque ut sequi numquam quidem ipsa reiciendis explicabo commodi esse perspiciatis ratione odit tempore iusto nam aspernatur illum sint sunt aperiam autem aliquam repellat!</p>
		<h1>Error.</h1>
		<p>Praesentium vitae laboriosam tempora incidunt unde nihil numquam blanditiis consectetur minus dolore doloribus nobis alias consequuntur vel reprehenderit inventore doloremque. Optio aliquam dolorum repellat nesciunt saepe necessitatibus sequi suscipit minus.</p>
	</div>
</body>
</html>