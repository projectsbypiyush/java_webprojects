<%@page import="org.springframework.beans.factory.annotation.Autowired"%>
<%@page import="com.travel.wonderworld.services.TravelService"%>
<html>
<head>
<%@include file="common_links.jsp"%>
<style type="text/css">
.my-btn {
	border-color: #FF4500;
	background-color: #FF4500;
	color: white;
}

.my-btn:hover {
	color: white;
}

.cl-btn {
	background-color: navy;
	color: white;
}

.cl-btn:hover {
	color: white;
}
</style>
</head>
</html>
<!-- Modal -->
<div class="modal fade" id="makerequestmodal" tabindex="-1"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog modal-dialog-centered">
		<div class="modal-content">
			<div class="modal-header" style="background-color: #FF4500">
				<h5 class="modal-title text-white" id="exampleModalLabel">Enquiry</h5>
				<button type="button" class="btn-close" data-bs-dismiss="modal"
					aria-label="Close"></button>
			</div>



			<div class="modal-body">
				<div class="container">
					<form action="enquiry" method="post">
						<div class="form-group">
							<label for="name">User Name</label> <input name="name"
								type="text" class="form-control" id="name"
								aria-describedby="emailHelp" placeholder="Enter name"
								required="true" autocomplete="off">
						</div>
						<br>
						<div class="form-group">
							<label for="email">Email</label> <input name="email" type="email"
								class="form-control" id="email" aria-describedby="emailHelp"
								placeholder="Enter email" required="true" autocomplete="off">
						</div>
						<br>
						<%
							String p = request.getParameter("package");
							if (p.equals("himachal")) {
						%>
						<div class="form-group">
							<label for="name">Select Tour</label> <select name="destination"
								class="form-control">
								<option value="South">South India Tour</option>
								<option value="North" selected="selected">Manali-Shimla-Ladakh</option>
								<option value="Kedarnath">Chardham Yatra</option>
								<option value="Jyoti">Delhi</option>
							</select>
						</div>
						<%
						
							}else if (p.equals("kedarnath")) {
						%>
						<div class="form-group">
							<label for="name">Select Tour</label> <select name="destination"
								class="form-control">
								<option value="South">South India Tour</option>
								<option value="North">Manali-Shimla-Ladakh</option>
								<option value="Kedarnath" selected="selected">Chardham
									Yatra</option>
								<option value="Jyoti">Delhi</option>
							</select>
						</div>

						<%
						
							}else if (p.equals("delhi")) {
						%>
						<div class="form-group">
							<label for="name">Select Tour</label> <select name="destination"
								class="form-control">
								<option value="South">South India Tour</option>
								<option value="North">Manali-Shimla-Ladakh</option>
								<option value="Kedarnath">Chardham Yatra</option>
								<option value="Jyoti"  selected="selected">Delhi</option>
							</select>
						</div>
						<%
							}
						%>
						<br>
						<div class="form-group">
							<label for="phone">Phone</label> <input name="phone"
								type="number" class="form-control" id="Phone"
								aria-describedby="emailHelp" placeholder="Enter phone"
								required="true" autocomplete="off">
						</div>
						<div class="form-group">
							<label for="address">Address</label>
							<textarea name="address" class="form-control" id="add"
								aria-describedby="emailHelp" placeholder="Enter your address"
								required="true" autocomplete="off" style="height: 100px;"></textarea>
						</div>


						<div class="modal-footer text-center">
							<button type="button" class="btn btn-outline cl-btn"
								data-bs-dismiss="modal">Close</button>
							<button type="submit" class="btn btn-outline my-btn">Send
								Request</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>