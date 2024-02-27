<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file="common_links.jsp" %>
<script>
	function fun() {
		var element = document.getElementById("registerForm");
		element.reset();
	}
</script>
</head>
<body style="background-image: url('https://images.unsplash.com/photo-1682686581413-0a0ec9bb35bb?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D');">
	<%@include file="navbar.jsp" %>
	<div class="cotainer-fluid mt-3">

		<div class="row mt-5">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-4">

					<div class="card-header text-center" style="background-color:background; ;">
						<h3>Register with Us</h3>
					</div>

					<div class="card-body px-5">

						<form action="RegisterServlet" id="registerForm" method="POST">

							<div class="form-group">
								<label for="name">User Name</label> <input name="name"
									type="text" class="form-control" id="name"
									aria-describedby="emailHelp" placeholder="Enter name"
									required="true" autocomplete="off">
							</div>

							<div class="form-group">
								<label for="email">Email</label> <input name="email"
									type="email" class="form-control" id="email"
									aria-describedby="emailHelp" placeholder="Enter email"
									required="true" autocomplete="off">
							</div>

							<div class="form-group">
								<label for="password">Password</label> <input name="password"
									type="password" class="form-control" id="password"
									aria-describedby="emailHelp" placeholder="Enter password"
									required="true" autocomplete="off">
							</div>

							<div class="form-group">
								<label for="phone">Phone</label> <input name="phone"
									type="number" class="form-control" id="Phone"
									aria-describedby="emailHelp" placeholder="Enter phone"
									required="true" autocomplete="off">
							</div>

							<div class="container text-center mt-3">
								<button class="btn btn-primary">Register</button>
								<button class="btn btn-danger"
									onClick="fun()">Reset</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>