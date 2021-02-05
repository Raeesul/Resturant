<%@page import="com.model.Salary"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="css/add.css">
    <title>Calculate Salary</title>
	<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="css/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">
    <!-- Bootstrap core JavaScript-->
    <script src="js/jquery.min.js"></script>
    <!-- Core plug in JavaScript-->
    <script src="js/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Side bar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="EmployeeDashboard.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-laugh-wink"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Admin <sup>Employee management</sup></div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item">
                <a class="nav-link" href="EmployeeDashboard.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Dashboard</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Interface
            </div>

            <!-- Nav Item - Pages Collapse Menu -->

           	<li class="nav-item">
                <a class="nav-link collapsed" href="EmployeeRegister.jsp"><i class="fa fa-user"></i>Add New Employee</a>
            </li>
           
           	<li class="nav-item">
                <a class="nav-link collapsed" href="ViewEmployee.jsp"><i class="fa fa-address-card"></i>Employee Details</a>
            </li>
           	
           	<li class="nav-item">
                <a class="nav-link" href="EnterAttendance.jsp"><i class="fa fa-calendar"></i>Enter Attendance</a>
            </li>
           	
           	<li class="nav-item">
                <a class="nav-link" href="LeaveRequest.jsp"><i class="fa fa-file-text"></i>Leave Request</a>
            </li>
           	
           	<li class="nav-item active">
                <a class="nav-link" href="CalculateSalary.jsp"><i class="fa fa-calculator"></i>Calculate Salary</a>
            </li>
            
            <li class="nav-item">
                <a class="nav-link collapsed" href="ViewSalaryDetails.jsp"><i class="fa fa-file-text"></i>Salary Details</a>
            </li>
            

            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>
        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    <form
                        class="d-none d-sm-inline-block form-inline mr-auto ml-md-3 my-2 my-md-0 mw-100 navbar-search">
                        <div class="input-group">
                            <input type="text" class="form-control bg-light border-0 small" placeholder="Search for..."
                                aria-label="Search" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <button class="btn btn-primary" type="button">
                                    <i class="fas fa-search fa-sm"></i>
                                </button>
                            </div>
                        </div>
                    </form>

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="alertsDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-bell fa-fw"></i>
                                <!-- Counter - Alerts -->
                                <span class="badge badge-danger badge-counter"></span>
                            </a>
                            <!-- Dropdown - Alerts -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="alertsDropdown">
                                <h6 class="dropdown-header">
                                    Alerts Center
                                </h6>
                                
                                <a class="dropdown-item text-center small text-gray-500" href="#">Show All Alerts</a>
                            </div>
                        </li>

                        <!-- Nav Item - Messages -->
                        <li class="nav-item dropdown no-arrow mx-1">
                            <a class="nav-link dropdown-toggle" href="#" id="messagesDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-envelope fa-fw"></i>
                                <!-- Counter - Messages -->
                                <span class="badge badge-danger badge-counter"></span>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-list dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="messagesDropdown">
                                <h6 class="dropdown-header">
                                    Message Center
                                </h6>
                                <a class="dropdown-item text-center small text-gray-500" href="#">Read More Messages</a>
                            </div>
                        </li>

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small">Raeesul Islam</span>
                                <img class="img-profile rounded-circle"
                                    src="images/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profile
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Settings
                                </a>
                                <a class="dropdown-item" href="#">
                                    <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Activity Log
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->
                
                
				<!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                    <div class="d-sm-flex align-items-center justify-content-between mb-4">
                        <h1 class="h3 mb-0 text-gray-800">Calculate Salary</h1>
                        
                    </div>

                    <!-- Content Row -->
                    <div class="container-fluid">
		
						<%Salary salary =(Salary) request.getAttribute("salary");%>
						
						  <form action="./CalculateSalary" method="post">
				
							
							
							
								<div class="row">
								<div class="col-half">
								<h4>Employee ID</h4>
								<div class="input-group input-group-icon">
			 						<input type="text" id="empid" name="empid" placeholder=" Employee ID" pattern="[E0-9]{4}" required>
			 						<div class="input-icon"><i class="fa fa-lock"></i></div>
			 					</div>
			 					</div>
				 				</div>
				 				
				 				<div class="row">
								<div class="col-half">
								<h4>Salary Month</h4>
								<div class="input-group">
									<input type="radio" name="month" value="January" id="January"/>
						          	<label for="January">January</label>
						          	<input type="radio" name="month" value="February" id="February"/>
						          	<label for="February">February</label>
						          	
						          	<input type="radio" name="month" value="May" id="May"/>
						          	<label for="May">May</label>
						          	<input type="radio" name="month" value="June" id="June"/>
						          	<label for="June">June</label>
						          	
						          	<input type="radio" name="month" value="September" id="September"/>
						          	<label for="September">September</label>
						          	<input type="radio" name="month" value="October" id="October"/>
						          	<label for="October">October</label>
						          	
								</div>
				 				</div>
				 				
				 				<div class="col-half">
				 				<h4>..</h4>
				 				<div class="input-group">
				 					<input type="radio" name="month" value="March" id="March"/>
						          	<label for="March">March</label>
						          	<input type="radio" name="month" value="April" id="April"/>
						          	<label for="April">April</label>
						          	
						          	<input type="radio" name="month" value="July" id="July"/>
						          	<label for="July">July</label>
						          	<input type="radio" name="month" value="August" id="August"/>
						          	<label for="August">August</label>
						          	
						          	<input type="radio" name="month" value="November" id="November"/>
						          	<label for="November">November</label>
						          	<input type="radio" name="month" value="December" id="December"/>
						          	<label for="December">December</label>
				 				</div>
				 				</div>
				 				</div>
				 			
				 				<button type="submit" class="cancel"> Calculate </button>
			 				
			 	
			 			</form>
			 			<br><br>
			 					
			 			<%if(salary!=null) { %>
			 			
							<form action="./CalculateSalary" method="post">
							
			 					<div class="row">
			 					<div class="col-half">
			 					<h4>No Of Days Attended</h4>
			 					<div class="input-group">
			 						<input type="text" id="days" name="days" value="<%=salary.getDays() %>" readonly > 
			 					</div>
			 					</div>
			 					</div>
			 					
			 					<div class="row">
			 					<div class="col-half">
			 					<h4>Basic Salary</h4>
			 					<div class="input-group">
				 					<input type="number" id="basicsalary" name="basicsalary" value="<%=salary.getBasicSal() %>" readonly> 
			 					</div>
			 					</div>
			 					</div>
			 					
			 					
			 					<%if(salary.getDays()>20){ %>
				 					<div class="row">
			 						<div class="col-half">
			 						<h4>Over Time Salary</h4>
			 						<div class="input-group">
					 					<input type="number" id="ot" name="ot" value="<%=salary.getOvertime() %>" readonly> 
				 					</div>
				 					</div>
				 					</div>
				 					
			 					<%}else if(salary.getDays()<=13){%>
			 					
				 					<div class="row">
			 						<div class="col-half">
			 						<h4>Leave Deduction</h4>
			 						<div class="input-group">
					 					<input type="number" id="leave" name="leave" value="<%=salary.getLeave() %>" readonly > 
									</div>
									</div>
									</div>
			 					<%} %>
				
								<div class="row">
			 					<div class="col-half">
			 					<h4>Net Salary</h4>
			 					<div class="input-group">
				 					<input type="number" id="netsalary" name="netsalary" value="<%=salary.getNetSal() %>" readonly > 
				 				</div>
				 				</div>
				 				</div>
			 					
			 					</form>
			 					
								<br><br>
							
								<div class="insertsal">
									<form action="./InsertSalary" method="post">
										<input type="hidden" name="empid" value="<%=salary.getEmpid() %>">
										<input type="hidden" name="date" value="<%=salary.getMonth() %>">
										<input type="hidden" name="basicsalary" value="<%=salary.getBasicSal() %>">
										<input type="hidden" name="ot" value="<%=salary.getOvertime() %>">
										<input type="hidden" name="leave" value="<%=salary.getLeave() %>">
										<input type="hidden" name="netsalary" value="<%=salary.getNetSal() %>">
										<button type="submit" class="submit"> Save </button>
									</form>
								</div>	
								
			 					
			 					<%} %>
					</div>
                    
                    </div>
                   </div>
                   
            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span style="color: black;">Copyright &copy; Your Website 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">�</span>
                    </button>
                </div>
                <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
                    <a class="btn btn-primary" href="Login.jsp">Logout</a>
                </div>
            </div>
        </div>
    </div>

    

</body>

</html>