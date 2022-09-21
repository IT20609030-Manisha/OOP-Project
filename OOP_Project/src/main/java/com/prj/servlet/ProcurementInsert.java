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
 * Servlet implementation class ProcurementInsert
 */
@WebServlet("/ProcurementInsert")
public class ProcurementInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int RefNo = Integer.parseInt(request.getParameter("ref"));
		String ItemName = request.getParameter("item");
		int Qty = Integer.parseInt(request.getParameter("qty"));
		String date = request.getParameter("bidClose");
		
		
		boolean isTrue;
		
		isTrue = ProcurementDBUtil.insertProcurement(RefNo, ItemName, Qty, date);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Successfully added your records');");
			out.println("location='ProcureView.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Sorry.....Your submittion was unsuccessful..');");
			out.println("location='ProcurementView.jsp'");
			out.println("</script>");
		}
	
	}

}
