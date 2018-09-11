<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
</head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<style>
.col {
	float: center;
	width: 50%;
	margin: auto;
	padding: 0 50px;
	margin-top: 6px;
}
</style>
<script>
	function validateForm() {
		var x = document.forms["registerForm"]["username"].value;
		var y = document.forms["registerForm"]["password"].value;
		if (x == "") {
			alert("Username must be filled out");
			return false;
		}
		if (y == "") {
			alert("Password must be filled out");
			return false;
		}
	}
</script>
<style>
body {
    background-image: url('https://houndfaces.com/img/regBackgrounds/1.jpg');
  }
</style>

</head>


<body>

	<div class="col">
		<h3 style="color: red;">Register New User</h3>
		<div id="registerEmployee">
			<form:form action="/register" name="registerForm" method="post"
				onsubmit="return validateForm()" modelAttribute="user"
				class="form-signin">
				<div class="form-group">
					<p>
						<label>Enter Username</label>
						<form:input path="username" placeholder="Username"
							class="form-control" />
					</p>
					<p>
						<label>Enter Password</label>
						<form:input path="password" placeholder="Password"
							class="form-control" />
					</p>

					<p>
						<label>Enter Role</label>
						<form:select path="role" class="form-control">
							<form:option value="ADMIN">ADMIN</form:option>
							<form:option value="USER">USER</form:option>
						</form:select>
					</p>

					<span>${errorMsg}</span> <input type="SUBMIT"
						class="btn btn-lg btn-primary btn-block" value="Submit" />
				</div>

			</form:form>

		</div>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
