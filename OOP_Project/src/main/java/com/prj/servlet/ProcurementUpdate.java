package com.prj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.util.ProcurementDBUtil;

/**
 * Servlet implementation class ProcurementUpdate
 */
@WebServlet("/ProcurementUpdate")
public class ProcurementUpdate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int refNo = Integer.parseInt(request.getParameter("ref"));
		String itemName = request.getParameter("item");
		int quantity = Integer.parseInt(request.getParameter("qty"));
		String date = request.getParameter("bidClose");
		
		boolean isTrue;
		
		isTrue = ProcurementDBUtil.updateProcurement(refNo, itemName, quantity, date);
		
		if (isTrue == true) {
			//RequestDispatcher dispatcher = request.getRequestDispatcher("Procure.jsp");
			//dispatcher.forward(request, response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Your update was succeful.....');");
			out.println("location='ProcureView.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Sorry, Your update was unsucceful.....');");
			out.println("location='ProcureStaff.jsp'");
			out.println("</script>");
		}
	}

}
