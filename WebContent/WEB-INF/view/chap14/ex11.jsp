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
<script>
	$(document).ready(function() {
		$(".delete-button").click(function(e) {
			e.preventDefault();
			
			let check = confirm("삭제하시겠습니까?");
			
			if(check) {
				$(this).closest("form").submit();
			}
		});
	});
</script>
</head>
<body>
	<h1>Employee</h1>
	<c:if test="${not empty param.success }">
		<c:if test="${param.success }">
			<div class="alert alert-success">
				삭제되었습니다.
			</div>
		</c:if>
		<c:if test="${not param.success }">
			<div class="alert alert-danger">
				취소되었습니다.
			</div>
		</c:if>
	</c:if>
	<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Last Name</th>
      <th scope="col">First Name</th>
      <th scope="col">Birth Date</th>
      <th scope="col">DELETE</th>
    </tr>
  </thead>
  <tbody>
  	<c:forEach items="${employeeList }" var="emp">
    <tr>
      <th scope="row">${emp.employeeId }</th>
      <td>${emp.lastName }</td>
      <td>${emp.firstName }</td>
      <td>${emp.birthDate }</td>
      <td>
      	<form action="" method="post">
      		<input type="hidden" name="id" value="${emp.employeeId }"/>
	      	<button class="delete-button"><i class="fa-solid fa-trash-can" ></i></button>
      	</form>
      </td>
    </tr>   
  	</c:forEach>
  </tbody>
</table>
</body>
</html>