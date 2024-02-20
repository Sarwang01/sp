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
.card-img{
		height:190px;
		width:300px;
		border-top-left-radius:20px;
		border-top-right-radius:20px;
		object-fit: cover;
	}

.container {
	margin-top: 50px;
}

.card {
	margin-bottom: 20px;
	border-radius:20px;
	width:300px;
}

img {
	max-width: 100%;
	height: auto;
}

.navbar {
	background-color: #31A339;
	box-shadow: -1px 8px 5px -2px rgba(0,0,0,0.75);
}

.navbar-brand, .navbar-nav {
	color: white;
}

.navbar-nav {
	margin-left: auto;
}
.nav-item{
	padding-right:30px;
	font-size:1rem;
	color:white;
	font-weight:500;
}
.invent{
	margin-left:27rem;
	width:200px;
	text-align:center;
	box-shadow: -1px 0px 16px 5px rgba(0,0,0,0.75);
	margin-bottom:2rem;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark">
		<a class="navbar-brand" href="view-laptop">Home</a>
		<div class="navbar-nav ml-auto">
		
			<a class="nav-item " href="/add-Laptop">Add Lapotps</a> 
			<a class="nav-item " href="/delete-laptop">Delete Lapotps</a> 
			<a class="nav-item " href="/">Logout</a>
		</div>
	</nav>
	<div class="container">
		<h2 class="invent">Inventory</h2>
		<c:if test="${not empty laptops}">
			<div class="row">
				<c:forEach var="laptop" items="${laptops}">
					<div class="col-md-4 mb-4">
						<div class="card">
							<img src="${laptop.image}" class="card-img"
								alt="Laptop Image">
							<div class="card-body">
								<h5 class="card-title">${laptop.brand}</h5>
								<p class="card-text">${laptop.model}</p>
								<p class="card-text"> RS. ${laptop.price}</p>
								<form action="/addToCart" method="post">
									<input type="hidden" name="laptopId" value="${laptop.lId}">
									
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