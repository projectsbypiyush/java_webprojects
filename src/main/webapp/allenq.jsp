<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<%@include file="common_links.jsp"%>
<%@include file="navbar.jsp"%>
<meta charset="UTF-8">
<title>View all</title>

<style>
body {
	background-image: url('images/all-enq.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

</head>
<body>
	<br>
	<div class="container text-center mt-5">
	<%
		if(session.getAttribute("page") == "enq"){
			
	
	%>
		<h3 class="fw-bolder" style="background-color: white; color: black;">Customer Enquiries</h3>
		
		<table class="table table-bordered table-dark table-responsive table-hover mt-3">
			<thead style="font-weight: bold;" class="thead-light">
				<tr>
					<td>Id</td>
					<td>Customer Name</td>
					<td>Mobile</td>
					<td>Date</td>
					<td>Destination</td>
					<td>Travel Year</td>
					<td>Travel Month</td>
					<td>Package</td>
					<td>Adults</td>
					<td>Children</td>
				</tr>
			</thead>

			<c:forEach items="${enqlist}" var="enq">
				<tr style="color: yellow;">
					<td>${enq.enqid}</td>
					<td>${enq.custnm}</td>
					<td>${enq.mobile}</td>
					<td>${enq.enqdt}</td>
					<td>${enq.destination}</td>
					<td>${enq.travelyear}</td>
					<td>${enq.travelmonth}</td>
					<td>${enq.pack}</td>
					<td>${enq.numberofadults}</td>
					<td>${enq.numberofchildren}</td>

				</tr>
			</c:forEach>
			</table>

		
		<%
			}else if(session.getAttribute("page") == "req"){
				
			
		%>
		<h3 class="fw-bolder" style="background-color: white; color: black;">Customer Requests</h3>
		<table class="table table-dark table-responsive  table-bordered table-hover mt-3">
			<thead style="font-weight: bold;" class="thead-light">
				<tr>
					<td>Id</td>
					<td>Customer Name</td>
					<td>Mobile</td>
					<td>Email</td>
					<td>Destination</td>
					<td>Address</td>
					<td>Action</td>
				</tr>
			</thead>
	
			<c:forEach items="${reqlist}" var="req">
				<tr style="color: yellow;">
					<td>${req.id}</td>
					<td>${req.name}</td>
					<td>${req.phone}</td>
					<td>${req.email}</td>
					<td>${req.destination}</td>
					<td>${req.address}</td>
					<td><a href="remove/${req.id}" class="btn btn-danger btn-sm">Remove</a></td>
				</tr>
			</c:forEach>

		</table>
		<%
			}
		%>
	</div>
</body>
</html>