<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name=""
	content="width=device-width, initial-scale=1.0">
<title>Wonderworld -Home</title>
<%@include file="common_links.jsp"%>

<style type="text/css">
.c-item {
	height: 580px;
}

.c-img {
	height: 100%;
	object-fit: cover;
	filter: brightness(0.5);
}

.relative {
	position: relative;
	font-family: 'Trebuchet MS', sans-serif;
}

.div1 {
	position: absolute;
	left: 0;
	margin-left: 50px;
}

.div2 {
	position: absolute;
	left: 50%;
	transform: translateX(-50%);
}

.div3 {
	position: absolute;
	right: 0;
	margin-right: 50px;
}

html {
	overflow-y: scroll;
}

.wrapper {
	height: 120px;
}

.card {
	transition: all 0.3s;
	height: 90px;
}

.card:hover {
	transform: scale(1.07);
}

.img-size {
	width: 100%;
	height: 13vw;
	object-fit: cover;
}

.my-btn {
	border-color: #FF4500;
	background-color: #FF4500;
	color: white;
}

.my-btn:hover {
	color: white;
}

.bt-nav {
	background-color: graytext;
	color: white;
}
</style>

</head>
<body>
	<%@include file="navbar.jsp"%>
	<div class="wrapper">
		<div id="my-crousel" class="carousel slide" data-bs-ride="carousel">
			<div class="carousel-indicators">
				<button type="button" data-bs-target="#my-crousel"
					data-bs-slide-to="0" class="active" aria-current="true"
					aria-label="Slide 1"></button>
				<button type="button" data-bs-target="#my-crousel"
					data-bs-slide-to="1" aria-label="Slide 2"></button>
				<button type="button" data-bs-target="#my-crousel"
					data-bs-slide-to="2" aria-label="Slide 3"></button>
			</div>
			<div class="carousel-inner c-item">
				<div class="carousel-item active">
					<img src="images/taj.jpg" class="d-block w-100 c-img" alt="...">
					<div class="carousel-caption top-0 mt-5 d-none d-md-block">
						<p class="mt-3 fs-4">Get lost in the hands of nature with us.</p>
						<h1 class="fw-bolder display-3">
							<span style="color: #FF8C00;">EXPLORE</span> INDIAN <span
								style="color: green;">CULTURE</span>
						</h1>
						<a href="newenq" class="btn btn-primary btn-mid mt-5">Book a
							tour</a>
					</div>
				</div>
				<div class="carousel-item c-item">
					<img src="images/kullu-main.jpg" class="d-block w-100 c-img"
						alt="...">
					<div class="carousel-caption top-0 mt-5 d-none d-md-block">
						<h1 class="fw-bolder display-3 mt-3">
							<span style="color: orange;">KULLU</span> - MANALI
						</h1>
						<a href="newenq" class="btn btn-primary btn-mid mt-5">Book a
							tour</a>
					</div>
				</div>
				<div class="carousel-item c-item">
					<img src="images/kedar.jpg" class="d-block w-100 c-img" alt="...">
					<div class="carousel-caption top-0 mt-5 d-none d-md-block">
						<h1 class="fw-bolder display-3 mt-3">
							<span style="color: orange;">KEDAR</span><span>NATH</span>
						</h1>
						<a href="newenq" class="btn btn-primary btn-mid mt-5">Book a
							tour</a>
					</div>
				</div>
			</div>
			<button class="carousel-control-prev" type="button"
				data-bs-target="#my-crousel" data-bs-slide="prev">
				<span class="carousel-control-prev-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Previous</span>
			</button>
			<button class="carousel-control-next" type="button"
				data-bs-target="#my-crousel" data-bs-slide="next">
				<span class="carousel-control-next-icon" aria-hidden="true"></span>
				<span class="visually-hidden">Next</span>
			</button>
		</div>

		<div class="text-center mt-4">
			<h1 class="fw-bolder">
				<span style="color: #000080" class="text-capitalize">Let us
					plan a</span><span style="color: #FF4500" class="text-uppercase">
					Perfect Indian Holiday</span>
			</h1>
			<hr style="border: 1px;">
		</div>
		<div class="wrapper relative">
			<div class="div1">
				<i class="fa-solid fa-medal fa-lg"
					style="color: #FF4500; margin-left: 65px;"></i>
				<p style="color: #000080">Trusted from years</p>

			</div>
			<div class="div2">
				<i class="fa-solid fa-tags fa-lg"
					style="color: #FF4500; margin-left: 45px;"></i>
				<p style="color: #000080">Lowest Prices</p>
			</div>
			<div class="div3">
				<i class="fa-solid fa-star fa-lg"
					style="color: #FF4500; margin-left: 40px;"></i>
				<p style="color: #000080">Best Facility</p>
			</div>

		</div>
		<hr>
		<div>
			<h1 class="fw-bolder" style="margin-left: 30px;">
				<span style="color: #000080" class="text-capitalize">Our </span><span
					style="color: #FF4500" class="text-uppercase"> Packages</span>
			</h1>
			<div class="row mt-4">
				<div class="col-md-3">
					<div class="card h-100" style="width: 18rem; margin: 15px;">
						<img src="images/ladakh.jpg" class="card-img-top img-size"
							alt="...">
						<div class="card-body">
							<h5 class="card-title">Ladakh-Himachal</h5>
							<p class="card-text">Most selling package including Kullu,
								Manali, Leh Ladakh and many other mesmerizing places.</p>
							<a href="visit?package=himachal" class="btn btn-primary my-btn">Visit</a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card h-100" style="width: 18rem; margin: 15px;">
						<img src="images/kedar.jpg" class="card-img-top img-size"
							alt="...">
						<div class="card-body">
							<h5 class="card-title">CharDham Yatra</h5>
							<p class="card-text">Visit the divine place Kedareshwar Dham
								with many other Hindu temples located in the arms of Himachal.</p>
							<a href="visit?package=kedarnath" class="btn btn-primary">Visit</a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card h-100" style="width: 18rem; margin: 15px;">
						<img src="images/india-gate.jpg" class="card-img-top img-size"
							alt="...">
						<div class="card-body">
							<h5 class="card-title">Weekend Delhi-Agra</h5>
							<p class="card-text">Have a tour to Delhi, Agra and many more
								to experience the Indian Culture with Taj and Red Fort.</p>
							<a href="visit?package=delhi" class="btn btn-primary my-btn">Visit</a>
						</div>
					</div>
				</div>

				<div class="col-md-3">
					<div class="card h-100" style="width: 18rem; margin: 15px;">
						<img src="images/kerala.jpg" class="card-img-top img-size"
							alt="...">
						<div class="card-body">
							<h5 class="card-title">South India</h5>
							<p class="card-text">How can you miss the beauty of South
								Indian temples, wonderful beaches and also the best food.</p>
							<a href="visit?package=south" class="btn btn-primary">Visit</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>