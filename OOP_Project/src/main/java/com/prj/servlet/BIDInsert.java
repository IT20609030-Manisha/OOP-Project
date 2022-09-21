package com.prj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.util.BidDBUtil;

/**
 * Servlet implementation class BIDInsert
 */
@WebServlet("/BIDInsert")
public class BIDInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int proid = Integer.parseInt(request.getParameter("ref"));
		String Supp_ID = request.getParameter("sup");
		Double UnitPrice = Double.parseDouble(request.getParameter("price"));
		Double SupplyQty = Double.parseDouble(request.getParameter("supqty"));
		
		boolean isTrue;
		
		isTrue = BidDBUtil.insertBid(proid, Supp_ID, UnitPrice, SupplyQty);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your submittion is Short Listed.....Thank you!!!');");
			out.println("location='index.jsp'");
			out.println("</script>");
			
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Sorry, Your submittion was unsucceful.....');");
			out.println("location='BidView.jsp'");
			out.println("</script>");
			
		}
		
		
	}

}
