<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page session="false"%>
<html>
<head>
<title>Show Employees</title>
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

#employee {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

#employee td, #employee th {
	border: 1px solid #ddd;
	padding: 8px;
}

#employee tr:nth-child(even) {
	background-color: #f2f2f2;
}

#employee tr:nth-child(odd) {
	background-color: #F0F8FF;
}

#employee tr:hover {
	background-color: #ddd;
}

#employee th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #4CAF50;
	color: white;
}

body {
	background-image:
		url('https://directlinedev.com/media/services/service/background/background_11.wide.jpeg');
}
</style>

<body style="background-color: lightyellow;">
	<jsp:include page="menu.jsp" />
	<div class="col">
		<h3 style="color: red;">Show all Employees</h3>
		</br>
		<table id="employee">
			<tr>
				<th>Employee Id</th>
				<th>Employee Name</th>
				<th>Edit Employee</th>
				<th>Delete Employee</th>
			</tr>
			<ul>
				<c:forEach var="listValue" items="${employees}">
					<tr>
						<td>${listValue.empId}</td>
						<td>${listValue.empName}</td>
						<td align="center"><a
							href="<c:url value='${pageContext.request.contextPath}/editEmployee/${listValue.empId}'/>"
							class="btn btn-success custom-width">Edit</a></td>
						<td align="center"><a
							href="<c:url value='${pageContext.request.contextPath}/deleteEmployee/${listValue.empId}'/>"
							class="btn btn-success custom-width" style="color: red;">
								Delete </a></td>
					</tr>
				</c:forEach>
			</ul>
		</table>
	</div>
</body>
</html>