<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>


<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Log in with your credentials</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>

<style>
.col {
	float: center;
	width: 50%;	
	margin: auto;
	padding: 0 50px;
	margin-top: 6px;
}
</style>
<style>
body {
    background-image: url('https://prmceam.ac.in/wp-content/uploads/2017/05/background-learner1.jpg');
  margin: auto;
  }
</style>

<body>

	<div class="col">

		<form method="POST" action="/login" class="form-signin">
			<h2 class="form-heading">Log in</h2>
			<div class="form-group ${error != null ? 'has-error' : ''}">

				<span>${msg}</span> <input name="username" type="text"
					class="form-control" placeholder="Username" autofocus="true" /> </br> <input
					name="password" type="password" class="form-control"
					placeholder="Password" /> </br> <span>${errorMsg}</span>

				<button class="btn btn-lg btn-primary btn-block" type="submit">LogIn</button>
			</div>

		</form>
		<a href="${pageContext.request.contextPath}/register" style="color: black;">Register New
			User</a>

	</div>

</body>
</html>
