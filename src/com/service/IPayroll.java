package com.service;

import java.util.ArrayList;

import com.model.Employee;
import com.model.Leave;
import com.model.Salary;

public interface IPayroll {

	public void registeremployee(Employee employee);
	
	public Employee getEmployee(String empid);
	
	public void updateEmployee(Employee employee);
	
	public void DeleteEmployee(String empid);
	
	public ArrayList<Employee> ListEmployee();
	
	public boolean checkEmp(String empid);
	
	public void leaveRequest(Leave leave);
	
	public Leave getLeaveRequest(int leaveid);
	
	public void UpdateLeaveRequest(Leave leave);
	
	public void DeleteLeaveRequest(int leaveid);
	
	public ArrayList<Leave> LeaveList();
	
	//Salary
	
	public void enterAttendance(Salary salary);
	
	public int getAttendance(String empid, String month);
	
	public void insertSalary(Salary salary);
	
	public ArrayList<Salary> SalaryList();
	
	public Salary getSalary(int salaryid);
	
	public void insertPayroll(Salary salary);
	
	public ArrayList<Salary> MonthlySalary(String month);
}
