<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="css/login.css">
<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
<title>Login Page</title>


</head>
<body class="">
<script>

var i='${un}';
if(i=="fail"){
	
	alert('Wrong Username or Password!');
}

</script>	
	<div class="overlay">
	
		<form action="./Login" method="post">
		  
		   <div class="con">
		   
		   <header class="head-form">
		      <h2>Log In</h2>
		      
		      <p>login here using your username and password</p>
		   </header>
		   
		   <br>
		   <div class="field-set">
		     
		         <span class="input-item">
		           <i class="fa fa-user-circle"></i>
		         </span>
		        
		         <input class="form-input" id="username" name="username" type="text" placeholder="@UserName" required>
		     
		      <br>
		     
		      <span class="input-item">
		        <i class="fa fa-key"></i>
		       </span>
		      
		      <input class="form-input" type="password" placeholder="Password" id="pwd"  name="pwd" required>
		     
		     <span>
		        <i class="fa fa-eye" aria-hidden="true"  type="button" id="eye"></i>
		     </span>
		     
		     
		      <br>
		
		      <button type="submit" class="log-in"> Log In </button>
		   </div>

		  </div>
		  
		</form>
	</div>
</body>
</html>