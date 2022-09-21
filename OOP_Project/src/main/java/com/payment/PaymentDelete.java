package com.payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PaymentDelete")
public class PaymentDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");

		int payid = Integer.parseInt(request.getParameter("Payment_ID"));

		boolean isTrue;

		isTrue = PaymentDBUtill.deletePayment(payid);

		if (isTrue == true) {
		out.println("<script type='text/javascript'>");
		out.println("alert('Successfully deleted your record');");
		out.println("location='Pay.jsp'");
		out.println("</script>");
		}

		else {
		List<Payment> PayDetails = PaymentDBUtill.getpaymenttDetails(payid);
		request.setAttribute("PayDetails", PayDetails);

		RequestDispatcher dis = request.getRequestDispatcher("Pay.jsp");
		dis.forward(request, response);
		}
	}
	
	}


