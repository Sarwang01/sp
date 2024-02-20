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
<title>Cart Details</title>
<style>
body {
	background-color: #f8f9fa;
}
.navbar {
	background-color: #31A339;
	box-shadow: -1px 8px 5px -2px rgba(0,0,0,0.75);
}
.container {
	margin-top: 50px;
}
.nav_right{
	padding-right:20px;
	color:white;
}

.card {
	margin-bottom: 20px;
}
.cart_middle{
text-align:center;
}
.cart_img{
	height:190px;
	width:300px;
}

.button-34 {
  background: #5E5DF0;
  margin-left:30rem;
  margin-top:2.4rem;
  margin-bottom:3.2rem;
  border-radius: 999px;
  box-shadow: #5E5DF0 0 10px 20px -10px;
  box-sizing: border-box;
  color: #FFFFFF;
  cursor: pointer;
  font-family: Inter,Helvetica,"Apple Color Emoji","Segoe UI Emoji",NotoColorEmoji,"Noto Color Emoji","Segoe UI Symbol","Android Emoji",EmojiSymbols,-apple-system,system-ui,"Segoe UI",Roboto,"Helvetica Neue","Noto Sans",sans-serif;
  font-size: 16px;
  font-weight: 700;
  line-height: 24px;
  opacity: 1;
  outline: 0 solid transparent;
  padding: 8px 18px;
  user-select: none;
  -webkit-user-select: none;
  touch-action: manipulation;
  width: fit-content;
  word-break: break-word;
  border: 0;
}
img {
	max-width: 100%;
	height: auto;
}
</style>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark">
		<a class="navbar-brand ml-5" href="/user-home/${cart.userName}">Home</a>
		<div class="navbar-nav ml-auto">
			<a class="nav_right mr-5" href="/">Logout</a>
		</div>
	</nav>
	<div class="container">
		<h2 >Cart Details</h2>
		<c:if test="${not empty cart}">
			<div class="card">
				<div class="card-body">
					<h5 class="card-title">Cart Information</h5>
					<p class="card-text">
						<strong>Cart ID:</strong> ${cart.cId}
					</p>
					<p class="card-text">
						<strong>Username:</strong> ${cart.userName}
					</p>
					<p class="card-text">
						<strong>Total Price:</strong> ${cart.totalPrice}
					</p>
				</div>
			</div>
			<div class="mt-4">
				<h4 class="cart_middle">Laptops in Cart</h4>
				<table class="table">
					<thead>
						<tr>
							<th>ID</th>
							<th>Brand</th>
							<th>Image</th>
							<th>Price</th>
							<th>Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach var="laptop" items="${cart.laptops}">
							<tr>
								<td>${laptop.lId}</td>
								<td>${laptop.brand}</td>
								<td><img class="cart_img" src="${laptop.image}" alt="Laptop Image">
								<td>${laptop.price}</td>
								<td>
									 <form  method="post" action="/deleted-cart/${cart.userName}" >
									<input type="hidden" name="laptopId" value="${laptop.lId}">
									<button type="submit" class="btn btn-primary btn-block">Delete</button>
								</form>
								</td>
								
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<button class="button-34" onclick="myFunction()">Proceed here</button>
			</div>
		</c:if>
	</div>
	<script>
	function myFunction() {
		  alert("Oops ! Their is no payment method..");
		}
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>