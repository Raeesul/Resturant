package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Employee;
import com.service.EmployeeImpl;
import com.service.IEmployee;

/**
 * Servlet implementation class UpdateEmployee
 */
@WebServlet("/UpdateEmployee")
public class UpdateEmployee extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateEmployee() {
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
		
		
		Employee employee=new Employee();
		IEmployee employeeimpl=new EmployeeImpl();
		
		employee.setEmpid(request.getParameter("empid"));
		employee.setFullname(request.getParameter("fname"));
		employee.setEmail(request.getParameter("email"));
		employee.setNic(request.getParameter("nic"));
		employee.setContact(request.getParameter("phone"));
		employee.setAddress(request.getParameter("address"));
		employee.setDob(request.getParameter("dob"));
		employee.setGender(request.getParameter("gender"));
		employee.setType(request.getParameter("type"));
		employee.setDepartment(request.getParameter("dept"));
		employee.setDesignation(request.getParameter("desc"));
		
		employeeimpl.updateEmployee(employee);
		
		request.setAttribute("value", 1);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/ViewEmployee.jsp");
		dispatcher.forward(request, response);
	}

}
