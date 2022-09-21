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

@WebServlet("/UpdateCustomerServlet")
public class UpdateCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deliveryID 	= request.getParameter("deliveryID");
		String name 		= request.getParameter("name");
		String email 		= request.getParameter("email");
		String phone 		= request.getParameter("phone");
		String address 		= request.getParameter("address");
		String province 	= request.getParameter("province");
		
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.updatecustomer(deliveryID, name, email, phone, address ,province);
		
		if(isTrue == true) {
			
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(deliveryID);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
		else {
			List<Customer> cusDetails = CustomerDBUtil.getCustomerDetails(deliveryID);
			request.setAttribute("cusDetails", cusDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("useraccount.jsp");
			dis.forward(request, response);
		}
	}

}
