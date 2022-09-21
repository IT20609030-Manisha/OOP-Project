package com.prj.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.util.CustomerDBUtil;

@WebServlet("/CustomerInsertServlet")
public class CustomerInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String deliveryID 	= request.getParameter("deliveryID");
		String name 		= request.getParameter("name");
		String email 		= request.getParameter("email");
		String phone 		= request.getParameter("phone");
		String address 		= request.getParameter("address");
		String province 	= request.getParameter("province");
		
		boolean isTrue;
		
		isTrue = CustomerDBUtil.insertcustomer(deliveryID,name, email, phone,address ,province); 
		
		if(isTrue == true) {
			RequestDispatcher dis = request.getRequestDispatcher("updatecustomer.jsp");
			dis.forward(request, response);
	
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
		
		
	}
		
	}


