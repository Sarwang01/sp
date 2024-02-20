



<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="webjars/bootstrap/5.1.3/css/bootstrap.min.css">
<style>
body {
	padding-top: 40px;
	padding-bottom: 40px;
	background-color: #eee;
}

.form-container {
	margin-top: 20px;
}

.btn-group {
	margin-top: 20px;
}
.submit_btn{	
	margin-top:1rem;
}


</style>
</head>
<body>
	<div class="container" style="background-color: #edf2f4">
		<div class="page-header">
			<h1>Add Laptops</h1>
		</div>
		<div class="form-container">
			<form method="post">
				<div class="form-group">
					<label for="RId">Laptop Id:</label> <input type="text" name="LId"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="RNum">Brand:</label> <input type="text" name="brand"
						class="form-control">
				</div>
				<div class="form-group">
					<label for="RType">Model:</label> <input type="text"
						name="model" class="form-control">
				</div>
				<div class="form-group">
					<label for="RPrice">Image Link:</label> <input type="text"
						name="link" class="form-control">
				</div>
				<div class="form-group">
					<label for="am">Price:</label> <input type="text" name="price"
						class="form-control">
				</div>

				<button type="submit" class="btn btn-primary submit_btn">Submit</button>
				<a href="manageRoom" class="btn btn-primary  submit_btn">Cancel</a>
			</form>
		</div>
	</div>
</body>
</html>