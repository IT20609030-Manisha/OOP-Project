package com.prj.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.model.Stock;
import com.prj.util.StockDBUtil;

/**
 * Servlet implementation class CheckExpiringMedServlet
 */
@WebServlet("/CheckExpiringMedServlet")
public class CheckExpiringMedServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int year = Integer.parseInt(request.getParameter("expYear")) ;
		int month = Integer.parseInt(request.getParameter("expMonth"));
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		List<Stock> medDetails = StockDBUtil.CheckExpiringMedicine(year, month);
		request.setAttribute("medDetails", medDetails);
		
		if ( medDetails == null) {
			out.println("<script type='text/javascript'>");
			out.println("alert('No expiry Medicines')");
			out.println("location='AnalyzeStock.jsp'");
			out.println("</script>");
		}
		else {
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("ExpMedicine.jsp");
			dispatcher.forward(request, response);
			
		}
		
	}

}
