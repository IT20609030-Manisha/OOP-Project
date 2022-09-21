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

import com.prj.model.Procurenew;
import com.prj.util.ProcurementDBUtil;

/**
 * Servlet implementation class ProcurementDelete
 */
@WebServlet("/ProcurementDelete")
public class ProcurementDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int procid = Integer.parseInt(request.getParameter("ref"));
		
		boolean isTrue;
		
		isTrue = ProcurementDBUtil.deleteProcure(procid);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Successfully deleted your record');");
			out.println("location='ProcurementView.jsp'");
			out.println("</script>");
		}
		
		else {
			List<Procurenew> Procdetails = ProcurementDBUtil.getProcurementDetails(procid);
			request.setAttribute("Procdetails", Procdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Procure.jsp");
			dis.forward(request, response);
		}
	}

}
