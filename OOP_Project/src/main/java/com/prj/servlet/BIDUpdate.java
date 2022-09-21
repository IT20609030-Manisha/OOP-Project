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
 * Servlet implementation class BIDUpdate
 */
@WebServlet("/BIDUpdate")
public class BIDUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int bidid = Integer.parseInt(request.getParameter("bidid"));
		int proid = Integer.parseInt(request.getParameter("ref"));
		String suppid = request.getParameter("suppid");
		double unitprice = Double.parseDouble(request.getParameter("uprice"));
		double qty = Double.parseDouble(request.getParameter("qty"));
		
		boolean isTrue;
		
		isTrue = BidDBUtil.updateBID(bidid, proid, suppid, unitprice, qty);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Your update was succeful.....');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Sorry, Your update was unsucceful.....');");
			out.println("location='BID.jsp'");
			out.println("</script>");
		}
	}

}
