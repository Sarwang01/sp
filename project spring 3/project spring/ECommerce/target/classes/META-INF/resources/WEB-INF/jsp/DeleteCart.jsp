



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
</style>
</head>
<body>
	<div class="container" style="background-color: #edf2f4">
		<div class="page-header">
			<h1>Delete Cart</h1>
		</div>
		<div class="form-container">
			<form method="post">
				<div class="form-group">
					<label for="RId">Cart Id:</label> <input type="text" name="cId"
						class="form-control">
				</div>
				<button type="submit" class="btn btn-primary">Delete</button>
				<a href="manageRoom" class="btn btn-primary">Cancel</a>
			</form>
		</div>
	</div>
</body>
</html>