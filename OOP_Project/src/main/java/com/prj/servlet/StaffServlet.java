package com.prj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.util.StaffDBUtil;

/**
 * Servlet implementation class StaffServlet
 */
@WebServlet("/StaffServlet")
public class StaffServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int id = Integer.parseInt(request.getParameter("staffid"));
		String password = request.getParameter("password");
		
		boolean isTrue;
		
		isTrue = StaffDBUtil.validateStaff(id, password);
		
		if(isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("StockHome.jsp");
			dispatcher.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect Username or Password!!');");
			out.println("location='StaffLogin.jsp'");
			out.println("</script>");
		}
	}

}
