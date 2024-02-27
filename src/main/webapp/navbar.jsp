<%@include file="common_links.jsp"%>
<nav
	class="navbar fixed-top navbar-expand-lg navbar-dark bg-dark text-center">
	<div class="container-fluid">
		<a class="navbar-brand fs-4" href="#"
			style="font-family: 'Brush Script MT', cursive;">WonderWorld</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="/">Home</a></li>
				<%
					if (session.getAttribute("user") != null) {
				%>
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>
				<li class="nav-item"><a class="nav-link" href="log">Admin</a></li>
				<%
					}else{
				%>
				<li class="nav-item"><a class="nav-link" href="login">Login</a></li>
				<%
					}
				%>
				<li class="nav-item"><a class="nav-link" href="about">About
						Us</a></li>
			</ul>
			
		</div>
	</div>
</nav>
