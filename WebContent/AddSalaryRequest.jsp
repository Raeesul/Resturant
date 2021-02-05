<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/add.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>Add Salary Request</title>

<script>
	function goBack() {
  		window.history.back();
	}
</script>

</head>
<body>

	<div class="container">
		<h4 style="text-align: center;">Add Salary</h4>
		
		<form action="">
			
			<div class="input-group input-group-icon">
				<input type="text" name="empid" id="empid" placeholder="Employee ID" required>
				<div class="input-icon"><i class="fa fa-lock"></i></div>
			</div>
			
			<div class="input-group input-group-icon">
				<input type="text" name="tolsal" id="totsal" placeholder="Total Salary" required>
				<div class="input-icon"><i class="fa fa-file-text"></i></div>
			</div>
			
			<div class="input-group input-group-icon">
				<input type="date" name="date" id="date" placeholder="DD/MM/YYYY" required>
				<div class="input-icon"><i class="fa fa-calendar"></i></div>
			</div>
			
			<button onclick="goBack()" class="submit">Back</button>
			
			<button type="submit" class="cancel">ADD</button>
		</form>
	</div>
	
</body>
</html>