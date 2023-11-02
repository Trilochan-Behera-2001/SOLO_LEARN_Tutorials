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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="css/myStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>
.banner-background {
	clip-path: polygon(100% 0%, 100% 70%, 70% 88%, 34% 70%, 0 87%, 0 0);
}

.font-texturl {
	font-family: 'Kalam', cursive;
	font-weight: 900;
	font-size: 30px;
}

body {
	background: #192a56;
}

form fieldset {
	border-radius: 6px;
}

form {
	width: 401px;
	height: 100vh;
	margin: auto;
	margin-top: 120px;
}

form textarea {
	width: 100%;
	background: #273c75;
	outline: none;
	border: none;
}

form legend {
	font-size: large;
	color: rgb(239, 16, 112);
}

form label {
	color: #fff;
	font-size: 15px;
}

form input {
	width: 100%;
	border: none;
	outline: none;
	border-bottom: 2px solid rgb(239, 16, 112);
	letter-spacing: 4px;
	background: transparent;
}

form div {
	display: flex;
	justify-content: center;

	/* text-align: center; */
}

form div button {
	margin: 7px;
	padding: 12px;
	border-radius: 5px;
	border: none;
	outline: none;
	font-size: 15px;
	font-weight: 600;
	cursor: pointer;
	background: #e84118;
	color: #fff;
}

form div button:hover {
	background: transparent;
	box-shadow: 1px 1px 15px black;
	transition: 0.5s;
}

form div a {
	margin-top: 12px;
	text-align: center;
	text-decoration: none;
	color: rgb(251, 18, 18);
	padding: 5px;
	font-size: 21px;
	font-weight: 600;
}
</style>
</head>
<body>

	<nav
		class="navbar navbar-expand-lg navbar-dark primary-background fixed-top">
		<a class="navbar-brand" href="profile.jsp"><span
			class="fa fa-universal-access"></span> SOLO Learn</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">

			</ul>
			<ul class="navbar-nav mr-right">

				<li class="nav-item"><a class="nav-link" href="#!"
					data-toggle="modal" data-target="#profile-modal"> <span
						class="fa fa-user-circle-o "></span>&nbsp;<%=user.getName()%></a></li>

				<li class="nav-item"><a class="nav-link" href="LogoutServlet">
						<span class="fa fa-power-off"></span> LogOut!
				</a></li>
			</ul>
		</div>
	</nav>


	<form action="POST">
		<fieldset>
			<legend>
				<b>Contact Us</b>
			</legend>
			<label for="name">Name: </label><br>
			<br> <input type="text" id="name" placeholder="Enter your name"
				name="name" maxlength="16"><br>
			<br> <label for="ph">Contact no.: </label><br>
			<br> <input type="tel" id="ph"
				placeholder="Enter your contact no." name="ph" maxlength="10"><br>
			<br> <label for="email">Email-id: </label><br>
			<br> <input type="email" id="email" name="Email-id"
				placeholder="Enter your emil-id"><br>
			<br> <label for="add"> Address: </label><br>
			<br>
			<textarea id="add" rows="3" cols="7">

            </textarea>
			<br>
			<br> <label for="fed"> What you want: </label><br>
			<br>
			<textarea id="fed" rows="3" cols="7">

            </textarea>
			<br>
			<br>

			<div>
				<a href="profile.jsp">
					<button>Submit</button>
				</a>
			</div>
		</fieldset>
	</form>

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
	<div class="modal fade" id="profile-modal" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header primary-background text-white align-center">
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