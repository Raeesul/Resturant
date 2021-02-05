package com.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.Salary;
import com.service.EmployeeImpl;
import com.service.IEmployee;

/**
 * Servlet implementation class ViewSalaryDetails
 */
@WebServlet("/ViewSalaryDetails")
public class ViewSalaryDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ViewSalaryDetails() {
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
		// TODO Auto-generated method stub
		//doGet(request, response);
		
		IEmployee iemployee =new EmployeeImpl();
		
		String empid = (request.getParameter("empid"));
		String from = (request.getParameter("fromdate"));
		String to = (request.getParameter("todate"));
		
		String fname = iemployee.getEmployee(empid).getFullname();
		
		
		
		Salary salary = new Salary();
		salary.setFullname(fname);
		
		ArrayList<Salary> summary = new ArrayList<>();
		
		summary = iemployee.getSalary(empid, from, to);
		
		salary.setSummary(summary);
		
		request.setAttribute("salary", salary);
		RequestDispatcher dispatcher=getServletContext().getRequestDispatcher("/SalarySummary.jsp");
		dispatcher.forward(request, response);
	}

}
