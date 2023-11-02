<%@page import="com.trilo.entities.*"%>
<%@page errorPage="error_page.jsp"%>
<%
User user = (User) session.getAttribute("currentUser");
if (user == null) {
	response.sendRedirect("login.jsp");
}
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Profile Page</title>
<!-- css -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="css/learn.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="css/myStyle.css">

<style>
.banner-background {
	clip-path: polygon(100% 0%, 100% 70%, 70% 88%, 34% 70%, 0 87%, 0 0);
}

.font-texturl {
	font-family: 'Kalam', cursive;
	font-weight: 900;
	font-size: 30px;
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
	padding: 13px 35px;
	margin-bottom: 10px;
	color: white;
}

.example_d {
	color: #2D7CB4 !important;
	text-transform: uppercase;
	background: #ffffff;
	padding: 5px;
	border-radius: 6px;
	display: inline-block;
	transition: all 0.3s ease 0s;
}

.example_d:hover {
	border: 2px solid #20bf6b !important;
	background-color: #5B5C5E;
	color: white !important;
	border-radius: 50px;
	border-color: #494949 !important;
	transition: all 0.3s ease 0s;
}
</style>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Kalam:wght@700&display=swap')
	;
</style>
</head>
<body>


	<div class="banner  mb-5">

		<video autoplay loop muted plays-inline>
			<source src="./images/background.mp4" type="video/mp4">
		</video>

		<div class="content">
			<!-- navbar -->

			<nav
				class="navbar navbar-expand-lg navbar-dark primary-background fixed-top">
				&nbsp;&nbsp; <a class="navbar-brand" href="#"><span
					class="fa fa-universal-access"></span> SOLO Learn</a>
				<button class="navbar-toggler" type="button" data-toggle="collapse"
					data-target="#navbarSupportedContent"
					aria-controls="navbarSupportedContent" aria-expanded="false"
					aria-label="Toggle navigation">
					<span class="navbar-toggler-icon"></span>
				</button>

				<div class="collapse navbar-collapse" id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item"><a class="nav-link"
							href=" https://www.programiz.com/c-programming/online-compiler/">
								<span class="fa"></span>{/} Code Here
						</a></li>
						<li class="nav-item"><a class="nav-link" href="contact.jsp">
								<span class="fa fa-phone-square"></span> Contact Us
						</a></li>


					</ul>
					<ul class="navbar-nav mr-sm-2">

						<li class="nav-item"><a class="nav-link" href="#!"
							data-toggle="modal" data-target="#profile-modal"> <span
								class="fa fa-user-circle-o "></span>&nbsp;<%=user.getName()%></a></li>

						<li class="nav-item"><a class="nav-link" href="LogoutServlet">
								<span class="fa fa-power-off"></span> LogOut!
						</a></li>
					</ul>
				</div>
			</nav>

			<br> <br>
			<div class="container">
				<div class="row justify-content-center">
					<div class="col-lg-3 col 12 p-5 link-color">
						<div class="card"
							style="width: 17rem; height: 440px; background-color: #FFF4A3">
							<img src="images/c.png" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">C
									language</h5>
								<p class="card-text">C is a general-purpose computer
									programming language.</p>
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLdo5W4Nhv31a8UcMN9-35ghv8qyFWD9_S&si=I0ceWtsCbYslW0_s"
											target="_blank" rel="nofollow noopener">Jennys lecture</a>
									</div>

								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLiOa6ike4WAHH3HyPUu6pUG-r0LApvW-l&si=8XxkL_RE0BykUySE"
											target="_blank" rel="nofollow noopener">easytuts4you</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLBlnK6fEyqRggZZgYpPMUxdY1CYkZtARR&si=zImCGFqrWRGkhI48"
											target="_blank" rel="nofollow noopener">Neso academy</a>
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3 col-12 p-5 link-color">
						<div class="card"
							style="width: 17rem; height: 440px; background-color: #d9eee1">
							<img src="./images/c++.png" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">C++
									language</h5>
								<p class="card-text">C++ was developed by Bjarne Stroustrup,
									as an extension to the C language.</p>
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLfqMhTWNBTe0b2nM6JHVCnAkhQRGiZMSJ&si=cBHMNfCgrYpAhkpn"
											target="_blank" rel="nofollow noopener">Apna collage</a>
									</div>

								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLu0W_9lII9agpFUAlPFe_VNSlXW5uE0YL&si=YbP_ofAREkDdxVY_"
											target="_blank" rel="nofollow noopener">Code with harry</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLLYz8uHU480j37APNXBdPz7YzAi4XlQUF&si=UNLEprsHCFVoxcZu"
											target="_blank" rel="nofollow noopener">Sourabh sukla</a>
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3 p-5 link-color">
						<div class="card"
							style="width: 18rem; height: 440px; background-color: #F3ECEA">
							<img src="./images/java.png" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">Java
									language</h5>
								<p class="card-text">Java is a popular programming language.
									It is owned by Oracle.</p>
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLlhM4lkb2sEhfuXL-2BDrJ67WkUdQ2v9b&si=rpOQ-vSFdP5egWUt"
											target="_blank" rel="nofollow noopener">Smart programming</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLd3UqWTnYXOmx_J1774ukG_rvrpyWczm0&si=LiGg6WnwF0D5-k8p"
											target="_blank" rel="nofollow noopener">Durga soft</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLVlQHNRLflP8J1HiUMV1oC02Zu2CKvvuk&si=MAVTypcgNDC2Idm6"
											target="_blank" rel="nofollow noopener">naresh it</a>
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3 p-5 link-color">
						<div class="card"
							style="width: 18rem; overflow: auto; height: 440px; background-color: #D9E6FF">
							<img src="./images/python.jpg" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">Python
									language</h5>
								<p class="card-text">Python is a high-level, general-purpose
									programming language.</p>
							</div>
							<ul class="list-group list-group-flush">

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLu0W_9lII9agwh1XjRt242xIpHhPT2llg&si=rTixiMpnRdoTnzq1"
											target="_blank" rel="nofollow noopener">code with harry</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLu0W_9lII9agwh1XjRt242xIpHhPT2llg&si=rTixiMpnRdoTnzq1"
											target="_blank" rel="nofollow noopener">One short</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLLOxZwkBK52DmuHRO3UNpqAzDF57FtIxk&si=uUljJe4VUqeqlA5v"
											target="_blank" rel="nofollow noopener">Sundeep Saradhi
											Kanthety</a>
									</div>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="container mt-5 link-color">
				<div class="row">
					<div class="col-lg-3 p-5">
						<div class="card"
							style="width: 18rem; height: 440px; background-color: #D9E6FF">
							<img src="./images/html.jpg" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">Html</h5>
								<p class="card-text">HTML is the standard markup language
									for Web pages. With HTML you can create your own Website.</p>
							</div>
							<ul class="list-group list-group-flush">

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/QXPWs00RD3A?si=aqORGfZS6bKK5lOA"
											target="_blank" rel="nofollow noopener">Techblog</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLu0W_9lII9agiCUZYRsvtGTXdxkzPyItg&si=uIXRxoTcjAH9v2B8"
											target="_blank" rel="nofollow noopener">Code with harry</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/rklidcZ-aLU?si=0Ut2euutoC4Hy8D-"
											target="_blank" rel="nofollow noopener">KG coading</a>
									</div>
								</li>

							</ul>
						</div>
					</div>

					<div class="col-lg-3 p-5 link-color">
						<div class="card"
							style="width: 18rem; height: 440px; background-color: #FFF4A3">
							<img src="./images/css.jpg" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">Css</h5>
								<p class="card-text">CSS Stands for Cascarding Style
									Sheet.CSS is the language we use to style an HTML document.</p>
							</div>
							<ul class="list-group list-group-flush">

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/WyxzAU3p8CE?si=at7dzA-GpQiwJ0n6"
											target="_blank" rel="nofollow noopener">Tech blog</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/ESnrn1kAD4E?si=YyIB1e32lLZ89EiN"
											target="_blank" rel="nofollow noopener">Apna collage</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/MSICFljRcb4?si=MC-MIz_UaP08-LBt"
											target="_blank" rel="nofollow noopener">Thapa technical</a>
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3 p-5 link-color">
						<div class="card"
							style="width: 18rem; height: 440px; background-color: #d9eee1">
							<img src="./images/js.jpg" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">Java
									Script</h5>
								<p class="card-text">Java Script is a programming language
									that is Best technologies of the World Wide Web.</p>
							</div>
							<ul class="list-group list-group-flush">

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLu0W_9lII9ahR1blWXxgSlL4y9iQBnLpR&si=39HqT-CMCpRq2xkN"
											target="_blank" rel="nofollow noopener">Code with harry</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLjpp5kBQLNTSvHo6Rp4Ky0X8x_MabmKye&si=pwjbI4SrX03zqhCK"
											target="_blank" rel="nofollow noopener">Tech blog</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/sscX432bMZo?si=wJtQGdwLGmgxn4hg"
											target="_blank" rel="nofollow noopener">one short</a>
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3 p-5 link-color">
						<div class="card"
							style="width: 18rem; height: 440px; background-color: #F3ECEA">
							<img src="./images/r.jpg" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">R
									language</h5>
								<p class="card-text">R is a programming language for
									statistical computing and graphics supported by the R .</p>
							</div>
							<ul class="list-group list-group-flush">

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLjVLYmrlmjGdmPrz0Lx7smkd0qIKHInOF&si=8q7eem8dMswWQLw2"
											target="_blank" rel="nofollow noopener">WsCube Tech</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLjVLYmrlmjGdmPrz0Lx7smkd0qIKHInOF&si=8q7eem8dMswWQLw2"
											target="_blank" rel="nofollow noopener">5 Minutes
											Engineering</a>
									</div>
								</li>

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/NDto4BVHz4s?si=TO6AQCyjHlzuimbo"
											target="_blank" rel="nofollow noopener">One short</a>
									</div>
								</li>
							</ul>
						</div>
					</div>

					<div class="col-lg-3 p-5 link-color">
						<div class="card" style="width: 18rem; background-color: #F3ECEA">
							<img src="./images/adv.png" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">Advanced
									Java</h5>
								<p class="card-text">JavaScript often abbreviated as JS, is
									a programming language that is one of the core technologies of
									the World Wide Web.</p>
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLVlQHNRLflP9OiTKTQuq3UWJNA_wOPlFr&si=hjd8sR8I9ECJLW1S"
											target="_blank" rel="nofollow noopener">Natraj sir</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLd3UqWTnYXOniKfYRNY___weULTRd9Co0&si=rpTpInEhvxYV68CK"
											target="_blank" rel="nofollow noopener">JDBC</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PL0zysOflRCel5BSXoslpfDawe8FyyOSZb&si=hUaYS8pEfCUUCxpK"
											target="_blank" rel="nofollow noopener">Learn code with
											Durgesh</a>
									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="col-lg-3 p-5 link-color">
						<div class="card" style="width: 18rem; background-color: #D9E6FF">
							<img src="./images/sql.jpg" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">Sql</h5>
								<p class="card-text">JavaScript often abbreviated as JS, is
									a programming language that is one of the core technologies of
									the World Wide Web.</p>
							</div>
							<ul class="list-group list-group-flush">

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLsjUcU8CQXGFFAhJI6qTA8owv3z9jBbpd&si=EANrkcMdXNSv0wZT"
											target="_blank" rel="nofollow noopener">QAFox</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/-fW2X7fh7Yg?si=HN9UbFk8XocbxdfI"
											target="_blank" rel="nofollow noopener">One short</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/hlGoQC332VM?si=UfCB1gezEH4EXX2_"
											target="_blank" rel="nofollow noopener">One short</a>
									</div>
								</li>



							</ul>
						</div>
					</div>
					<div class="col-lg-3 p-5 link-color">
						<div class="card" style="width: 18rem; background-color: #FFF4A3">
							<img src="./images/dsa.png" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">data
									structure</h5>
								<p class="card-text">JavaScript often abbreviated as JS, is
									a programming language that is one of the core technologies of
									the World Wide Web.</p>
							</div>
							<ul class="list-group list-group-flush">

								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLdo5W4Nhv31bbKJzrsKfMpo_grxuLl8LU&si=x7hgAaqoBnRC_gJC"
											target="_blank" rel="nofollow noopener">Jennys lecture</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PLDzeHZWIZsTryvtXdMr6rPh4IDexB5NIA&si=32_B16xoxWfClASj"
											target="_blank" rel="nofollow noopener">Love Babber</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PL9gnSGHSqcnr_DxHsP7AW9ftq0AtAyYqJ&si=6UM1baOn7V8SPgGH"
											target="_blank" rel="nofollow noopener">Kunal Kushwaha</a>
									</div>
								</li>

							</ul>
						</div>
					</div>
					<div class="col-lg-3 p-5 link-color">
						<div class="card" style="width: 18rem; background-color: #d9eee1">
							<img src="./images/jquery.png" class="card-img-top" alt="..."
								class="img-fluid" height="150px">
							<div class="card-body">
								<h5 class="card-title"
									style="color: #235d00; font-weight: bold; font-size: 25px; text-align: center">jquery</h5>
								<p class="card-text">JavaScript often abbreviated as JS, is
									a programming language that is one of the core technologies of
									the World Wide Web.</p>
							</div>
							<ul class="list-group list-group-flush">
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtu.be/Yofox_h4zGQ?si=qSKKDUnYGLHwa-Wj"
											target="_blank" rel="nofollow noopener">Tech blog</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://youtube.com/playlist?list=PL0b6OzIxLPbzSyiC0PFaqeabe1aGhfrbW&si=YBhxTrwW1OfiKjpA"
											target="_blank" rel="nofollow noopener">Yahoo Baba</a>
									</div>
								</li>
								<li class="list-group-item">
									<div class="button_cont" align="center">
										<a class="example_d card-link text-dark"
											href="https://www.youtube.com/live/Rkvn_MA04fo?si=7DJyjzVLxaFwKNDX"
											target="_blank" rel="nofollow noopener">Simplelearn</a>
									</div>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="container text-center">
				<div class="row">
					<div class="col-lg-2 col-6  p-4">
						<div class="card" style="width: 10rem;">
							<a href="https://www.programiz.com/" class="card-link text-dark"><img
								src="./images/programmize.jpg" class="card-img-top" alt="..."
								width="100%"></a>
						</div>
					</div>

					<div class="col-lg-2 col-6  p-4">
						<div class="card" style="width: 10rem;">
							<a href="https://www.geeksforgeeks.org/"
								class="card-link text-dark"><img src="./images/gfg.jpg"
								class="card-img-top" alt="..." width="100%"></a>
						</div>
					</div>

					<div class="col-lg-2 col-6  p-4">
						<div class="card" style="width: 10rem;">
							<a href="https://www.javatpoint.com/" class="card-link text-dark"><img
								src="./images/tpoint.png" class="card-img-top" alt="..."
								width="100%"></a>
						</div>
					</div>

					<div class="col-lg-2 col-6  p-4">
						<div class="card" style="width: 10rem;">
							<a href="https://www.w3schools.com/" class="card-link text-dark"><img
								src="./images/w3s.png" class="card-img-top" alt="..."
								width="100%"></a>
						</div>
					</div>

					<div class="col-lg-2  col-6  p-4">
						<div class="card" style="width: 10rem;">
							<a href="https://www.tutorialspoint.com/index.htm"
								class="card-link text-dark"><img
								src="./images/tutorials.png" class="card-img-top" alt="..."
								width="100%"></a>
						</div>
					</div>

					<div class="col-lg-2  col-6  p-4">
						<div class="card" style="width: 10rem; height: 10rem;">
							<a href="https://www.hackerrank.com/" class="card-link text-dark"><img
								src="./images/hacker.jpg" class="card-img-top" alt="..."
								style="width: 100%; height: fit-content;"></a>
						</div>
					</div>

				</div>
			</div>

			<div class="container mb-5 text-center">
				<div class="row">
					<div class="col-lg-12">
						<div class="card bg-dark text-white">
							<img src="./images/p.jpg" class="card-img" alt="..."
								height="350px">
							<div class="card-img-overlay">
								<h2 class="card-title "
									style="font-family: 'Baloo Bhai 2', cursive; font-weight: bold; font-size: 30px;">PROJECTS</h2>
								<p class="card-text">Simply put, a project is a series of
									tasks that need to be completed to reach a specific outcome.</p>
								<p>
									Frontend projects: <a
										href="https://youtube.com/playlist?list=PL9fjioyw5JU5sMf8I51K4NWON869Ps01T&si=SRu-1Qg4bKzV6FkM">Click
										here</a>
								</p>
								<p>
									Javascript projects: <a
										href="https://youtube.com/playlist?list=PLajjpPyc2dmbt0KebBvT9VQV8y2R_IO7j&si=hsH1rTmP2sadeMh-">Click
										here</a>
								</p>
								<p>
									Core java projects: <a
										href="https://youtu.be/GEKF890oQYc?si=STfXsTboh6Aw8Nm8">Click
										here</a>
								</p>
								<p>
									Advanced java projects: <a
										href="https://youtube.com/playlist?list=PLQTYNpk8jwk33-kHcV0xdBy4L617EVnAt&si=h7I6S08CKnANGw49">play
										list 1</a> <a
										href="https://youtube.com/playlist?list=PL0zysOflRCekMr91amXBNwWku4PmeFaFD&si=HOX-IuF2Tewh9x5-">play
										list 2</a> <a
										href="https://youtube.com/playlist?list=PL0zysOflRCekb_ggXQYQSu-g-kWKgudBf&si=YufWg7G298zIzIP3">play
										list 3</a>
								</p>
								<p>
									Python projects: <a
										href="https://youtube.com/playlist?list=PLjVLYmrlmjGfAUdLiF2bQ-0l8SwNZ1sBl&si=Fc067Bce35rXOzCB">Click
										here</a>
								</p>
							</div>
						</div>
					</div>

				</div>
			</div>
			<br> <br> <br>


			<!-- End of Navbar -->

			<%
			Message m = (Message) session.getAttribute("msg");
			if (m != null) {
			%>

			<div class="alert <%=m.getCssClass()%>" role="alert">
				<%=m.getContent()%>

			</div>
			<%
			session.removeAttribute("msg");
			}
			%>




			<!-- profile modal -->
			<!-- Button trigger modal -->


			<!-- Modal -->
			<div class="modal fade" id="profile-modal" tabindex="-1"
				role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div
							class="modal-header primary-background text-white align-center">
							<h5 class="modal-title" id="exampleModalLabel">HELLO!!</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body">
							<div class="container text-center">
								<img src="profilepics/<%=user.getProfile()%>" class="img-fluid"
									style="border-radius: 50%; max-width: 200px"><br>
								<h5 class="modal-title mt-3" id="exampleModalLabel"><%=user.getName()%></h5>
							</div>

							<!-- details start -->
							<div id="profile-details">
								<table class="table table-striped">

									<tbody>
										<tr>
											<th scope="row">ID::</th>
											<td><%=user.getId()%></td>
										</tr>
										<tr>
											<th scope="row">Name::</th>
											<td><%=user.getName()%></td>
										</tr>
										<tr>
											<th scope="row">Email::</th>
											<td><%=user.getEmail()%></td>
										</tr>
										<tr>
											<th scope="row">Gender::</th>
											<td><%=user.getGender()%></td>
										</tr>
										<tr>
											<th scope="row">About::</th>
											<td><%=user.getAbout()%></td>
										</tr>
										<tr>
											<th scope="row">Register Date::</th>
											<td><%=user.getDateTime()%></td>
										</tr>

									</tbody>
								</table>
							</div>
							<!-- details end -->

							<!-- profile edit -->
							<div id="profile-edit" style="display: none;">
								<h3 class="mt-2" style="color: red; text-align: center;">Please
									Edit Carefully</h3>
								<form action="EditServletE" method="POST"
									enctype="multipart/form-data">
									<table class="table">
										<tr>
											<td>ID :</td>
											<td><%=user.getId()%></td>
										</tr>
										<tr>
											<td>Name :</td>
											<td><input type="text" class="form-control"
												name="user-name" value="<%=user.getName()%>"></td>
										</tr>
										<tr>
											<td>Email :</td>
											<td><input type="email" class="form-control"
												name="user-email" value="<%=user.getEmail()%>"></td>
										</tr>
										<tr>
											<td>Password :</td>
											<td><input type="password" class="form-control"
												name="user-password" value="<%=user.getPassword()%>"></td>
										</tr>
										<tr>
											<td>Gender:</td>
											<td><%=user.getGender().toUpperCase()%></td>
										</tr>
										<tr>
											<td>About :</td>
											<td><textarea rows="3" class="form-control"
													name="user-about">
         	 			<%=user.getAbout()%>
         	 		</textarea></td>
										</tr>
										<tr>
											<td>Edit Profile :</td>
											<td><input type="file" name="user-image"
												class="form-control"></td>
										</tr>

									</table>

									<div class="container">
										<button type="submit" class="btn btn-outline-primary">SAVE</button>
									</div>
								</form>
							</div>


						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
							<button id="edit-profile-button" type="button"
								class="btn btn-primary">Edit</button>
						</div>
					</div>
				</div>
			</div>
			<!-- end profile modal -->

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
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
			<script src="js/myJs.js" type="text/javascript"></script>

			<script>
				$(document).ready(function() {

					let editStatus = false;

					$('#edit-profile-button').click(function() {

						if (editStatus == false) {
							$("#profile-details").hide()

							$("#profile-edit").show()
							editStatus = true;
							$(this).text("Back")
						}

						else {
							$("#profile-details").show()

							$("#profile-edit").hide()
							editStatus = false;
							$(this).text("Edit")

						}
					})
				});
			</script>
</body>
</html>