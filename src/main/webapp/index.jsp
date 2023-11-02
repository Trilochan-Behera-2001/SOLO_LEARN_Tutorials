<%@page import="com.trilo.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.* "%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>JSP Page</title>

<!--  css -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


<link
	href="https://fonts.googleapis.com/css2?family=Bree+Serif&amp;display=swap"
	rel="stylesheet">
<style>
.banner-background {
	clip-path: polygon(100% 0%, 100% 70%, 70% 88%, 34% 70%, 0 87%, 0 0);
}

* {
	margin: 0;
	padding: 0;
}

.footer {
	width: 100%;
	text-align: center;
	padding: 30px;
	font-family: 'Baloo Bhai 2', cursive;
}

.footer h4 {
	font-weight: 600;
	margin-bottom: 25px;
	margin-top: 20px;
}

.icons img {
	width: 30px;
	height: 30px;
	/* padding:20px; */
	cursor: pointer;
	color: red;
}

.icons p img {
	padding-top: 20px;
	height: 20px;
	width: 20px;
}

.footer-background-con {
	background-image: url("./images/pattern.png");
	background-position: center;
	background-size: 300px;
	width: 100%;
	background-color: #4fb3d4;
	font-family: 'Baloo Bhai 2', cursive;
	font-size: 25px;
	height: 60px;
	padding: 10px 30px;
}

.footer-background-copy {
	text-align: right;
	width: 100%;
	background-color: rgba(0, 0, 0, 0.749);
	font-family: 'Baloo Bhai 2', cursive;
	font-size: 15px;
	height: 60px;
	padding: 18px 35px;
	margin-bottom: 10px;
	color: white;
}
</style>
</head>
<body>

	<!-- navbar -->
	<%@include file="normal_navbar.jsp"%>


	<!-- banner -->
	<div class="container-fluid p-0 m-0">
		<div class="jumbotron primary-background text-white banner-background">
			<div class="container">
				<h3 class="display-3">Welcome to SOLO Learn Tutorials</h3>
				<p>Welcome to SOLO Learn Tutorial with World of Technology</p>
				<a href="start_its_free.jsp" class="btn btn-outline-light btn-lg">
					<span class="fa fa-external-link"></span> start ! its Free
				</a> <a href="login.jsp" class="btn btn-outline-light btn-lg"> <span
					class="fa fa-user-circle-o fa-spin"></span> Login
				</a> <a href="#" class="btn btn-outline-light btn-lg"
					onclick="alert('Please signup to pratice code .')"> <span
					class="fa"></span>{/} Code Here
				</a>
			</div>
			<br>
			<br>
			<br>
		</div>

	</div>
	<!-- cards -->
	<div class="container mb-5">
		<div class="row mb-3">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title"
							style="color: #235d00; text-align: center; border-radius: 10px;">HTML</h3>
						<p class="card-text text-secondary">The language for building
							web pages</p>
						<a href="login.jsp" class="btn primary-background text-white">Know
							More....</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title"
							style="color: #235d00; text-align: center; border-radius: 10px;">CSS</h3>
						<p class="card-text text-secondary">The language for styling
							web pages</p>
						<a href="login.jsp" class="btn primary-background text-white">Know
							More....</a>
					</div>
				</div>
			</div>

			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title "
							style="color: #235d00; text-align: center; border-radius: 10px;">Java
							Script</h3>
						<p class="card-text text-secondary">The language for
							programming web page</p>
						<a href="login.jsp" class="btn primary-background text-white">Know
							More....</a>
					</div>
				</div>
			</div>
		</div>
		<div class="row mb-3">
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title"
							style="color: #235d00; text-align: center; border-radius: 10px;">Java
							Programming</h3>
						<p class="card-text text-secondary">Java is a class-based,
							object-oriented programming language.</p>
						<a href="login.jsp" class="btn primary-background text-white">Know
							More....</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title"
							style="color: #235d00; text-align: center; border-radius: 10px;">Python
							Programming</h3>
						<p class="card-text text-secondary">
							Python is a high-level, object oriented, programming Language.<br>

						</p>
						<a href="login.jsp" class="btn primary-background text-white">Know
							More....</a>
					</div>
				</div>
			</div>
			<div class="col-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="card-title"
							style="color: #235d00; text-align: center; border-radius: 10px;">C++</h3>
						<p class="card-text text-secondary">C++ is a very common
							programming languages.</p>
						<a href="login.jsp" class="btn primary-background text-white">Know
							More....</a>
					</div>
				</div>
			</div>
		</div>

	</div>
	<hr>
	<section class="footer">
		<h4>About Us</h4>
		<p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Illum
			eum repellat maxime labore possimus reiciendis minima omnis itaque
			numquam ut?</p>
		<div class="icons">
			<img src="./media/th.jpg"> <img src="./media/instagram.jpg">
			<img src="./media/linkedin.png"> <img src="./media/twitter.png"><br>
			<br>
			<p>
				Made with <i class="fa fa-heart"></i> By Trilochan And Somanath
			</p>

		</div>
	</section>
	<br>
	<br>
	<footer align="center" class="footer-background-con">
		<marquee direction="right" behavior="alternate">
			<p>------/Thanks for visit our website./------</p>
		</marquee>
	</footer>
	<footer align="center" class="footer-background-copy">
		<p>Copyrights © 2023 SOLOLEARN. All Rights Reserved.</p>
	</footer>

	<!-- java Script -->

	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>

	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>
	<script src="js/myJs.js" type="text/javascript"></script>


</body>
</html>