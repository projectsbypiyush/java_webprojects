<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@include file="common_links.jsp"%>
<style>
body {
	background-image: url('images/bg-login.jpg');
	background-repeat: no-repeat;
	background-size: cover;
	overflow: hidden;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="cotainer">
		<div class="row mt-5">
			<div class="col-md-4 offset-md-4" style="margin-top: 40px;">
				<div class="card">
					<div class="card-header text-center text-white"
						style="background-color: #FF4500">
						<h3>Login</h3>
					</div>
					<div class="card-body">
						<form action="log" method="post">
							<div class="form-group">
								<label for="email">Username</label> <input name="username"
									type="text" class="form-control" id="email"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="true" autocomplete="off">
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input name="password"
									type="password" class="form-control" id="password"
									aria-describedby="emailHelp" placeholder="Enter password"
									required="true" autocomplete="off">
							</div>

							<div class="text-center mt-3">
								<button type="submit" class="btn btn-outline-success btn-sm">Login</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>