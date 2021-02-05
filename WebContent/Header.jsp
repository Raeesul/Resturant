<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/header.css">
<title>Header</title>

<script>

$('#myList a[href="about_us.jpg"]').on('click', function () {
	  $(this).tab('show')
	})
	
</script>

</head>
<body>

<div style="width:100%">
<header class="header"><img src="images/image.jpg"></header>


<nav class="navbar navbar-expand-lg navbar navbar-dark" style="background-color:#000;">
  <a class="navbar-brand text-dark" style="color: #0000cc;">
  	<img src="images/logo.jpg" width="100" height="50" alt=""></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link text-light" href="index.jsp"> Home </a>
      </li>
      <li class="nav-item">
        <a class="nav-link text-light" href="AboutUs.jsp"> About Us </a>
      </li>
    </ul>
    
    <form class="form-inline mr-2 mr-lg-0 ml-auto">
      <input class="form-control mr-sm-1" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-light my-2 my-sm-0" type="submit">
      	<i class="fa fa-search"></i>
      </button>
    </form>
      
    <ul class="navbar-nav">
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle text-light" href="#" id="navbarDropdown" role="button" data-toggle="dropdown">
          <span class="fa fa-user"></span>
             		Sign Up 
        </a>
        <div class="dropdown-menu">
          <a class="dropdown-item" href="StudentRegister.jsp"> Patient </a>
          <a class="dropdown-item" href="StudentRegister.jsp"> Doctor </a>
          <a class="dropdown-item" href="StaffRegister.jsp"> Staff </a>
        </div>
      </li>
      <li class="nav-item">
      	<a class="nav-link text-light" href="Login.jsp">
      		<span class="fa fa-sign-in"> </span>
      			Login 
      	</a>
      </li>
      
   </ul>
    
  </div>
</nav>
</div>
</body>
</html>