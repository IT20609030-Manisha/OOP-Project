package com.prj.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.model.Customer;
import com.prj.util.CustomerDBUtil;


@WebServlet("/DeleteCustomerServlet")
public class DeleteCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deliveryID = request.getParameter("deliveryID");
		boolean isTrue;
		
		isTrue = CustomerDBUtil.deleteCustomer(deliveryID);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("customerinsert.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(deliveryID);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);
			
		}
		
		
		
	}

}
