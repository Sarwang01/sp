<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<title>List of Laptops</title>
<style>
body {
	background-color: #f8f9fa;
}

.container {
	margin-top: 50px;
}

.card {
	margin-bottom: 20px;
}

img {
	max-width: 100%;
	height: auto;
}
</style>
</head>
<body>
	<div class="container">
		<h2>List of Laptops</h2>
		<c:if test="${not empty laptops}">
			<div class="row">
				<c:forEach var="laptop" items="${laptops}">
					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="${laptop.imageLink}" class="card-img-top"
								alt="Laptop Image">
							<div class="card-body">
								<h5 class="card-title">${laptop.brand}</h5>
								<p class="card-text">${laptop.model}</p>
								<form  method="post">
									<input type="hidden" name="laptopId" value="${laptop.id}">
									<button type="submit" class="btn btn-primary btn-block">Add
										to Cart</button>
								</form>
							</div>
						</div>
					</div>
				</c:forEach>
			</div>
		</c:if>
	</div>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>
