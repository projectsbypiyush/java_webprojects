<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>index</title>

<%@include file="common_links.jsp"%>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<%
	if (session.getAttribute("user") != null) {
	%>
	<div class="row mt-5">
		<div class="col-md-6">
			<img alt="" src="images/main.png" />
		</div>
		<div class="col-md-6" style="margin-top: 120px;">
		<h1 style="color: navy;">Welcome to <span style="font-family: 'Brush Script MT', cursive; color: red;">WonderWorld</span></h1>
			<h3 class="diaplay-4">Start your journey!!</h3>
			<hr>
			<a href="newenq" class="btn btn-outline-danger btn-large">BookTickets</a> 
			&nbsp;
			<a href="viewenq" class="btn btn-outline-danger btn-large">View Bookings</a>
			&nbsp;
			<a href="viewreq" class="btn btn-outline-danger btn-large">View Requests</a>
		</div>
	</div>

	<%
	} else {
	response.sendRedirect("failure.jsp");
	}
	%>
</body>
</html>
