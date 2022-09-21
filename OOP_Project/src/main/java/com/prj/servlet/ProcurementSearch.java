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

import com.prj.util.ProcurementDBUtil;
import com.prj.model.Procurenew;
/**
 * Servlet implementation class ProcurementSearch
 * 
 */
@WebServlet("/ProcurementSearch")
public class ProcurementSearch<Procurenew> extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String item = request.getParameter("searchproc");
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		boolean isTrue;
		
		isTrue = ProcurementDBUtil.validate(item);
	
		if (isTrue == true) {
			List<Procurenew> Procdetails = (List<Procurenew>) ProcurementDBUtil.getProcurement(item);
			request.setAttribute("Procdetails", Procdetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Procure.jsp");
			dis.forward(request, response);
			
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Sorry, no related items for your search');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}
	}

}
