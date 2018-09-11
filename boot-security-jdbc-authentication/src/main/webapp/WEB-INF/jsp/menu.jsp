<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
	background-color: #333;
}

li {
	float: left;
}

li a {
	display: block;
	color: white;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
}

li a:hover {
	background-color: #111;
}
</style>

<!-- <div
	style="border: 1px solid #ccc; padding: 5px; margin-bottom: 20px; background-color: lightyellow;"
	class="form-signin"> -->

<ul>
	<li><a href="${pageContext.request.contextPath}/welcome">Home</a></li>

	<li><a href="${pageContext.request.contextPath}/addNewEmployee">Add
			Employee</a></li>
	<li><a href="${pageContext.request.contextPath}/getEmployees">Show
			Employees</a></li>

	<li style="float: right"><a href="/logout">Logout</a></li>


	<li><form id="logoutForm" method="POST"
			action="${contextPath}/logout"></li>

	</form>
</ul>
<!-- </div> -->