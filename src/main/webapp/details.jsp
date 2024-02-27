<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>details</title>

<style type="text/css">
.img-top {
	width: 100%;
	height: 500px;
	object-fit: cover;
	filter: brightness(0.6);
	margin-top: 20px;
}

.custom {
	color: #FF4500;
}

.heading {
	font-family: 'Poppins', 'sans-serif';
	font-weight: bolder;
}

.para {
	font-family: 'Poppins', 'sans-serif';
	font-weight: normal;
}

.centered {
	position: absolute;
	left: 50%;
	bottom: 8px;
	transform: translate(-50%, -50%);
}

.info {
	color: graytext;
	font-size: small;
	margin-left: 15px;
	font-family: 'Poppins', 'sans-serif';
}
</style>


<%@include file="navbar.jsp"%>
<%@include file="commonmodals.jsp"%>

</head>
<body>

	<%
		String pack = request.getParameter("package");
		if (pack.equals("himachal")) {
	%>
	<div class="heading text-center mt-5" style="margin-top: 50px;">
		<div class="mt-4">
			<h1 class="custom fw-bolder" style="margin-top: 100px;">Himachal
				Package</h1>
		</div>

		<p class="para container">With snow-capped mountains to plunging
			river valley, age-old monasteries to quaint churches, Himachal
			Pradesh makes for a holiday destination for all. If you have been
			planning to visit Himachal Pradesh, find out how we can make your
			Himachal Pradesh tour worth remembering for a lifetime. We at Tour My
			India offer the best Himachal Pradesh tour packages with attractive
			deals that are perfect for a family vacation, holiday with friends,
			adventure, and honeymoon. Unwind amidst the serene beauty of Himachal
			Pradesh with the best affordable tour packages offered by Tour My
			India.</p>
	</div>
	<div class="mt-3">
		<img src="images/manalli-group.jpg" class="img-top">
		<div class="centered heading" style="color: white;">
			<a href="#" data-id="1" data-bs-toggle="modal"
				data-bs-target="#makerequestmodal" class="btn btn-success btn-lg">Send
				Enquiry Request</a>
		</div>
	</div>
	<div class="para mt-3" style="margin: 20px;">
		<h3 style="color: navy;" class="fw-bolder">
			Top Things to Do in<span class="custom fw-bolder"> Himachal</span>
		</h3>
		<ul>
			<li>Paragliding</li>
			<li>River Rafting</li>
			<li>Trekking & Hiking</li>
			<li>Wildlife Safari</li>
			<li>Bird Watching</li>
			<li>Yoga & Ayurveda</li>
		</ul>
	</div>
	<%
	} else if (pack.equals("kedarnath")) {
	%>
	<div class="heading text-center mt-5" style="margin-top: 50px;">
		<div class="mt-4">
			<h1 class="custom fw-bolder" style="margin-top: 100px;">Chardham
				Yatra</h1>
		</div>

		<p class="para container">CHARDHAM PILGRIMAGE TOUR Itinerary Rates
			for Indian Nationals Rates for Foreign Nationals Char Dham Pilgrimage
			Tour is one of the most sacred journeys to fulfill transcendent
			quests in life. The journey will take you to the abode of Lord Shiva,
			Lord Vishnu, Goddess Yamuna and Goddess Ganga. Situated in the lap of
			Himalayas, dipped in ethereal vibes, the four Char Dhams - Badrinath
			Dham Temple, Kedarnath Dham Temple, Gangotri Dham Temple and
			Yamunotri Dham Temple, your spiritual boat will be anchored in these
			mystical realms. The purpose of Char Dham yatra is to be free from
			the karmic backlogs of life. It is said that one must do a Char Dham
			pilgrimage tour at least once in a lifetime to get salvation and
			eternal peace. The renowned saint Adi Shankaracharya coined the term
			‘holy Char Dham’ which means the ‘four abodes of god’. After Char
			Dham Yatra one definitely finds divine calmness and the serenity of
			mind. Devotees from all over the world undertake this pious
			pilgrimage tour to chase the spiritual storm.</p>
	</div>
	<div>
		<img src="images/kedar.jpg" class="img-top">
		<div class="centered heading" style="color: white;">
			<a href="#" data-id="1" data-bs-toggle="modal"
				data-bs-target="#makerequestmodal" class="btn btn-success btn-lg">Send
				Enquiry Request</a>
		</div>

	</div>
	<div class="para mt-3" style="margin: 20px;">
		<h3 style="color: navy;" class="fw-bolder">
			CharDham Yatra<span class="custom"> at a Glance</span>
		</h3>
		<div class="row" style="color: #474a4f;">
			<div class="col-md-4">
				<ul>
					<li>About Chardham</li>
					<li>Yamunotri Temple</li>
					<li>Gangotri Temple</li>
					<li>Kedarnath Temple</li>
					<li>Badrinath Temple</li>
				</ul>
			</div>

			<div class="col-md-4">
				<ul>
					<li>Full Accomodation</li>
					<li>Panch Prayag</li>
					<li>Panch Kedar</li>
					<li>Panch Badri</li>
					<li>Hemkund Sahib</li>

				</ul>
			</div>

			<div class="col-md-4">
				<ul>
					<li>Gangotri travel packages</li>
					<li>Yamunotri travel packages</li>
					<li>Helicopter Services</li>
					<li>Kedarnath travel packages</li>
					<li>Hotels at chardham</li>

				</ul>
			</div>

		</div>

	</div>

	<%
	} else if (pack.equals("delhi")) {
		
	%>
	<div class="container">
		<div class="row">

			<div class="col-md-8">

				<h1 class="custom fw-bolder para" style="margin-top: 100px;">
					Delhi - <span style="color: navy;">Agra Tour</span>
				</h1>
				<img src="images/delhi fort.webp" style="width: 90%; height: 500px;">

			</div>

			<div class="col-md-3 mt-5">

				<h3 class="fw-bolder" style="color: #474a4f; margin-top: 100px;">Tour
					Includes</h3>
				<hr>
				<div class="row">

					<div class="col-md-4">
						<img alt="" src="images/3-star.svg" style="height: 90px;">
						<p class="info">Hotels</p>
					</div>

					<div class="col-md-4">
						<img alt="" src="images/meal.svg" style="height: 90px;">
						<p class="info">Food</p>
					</div>

					<div class="col-md-4">
						<img alt="" src="images/sightseeing.svg" style="height: 90px;">
						<p class="info">Sites</p>
					</div>
					<hr>
				</div>

				<h5 class="fw-bolder" style="color: #474a4f;">Key
					Places</h5>
					<hr>
				<ul style="color: #474a4f" class="para">

					<li>Visit Taj Mahal</li>
					<li>Visit Red Fort</li>
					<li>Visit Taj Mahal</li>
					<li>Visit Fatehpur Sikri</li>

				</ul>
				
				<a href="#" data-id="1" data-bs-toggle="modal" 
				data-bs-target="#makerequestmodal" class="btn btn-success">Send
				Enquiry Request</a>
				
			</div>

		</div>
	</div>
	<%
	}
	%>
</body>
</html>


