<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Add Employee</title>
</head>
<style>
.col {
	float: center;
	width: 50%;
	margin: auto;
	padding: 0 50px;
	margin-top: 6px;
	color: lightyellow;
}

body {
	background-image:
		url('http://mapiraj.me/wp-content/uploads/2018/04/website-background-images-2.jpg');
}
</style>


<jsp:include page="menu.jsp" />
<body style="background-color: lightyellow;">
	<div class="col">
		<h3 style="color: red;">Add New Employee</h3>
		<img alt="Logo"
			src="https://cdn0.iconfinder.com/data/icons/iconshock-windows7-icons/256/administrator_add.png">
		</br>
		<div id="addEmployee" class="form-signin">
			<form:form action="/addNewEmployee" method="post"
				value="${employees}" modelAttribute="emp">
				<p>
					<label style="color: gray;">Enter Employee Id</label>
					<form:input path="empId" value="${employees.empId}"
						class="form-control" />
				</p>
				<p>
					<label style="color: gray;">Enter Name</label>
					<form:input path="empName" value="${employees.empName}"
						class="form-control" />
				</p>
				<button class="btn btn-lg btn-primary btn-block" type="submit">Submit</button>
			</form:form>
		</div>
	</div>
</body>
</html>
