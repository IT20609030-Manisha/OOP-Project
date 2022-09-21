package com.payment;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/UpdatePaymentServlet")
public class UpdatePaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		int Payment_ID = Integer.parseInt(request.getParameter("Payment_ID"));
		String Card_Number = request.getParameter("Card_Number");
		String Expiry_Date = request.getParameter("Expiry_Date");
		String First_Name = request.getParameter("First_Name");
		String Last_Name = request.getParameter("Last_Name");
		int CVV = Integer.parseInt(request.getParameter("CVV"));
		
		boolean istrue; 
		istrue = PaymentDBUtill.UpdatePayment(Payment_ID, Card_Number, Expiry_Date, First_Name, Last_Name, CVV);
		
		
		if(istrue == true) {
			
			List<Payment> payDetails = PaymentDBUtill.getpaymenttDetails(Payment_ID);
			request.setAttribute("payDetails", payDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("success.jsp"); 
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher2.forward(request, response);
		}
	}

}
