<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
body{
background-color: aqua;
}
</style>
</head>
<body>
	<div class="container">
		<header>
			<h1>list of employees</h1>
		</header>

		<div>
			<table class="table table-bordered border-dark">
				<tr>
					<th>id</th>
					<th>name</th>
					<th>salary</th>
					<th>department</th>
					<th>gender</th>
					<th>hobbies</th>
				</tr>
				<c:forEach items="${employees}" var="employee">
					<tr>
						<td>${employee.eId}</td>
						<td>${employee.empName}</td>
						<td>${employee.salary}</td>
						<td>${employee.designation}</td>
						<td>${employee.gender}</td>
						<td>${employee.hobbies}</td>
					</tr>
				</c:forEach>
			</table>
			<a href="http://localhost:9090/emp/"><input type="submit" value="back" name="submit"
						class="btn btn-primary"></a>
		</div>
	</div>
</body>
</html>