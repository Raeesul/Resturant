package com.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.model.Employee;
import com.model.Leave;
import com.model.Salary;
import com.util.DBConnection;

public class EmployeeImpl implements IEmployee{

	private static Connection connection;
	private static PreparedStatement pt;
	//private static CallableStatement ct;
	//private static Statement st; 
	
	@Override
	public void registeremployee(Employee employee) {
		// TODO Auto-generated method stub
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Employee(Emp_Id,FullName,Email,Nic,Contact,Address,Dob,Gender,Working_type,Join_date,Department,Designation) values(?,?,?,?,?,?,?,?,?,?,?,?)");
			pt.setString(1, employee.getEmpid());
			pt.setString(2, employee.getFullname());
			pt.setString(3, employee.getEmail());
			pt.setString(4, employee.getNic());
			pt.setString(5, employee.getContact());
			pt.setString(6, employee.getAddress());
			pt.setString(7, employee.getDob());
			pt.setString(8, employee.getGender());
			pt.setString(9, employee.getType());
			pt.setString(10, employee.getJoin_date());
			pt.setString(11, employee.getDepartment());
			pt.setString(12, employee.getDesignation());
			
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	
	@Override
	public void DeleteEmployee(String empid) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			
			
			pt=connection.prepareStatement("delete from Employee where Emp_Id=?");
			pt.setString(1,empid);
			pt.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
			
	}
	

	@Override
	public Employee getEmployee(String empid) {
		// TODO Auto-generated method stub
		
		Employee employee=new Employee();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Employee where Emp_Id=?");
			pt.setString(1, empid);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				employee.setEmpid(result.getString(1));
				employee.setFullname(result.getString(2));
				employee.setEmail(result.getString(3));
				employee.setNic(result.getString(4));
				employee.setContact(result.getString(5));
				employee.setDob(result.getString(6));
				employee.setAddress(result.getString(7));
				employee.setGender(result.getString(8));
				employee.setType(result.getString(9));
				employee.setJoin_date(result.getString(10));
				employee.setDesignation(result.getString(12));
				employee.setDepartment(result.getString(11));
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return employee;
	}



	@Override
	public void updateEmployee(Employee employee) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update Employee set FullName=?,Email=?,Nic=?,Contact=?,Address=?,Dob=?,Gender=?,Working_type=?,Department=?,Designation=? where Emp_Id=?");
			pt.setString(1, employee.getFullname());
			pt.setString(2, employee.getEmail());
			pt.setString(3, employee.getNic());
			pt.setString(4, employee.getContact());
			pt.setString(5, employee.getAddress());
			pt.setString(6, employee.getDob());
			pt.setString(7, employee.getGender());
			pt.setString(8, employee.getType());
			pt.setString(9, employee.getDesignation());
			pt.setString(10, employee.getDepartment());
			
			pt.setString(11, employee.getEmpid());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	

	@Override
	public boolean checkEmp(String empid) {
		// TODO Auto-generated method stub
		
		boolean find=false;
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Employee where Emp_Id=?");
			pt.setString(1, empid);
			pt.execute();
			find=true;
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			
			e.printStackTrace();
			return find;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return find;
		}
		
