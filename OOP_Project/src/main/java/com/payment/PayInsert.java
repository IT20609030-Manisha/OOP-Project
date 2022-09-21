package com.payment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PayInsert")
public class PayInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String Card_Number = request.getParameter("Card_Number");
		String Expiry_Date = request.getParameter("Expiry_Date");
		String First_Name = request.getParameter("First_Name");
		String Last_Name = request.getParameter("Last_Name");
		int CVV = Integer.parseInt (request.getParameter("CVV"));
		
		boolean isTrue;
	     
		
		isTrue = PaymentDBUtill.insertPay(Card_Number, Expiry_Date, First_Name, Last_Name, CVV);
		System.out.println("PayInsert");
		if (isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
		}
		else {
			RequestDispatcher dis2 = request.getRequestDispatcher ("unsuccess.jsp");
			dis2.forward(request, response); 
			
		}
	}

}












