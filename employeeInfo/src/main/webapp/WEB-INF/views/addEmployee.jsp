<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.6.0/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.min.js"></script>
<meta charset="ISO-8859-1">
<title>Add employee</title>
<script>

function validate() {
	var name = document.getElementById("empName").value;
	var designation = document.getElementById("designation").value;
	var salary = document.getElementById("salary").value;
	var read= document.getElementById("read");
    var cycle= document.getElementById("cycle");
    var music= document.getElementById("music");
    var count=0;
    if(read.checked){
    count=count+1;
    }
    if(cycle.checked){
    count=count+1;
    }
    if(music.checked){
    count=count+1;
    }
	if (name == '') {
		alert('name field should not be blank');
		return false;
	} 
	if(designation==''){
	    alert('designation should not be blank.');
		return false;
	}
    if(salary==''){
	    alert('salary fild should not be blank.');
	    return false;
	}
	if(count<2){
	alert('please select atleast two checkboxes');
	return false;
	}
		return true;
}

</script>
<style type="text/css">
.container {
	padding-top: 100px;
	padding-left: 300px;
}

.div1 {
	padding-top: 30px;
	padding-left: 450px;
}

body {
	background: orange;
}

table {
	margin-left: 10px;
	margin-right: 10px;
}
</style>
</head>
<body>
	<div class="div1">
		<h1>Employee form</h1>
	</div>
	<div class="container">

		<form method="post" action="addemp" onsubmit="return validate()">
			<table>
				<tr>
					<td>
						<h4>
							<label>Employee Name:</label>
						</h4>
					</td>
					<td><input class="form-control" type="text" id="empName"
						name="empName" placeholder="name" style="width: 100%"></td>

				</tr>
				<tr>
					<td>
						<h4>
							<label>Employee designation:</label>
						</h4>
					</td>
					<td><input type="text" class="form-control" id="designation"
						name="designation" placeholder="designation" style="width: 100%">
					</td>
				</tr>
				<tr>
					<td>
						<h4>
							<label>Employee salary:</label>
						</h4>
					</td>
					<td><input class="form-control" type="text" id="salary"
						name="salary" placeholder="salary" style="width: 100%"></td>
				</tr>
				<tr>
					<td><h4>
							<label>Gender</label>
						</h4></td>
					<td><input type="radio" id="male" name="gender" value="male"
						checked="checked"><label>male</label><br> <input
						type="radio" id="female" name="gender" value="female"><label>female</label><br>

						<input type="radio" id="others" name="gender" value="others"><label>others</label>
					</td>
				</tr>
				<tr>
					<td><h4>hobbies</h4></td>
					<td><input type="checkbox" id="read" name="hobbies"
						value="reading"><label>reading</label><br> <input
						type="checkbox" id="cycle" name="hobbies" value="cycling"><label>cycling</label><br>

						<input type="Checkbox" id="music" name="hobbies"
						value="listening music"><label>music</label></td>
				</tr>


				<tr>
					<td><input type="submit" value="submit" name="submit"
						class="btn btn-primary"></td>
				</tr>
			</table>
		</form>
	</div>

</body>
</html>