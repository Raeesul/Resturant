<%@page import="com.service.EmployeeImpl"%>
<%@page import="com.service.IEmployee"%>
<%@page import="com.model.Leave"%>
<%@page import="java.util.ArrayList"%>
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
    <title>Leave Request</title>
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
    
    <style type="text/css">
    	table{
    		border-collapse: collapse;
    		width: 100%;
    		
    	}
    	
    	table, th, td {
			border: 1px solid black;
			text-align: center;
		}
		
		th{
			height: 50px;
		}
    </style>
    
    <script>
	
	
	</script>

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
           	
           	<li class="nav-item active">
                <a class="nav-link" href="LeaveRequest.jsp"><i class="fa fa-file-text"></i>Leave Request</a>
            </li>
           	
           	<li class="nav-item">
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
                        <h1 class="h3 mb-0 text-gray-800">Leave Request</h1>
                        
                    </div>

                    <!-- Content Row -->
                    <div class="container-fluid">
		
						
						  <form action="./AddLeaveRequest" method="post" class="form-container">
								
								
								<div class="row">
								<div class="col-half">
								<h4>Employee ID</h4>
								<div class="input-group input-group-icon">
									<input type="text" name="empid" id="empid" placeholder="Employee ID" pattern="[E0-9]{4}" required>
									<div class="input-icon"><i class="fa fa-lock"></i></div>
								</div>
								</div>
								
								<div class="col-half">
								<h4>Reason For Leave</h4>
								<div class="input-group input-group-icon">
									<input type="text" name="leave" id="leave" placeholder="Reason Of Leave" required>
									<div class="input-icon"><i class="fa fa-file-text"></i></div>
								</div>
								</div>
								</div>
								
								<div class="row">
								<div class="col-half">
								<h4>From Date</h4>
								<div class="input-group input-group-icon">
									<input type="date" name="fromdate" id="fromdate" placeholder="DD/MM/YYYY" required>
									<div class="input-icon"><i class="fa fa-calendar"></i></div>
								</div>
								</div>
								
								
								
								<div class="col-half">
								<h4>To Date</h4>
								<div class="input-group input-group-icon">
									<input type="date" name="todate" id="todate" placeholder="DD/MM/YYYY" required>
									<div class="input-icon"><i class="fa fa-calendar"></i></div>
								</div>
								</div>
								</div>
								
								<div class="row">
								<div class="col-half">
								<h4>No Of Days</h4>
								<div class="input-group input-group-icon">
									<input type="number" name="days" id="days" placeholder="No Of Days" required>
									<div class="input-icon"><i class="fa fa-calendar"></i></div>
								</div>
								</div>
								
								
								<div class="col-half">
								<h4>Status</h4>
								<div class="input-group">
									<input type="radio" name="status" value="Granted" id="Granted"/>
						          	<label for="Granted">Granted</label>
						          	<input type="radio" name="status" value="Rejected" id="Rejected"/>
						          	<label for="Rejected">Rejected</label>
								</div>
								</div>
								</div>
								
								<div class="row">
							      <div class="col-half">
							      	<button type="reset" class="cancel"> Cancel </button>
							      </div>
							      
							      <div class="col-half">
							      	<button type="submit" class="submit" id="submitbtn"> Submit </button>
							      </div>
							     </div>
							
							</form>
							
							<br><br><br>
							
						<h1>Leave Request List</h1>
							<table>
								<tr>
									<th>Leave ID</th>
									<th>Employee ID</th>
									<th>From Date</th>
									<th>To Date</th>
									<th>No Of Days</th>
									<th>Leave Reason</th>
									<th>Status</th>
									<th>Action</th>
								</tr>
							
							<%
								ArrayList<Leave> leave = new ArrayList<>();
                                IEmployee iemployee = new EmployeeImpl();
                                
                                leave = iemployee.LeaveList();
                                for(Leave leaves : leave){
							%>
							
								<tr>
									<td><%=leaves.getLeaveId() %></td>
									<td><%=leaves.getEmpid() %></td>
									<td><%=leaves.getFromdate() %></td>
									<td><%=leaves.getTodate() %></td>
									<td><%=leaves.getNoOfdays() %></td>
									<td><%=leaves.getReason() %></td>
									<td><%=leaves.getStatus() %></td>
									<td>
										<form action="./GetLeaveRequest" method="post">
											<input type="hidden" name="leave" id="leave" value="<%=leaves.getLeaveId()%>">
											<button type="submit" style="background-color: #4CAF50; font-size: 20px; border-radius: 12px;">Edit</button>
										</form>
										
										<form action="./DeleteLeaveRequest" method="post">
											<input type="hidden" name="leave" id="leave" value="<%=leaves.getLeaveId()%>">
											<button type="submit" style="background-color: #F44336; font-size: 20px; border-radius: 12px;">Delete</button>
										</form>
									</td>
								</tr>
								
							<%} %>
							
							</table>
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