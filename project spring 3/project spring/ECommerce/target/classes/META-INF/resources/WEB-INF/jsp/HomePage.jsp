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
.add_cart{
	border-radius:20px;
}
.add_cart:hover{
box-shadow: 0px 2px 20px -2px rgba(46,74,117,1);
}
.card:hover{
	cursor:pointer;
	box-shadow: -1px 8px 23px -2px rgba(0,0,0,0.75);

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
.navbar-brand{
	 padding-left: 50px
}
.nav-right{
	padding-right:60px;
	
}
.user_head{
	font-size:1.8rem;
	margin-bottom:2rem;
	color:green;
}
.nav-item{
	padding-right:30px;
	font-size:1rem;
	color:white;
	font-weight:500;
}
.nav-item:hover{
	color:white;
	text-decoration:none;
}

.navbar-nav {
	margin-left: auto;
}
.banner{
	width:auto;
	margin-bottom:1.4rem;
	height:5rem;
	background: #c0392b;  /* fallback for old browsers */
	background: -webkit-linear-gradient(to right, #8e44ad, #c0392b);  /* Chrome 10-25, Safari 5.1-6 */
	background: linear-gradient(to right, #8e44ad, #c0392b); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	color:white;
	display:flex;
	flex-direction:column;
	justify-content:center;
	align-items:center;
	border-radius:10px;
}
.blink{
	font-size:1.5rem;
	font-weight:800;
	animation:blinking 3s infinite;
	}
	@keyframes blinking{
		0%{color:#000;}
		40%{color:white;}
		60%{color:transparent;}
		100%{color:#000;}
		
	}

.blink_side{
	font-size:0.8rem;
	}
	

</style>
</head>
<body>
	<nav class=" navbar navbar-expand-lg navbar-dark ">
		<a class="navbar-brand" href="/user-home/{username}">Home</a>
		<div class=" nav-right navbar-nav ml-auto">
			<a class="nav-item " href="/view-cart/${username}">Go to Cart</a> 
		 
			<a class="nav-item " href="/">Logout</a>
		</div>
	</nav>
	<div class="container">
        <h2 class="user_head"><marquee direction='right' behavior="alternate" scrollamount={5}>Welcome! ${username}</marquee></h2>
		<div class="banner"><div class="blink">Sale is Live</div><div class='blink_side'>Get upto 30% off !! </div></div>
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
								
								<form action="/add-cart/${username}" method="post">
									<input type="hidden" name="laptopId" value="${laptop.lId}">
									<button type="submit" class="add_cart btn  btn-block">Add
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