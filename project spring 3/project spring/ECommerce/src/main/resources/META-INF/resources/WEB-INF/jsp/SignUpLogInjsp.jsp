<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet">
<title>Signup/Login</title>
<style>
body {
	background-color: #f8f9fa;
}

.container {
	margin-top: 50px;
}

.card {
	width: 400px;
	margin: auto;
	margin-top: 20px;
}

.mt-4 {
	margin-top: 20px;
}
</style>
</head>
<body>
	<div class="container">
		<div class="card">
			<div class="card-body">
				<h5 class="card-title">Signup / Login</h5>
				<!-- Signup Form -->
				<div id="signupForm">
					<form action="/signup" method="post">
						<div class="form-group">
							<label for="signupUsername">Username</label> <input type="text"
								class="form-control" id="signupUsername" name="signupUsername"
								required>
						</div>
						<div class="form-group">
							<label for="signupPassword">Password</label> <input
								type="password" class="form-control" id="signupPassword"
								name="signupPassword" required>
						</div>
						<div class="form-group">
							<label for="role">Role</label> <select class="form-control"
								id="role" name="role">
								<option value="user">User</option>
								<option value="admin">Admin</option>
							</select>
						</div>
						<button type="submit" class="btn btn-primary">Signup</button>
					</form>
					<div class="mt-4">
						<a href="/log-in" >Already have an account?
							Login here</a>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<script>
		
	</script>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>