		return find;
		
	}

	@Override
	public ArrayList<Employee> ListEmployee() {
		// TODO Auto-generated method stub
		ArrayList<Employee> employees=new ArrayList<>();
		   
        
        try {
				   connection=DBConnection.initializedb();
				   pt=connection.prepareStatement("Select * from Employee");
				   ResultSet result=pt.executeQuery();
				   
				   while(result.next()) {
					   
					   Employee employee = new Employee();
					   
					   employee.setEmpid(result.getString(1));
					   employee.setFullname(result.getString(2));
					   employee.setEmail(result.getString(3));
					   employee.setNic(result.getString(4));
					   employee.setContact(result.getString(5));
					   employee.setAddress(result.getString(7));
					   employee.setDob(result.getString(6));
					   employee.setGender(result.getString(8));
					   employee.setType(result.getString(9));
					   employee.setJoin_date(result.getString(10));
					   employee.setDepartment(result.getString(11));
					   employee.setDesignation(result.getString(12));
					   
					   employees.add(employee);
					   
				   }
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 				   
        return employees;

	}
	

	@Override
	public void leaveRequest(Leave leave) {
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into LeaveRequest(Emp_Id,From_date,To_date,NoOfDays,reason,Status) values(?,?,?,?,?,?)");
			pt.setString(1, leave.getEmpid());
			pt.setString(2, leave.getFromdate());
			pt.setString(3, leave.getTodate());
			pt.setInt(4, leave.getNoOfdays());
			pt.setString(5, leave.getReason());
			pt.setString(6, leave.getStatus());
			
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	
	@Override
	public Leave getLeaveRequest(int leaveid) {
		
		Leave leave = new Leave();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from LeaveRequest where Leave_ID=?");
			pt.setInt(1, leaveid);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				leave.setEmpid(result.getString(2));
				leave.setFromdate(result.getString(3));
				leave.setTodate(result.getString(4));
				leave.setNoOfdays(result.getInt(5));
				leave.setReason(result.getString(6));
				leave.setStatus(result.getString(7));
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return leave;
	}

	
	
	@Override
	public void UpdateLeaveRequest(Leave leave) {
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("update LeaveRequest set Emp_Id=?,From_date=?,To_date=?,NoOfDays=?,Reason=?,Status=? where Leave_ID=?");
			
			pt.setString(1, leave.getEmpid());
			pt.setString(2, leave.getFromdate());
			pt.setString(3, leave.getTodate());
			pt.setInt(4, leave.getNoOfdays());
			pt.setString(5, leave.getReason());
			pt.setString(6, leave.getStatus());
			
			pt.setInt(7, leave.getLeaveId());
			
			pt.executeUpdate();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	
	@Override
	public void DeleteLeaveRequest(int leaveid) {
		
		try {
			connection=DBConnection.initializedb();
			
			
			pt=connection.prepareStatement("delete from LeaveRequest where Leave_ID=?");
			pt.setInt(1,leaveid);
			pt.execute();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	
	@Override
	public ArrayList<Leave> LeaveList() {
		
		ArrayList<Leave> leave=new ArrayList<>();   
        
        try {
				   connection=DBConnection.initializedb();
				   pt=connection.prepareStatement("Select * from LeaveRequest");
				   ResultSet result=pt.executeQuery();
				   
				   while(result.next()) {
					   
					   Leave leaves = new Leave();
					   
					   leaves.setLeaveId(result.getInt(1));
					   leaves.setEmpid(result.getString(2));
					   leaves.setFromdate(result.getString(3));
					   leaves.setTodate(result.getString(4));
					   leaves.setNoOfdays(result.getInt(5));
					   leaves.setReason(result.getString(6));
					   leaves.setStatus(result.getString(7));
					   
					   leave.add(leaves);
				   }
				   
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
 				   
        return leave;
	}


	@Override
	public void enterAttendance(Salary salary) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Attendance(emp_id,AttendMonth,tot_days_per_month) values(?,?,?)");
			pt.setString(1, salary.getEmpid());
			pt.setString(2, salary.getMonth());
			pt.setInt(3, salary.getDays());
			
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	
	@Override
	public int getAttendance(String empid, String month) {
		// TODO Auto-generated method stub
		
		int attendance = 0;
		//Employee employee=new Employee();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select * from Attendance where emp_id=? AND AttendMonth=?");
			pt.setString(1, empid);
			pt.setString(2, month);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				attendance = result.getInt(3);
			}
		}catch (Exception e) {
				
			}
		return attendance;
	}



	@Override
	public void insertSalary(Salary salary) {
		// TODO Auto-generated method stub
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("insert into Salary(Emp_Id,AttendMonth,BasicSal,OverTime,Leave,NetSalary) values(?,?,?,?,?,?)");
			pt.setString(1, salary.getEmpid());
			pt.setString(2, salary.getMonth());
			pt.setFloat(3, salary.getBasicSal());
			pt.setFloat(4, salary.getOvertime());
			pt.setFloat(5, salary.getLeave());
			pt.setFloat(6, salary.getTotSalary());
			
			pt.execute();
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}


	@Override
	public ArrayList<Salary> getSalary(String empid, String month, String month2) {
		// TODO Auto-generated method stub
		
		ArrayList<Salary> salary1 = new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select attendMonth,BasicSalary,Overtime,NetSalary from Salary where Emp_Id=? AND attendMonth BETWEEN ? AND ?");
			pt.setString(1, empid);
			pt.setString(2, month);
			pt.setString(3, month2);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				Salary salary = new Salary();
				salary.setMonth(result.getString(1));
				salary.setBasicSal(result.getFloat(2));
				salary.setOvertime(result.getFloat(3));
				salary.setTotSalary(result.getFloat(4));
				
				salary1.add(salary);
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
					
						e.printStackTrace();
		}
		return salary1;
	}


	@Override
	public ArrayList<Salary> MonthlySalary(String month) {
		// TODO Auto-generated method stub

		ArrayList<Salary> salary2 = new ArrayList<>();
		
		try {
			connection=DBConnection.initializedb();
			pt=connection.prepareStatement("select Emp_iD,BasicSalary,Overtime,Leave,NetSalary from Salary where attendMonth=?");
			pt.setString(1, month);
			ResultSet result=pt.executeQuery();
			
			while(result.next()){
				
				Salary salary = new Salary();
				
				salary.setEmpid(result.getString(1));
				salary.setBasicSal(result.getFloat(2));
				salary.setOvertime(result.getFloat(3));
				salary.setLeave(result.getFloat(4));
				salary.setTotSalary(result.getFloat(5));
				
				salary2.add(salary);
			}
		}catch (Exception e) {
			// TODO Auto-generated catch block
					
						e.printStackTrace();
		}
		return salary2;
	}


	
}
