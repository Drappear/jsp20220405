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
	<div class="container">
		<div class="row">
			<div class="col">
				<h1>Customer</h1>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Customer Name</th>
							<th scope="col">City</th>
							<th scope="col">Country</th>
							<th scope="col">Postal Code</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${customerList }" var="customers">
							<tr>
								<th scope="row">${customers.customerId }</th>
								<td>${customers.customerName }</td>
								<td>${customers.city }</td>
								<td>${customers.country }</td>
								<td>${customers.postalCode }</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<nav>
					<ul class="pagination justify-content-center">
						<c:if test="${prevPage >= 1 }">
							<li class="page-item">
								<a href="S14Servlet19?page=${prevPage }" class="page-link"><span>&laquo;</span></a>
							</li>
						</c:if>
						<c:forEach begin="${startPage }" end="${endPage }" var="pageNum">
							<li class="page-item ${pageNum == currentPage ? 'active' : '' }">
								<a href="S14Servlet19?page=${pageNum }" class="page-link">${pageNum }</a>
							</li>
						</c:forEach>
						<c:if test="${endPage != lastPage }">
							<li class="page-item">
								<a href="S14Servlet19?page=${nextPage }" class="page-link"><span>&raquo;</span></a>
							</li>						
						</c:if>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</body>
</html>