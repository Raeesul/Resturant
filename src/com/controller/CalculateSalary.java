package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//import javax.servlet.http.HttpSession;

import com.model.Employee;
import com.model.Salary;
import com.service.EmployeeImpl;
import com.service.IEmployee;

/**
 * Servlet implementation class CalculateSalary
 */
@WebServlet("/CalculateSalary")
public class CalculateSalary extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CalculateSalary() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Employee employee = new Employee();
		Salary salary = new Salary();
		
		IEmployee iemployee = new EmployeeImpl();
		
		employee = iemployee.getEmployee(request.getParameter("empid"));
		
		float basicSalary = salary.calcBasicSal(employee.getDesignation());
		
		String empid = request.getParameter("empid");
		String month = request.getParameter("month");
		int day = iemployee.getAttendance(empid, month);
		
		salary.setDays(day);
		
		if(day > 20) {
			float overtime = salary.calcOvertime(employee.getDesignation(), salary.getDays());
			salary.setOvertime(overtime);
		}else if(day < 14){
			float leave = salary.calcLeave(employee.getDesignation(), salary.getDays());
			salary.setLeave(leave);
			}
		
		salary.setBasicSal(basicSalary);
		salary.setEmpid(empid);
		salary.setMonth(month);
		
		request.setAttribute("salary", salary);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CalculateSalary.jsp");
		dispatcher.forward(request, response);
	}

}
