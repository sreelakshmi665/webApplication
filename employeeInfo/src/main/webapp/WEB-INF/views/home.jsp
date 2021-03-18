<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.container {
	padding-top: 150px;
	padding-left: 350px;
}

body {
	background-color: olive;
}

.div1 {
	padding-top: 10px;
	padding-left: 350px;
}
</style>
</head>
<body>
	<div class="div1">
		<h1>Employee management</h1>
	</div>
	<div class="container">


		<div>
			<h4>
				<label>display all employees</label> <a href="get"
					class="link-primary"><input type="button" value="display emp"
					class="btn btn-primary"></a>
			</h4>
		</div>
		<div>
			<h4>
				<label>add employee details</label> <a href="add"
					class="link-primary"><input type="button" value="add emp"
					class="btn btn-primary"></a>
			</h4>
		</div>
	</div>

</body>
</html>