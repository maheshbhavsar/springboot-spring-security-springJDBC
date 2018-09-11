<%@page import="com.springsecurity.poc.model.Employee"%>
<%@page import="java.util.Map"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Edit Employee Detail</title>
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
	color: lightyellow;
}

body {
	background-image:
		url('https://www.retail-associates.com/wp-content/uploads/2016/10/website-login-background.jpg');
}
</style>

<body style="background-color: lightyellow;">
	<jsp:include page="menu.jsp" />
	<div class="col">
		<h3 style="color: red;">Edit Employee</h3>
		<form:form action="/updateEmployee" method="post" value="employee"
			modelAttribute="employee" class="form-signin">
			<p>
				<label style="color: gray;">Enter Employee Id</label>
				<form:input path="empId" readonly="true" class="form-control" />
			</p>
			<p>
				<label style="color: gray;">Enter Name</label>
				<form:input path="empName" class="form-control" />
			</p>
			<button class="btn btn-lg btn-primary btn-block" type="submit">Update</button>

		</form:form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>