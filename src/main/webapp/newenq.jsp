<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>enquiry</title>
<%@include file="common_links.jsp"%>
<style>
body {
	background-image: url('images/bali_enq.jpg');
	background-repeat: no-repeat;
	background-size: cover;
}
</style>
<script>
	function fun() {
		var element = document.getElementById("newenqForm");
		element.reset();
	}
</script>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="container text-center">
		<div class="card mt-5">
			<div class="card-header" style="background-color: cyan;">
				<h3>Fill journey details</h3>
			</div>
			<div class="card-body text-center">
				<form id="newenqForm" action="addenq" method="post"
					style="align-items: center;">
					<table class="text-center">
						<tr>
							<td>Customer Name</td>
							<td><input type="text" name="custnm" required
								autocomplete="off" class="form-control"></td>
						</tr>
						<tr>
							<td>Mobile</td>
							<td><input type="tel" name="mobile" required
								autocomplete="off" class="form-control"></td>
						</tr>
						<tr>
							<td>Destination</td>
							<td><select name="destination" class="form-control">
									<option value="South">South India Tour</option>
									<option value="North">Manali-Shimla-Ladakh</option>
									<option value="Kedarnath">Kedarnath Dham</option>
									<option value="Konkan">Konkan Tour</option>
									<option value="Jyoti">12 Jyotirlingas</option>
							</select></td>
						</tr>
						<tr>
							<td>Travel Year</td>
							<td><select name="travelyear" class="form-control">
									<option value="2024">2024</option>
									<option value="2025">2025</option>
									<option value="2026">2026</option>
							</select></td>
						</tr>
						<tr>
							<td>Travel Month</td>
							<td><select name="travelmonth" class="form-control">
									<option value="01">January</option>
									<option value="02">February</option>
									<option value="03">March</option>
									<option value="04">April</option>
									<option value="05">May</option>
									<option value="06">June</option>
									<option value="07">July</option>
									<option value="08">August</option>
									<option value="09">September</option>
									<option value="10">October</option>
									<option value="11">November</option>
									<option value="12">December</option>
							</select></td>
						</tr>
						<tr>
							<td>Days</td>
							<td><select name="pack" class="form-control">
									<option value="3D 4N">3 days 4 nights</option>
									<option value="5D 6N">5 Days 6 Nights</option>
									<option value="7D 8N">7 days 8 Nights</option>
							</select></td>
						</tr>
						<tr>
							<td>Adults</td>
							<td><input type="number" name="numberofadults" required
								class="form-control"></td>
						</tr>
						<tr>
							<td>Children</td>
							<td><input type="number" name="numberofchildren" required
								class="form-control"></td>
						</tr>
						

						<tr>
						
							<td></td>
							<td><input class="btn btn-success" type="submit"
								value="Submit" />
							<button class="btn btn-secondary" onClick="fun()">Reset</button></td>
						</tr>
					</table>

				</form>

			</div>
		</div>
	</div>
</body>
</html>