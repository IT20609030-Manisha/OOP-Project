package com.prj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.util.StockDBUtil;

/**
 * Servlet implementation class AddStock
 */
@WebServlet("/AddStock")
public class AddStock extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int isoNumber = Integer.parseInt(request.getParameter("isoNumber"));
		String medicineName = request.getParameter("medName");
		//String type = request.getParameter("medType");
		String category = request.getParameter("medCategory");
		double price = Double.parseDouble(request.getParameter("price")) ;
		int quantity = Integer.parseInt(request.getParameter("MedQty"));
		int expiryYear = Integer.parseInt(request.getParameter("medExpYear"));
		int expiryMonth = Integer.parseInt(request.getParameter("medExpMonth"));
		String prescription = request.getParameter("medPrescript");
		
		
		
		boolean result;
		
		result = StockDBUtil.insertStock(isoNumber, medicineName, category, price, quantity,expiryYear, expiryMonth, prescription );
		
		if(result == true) {
			//RequestDispatcher dispatcher = request.getRequestDispatcher("StockHome.jsp");
			//dispatcher.forward(request, response);
			
			out.println("<script type='text/javascript'>");
			out.println("alert('New medicine added to the Stock');");
			out.println("location='StockHome.jsp'");
			out.println("</script>");
			
		}
		else {
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher2.forward(request, response);
		}
	}

}
