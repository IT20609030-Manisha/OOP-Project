package com.prj.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.util.SupplierDBUtil;

/**
 * Servlet implementation class SupplierInsert
 */
@WebServlet("/SupplierInsert")
public class SupplierInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String connum = request.getParameter("connum");
		String email = request.getParameter("email");
		String Uname = request.getParameter("uname");
		String password = request.getParameter("psswrd");
		
		boolean isTrue;
		
		isTrue = SupplierDBUtil.insertSupplier(fname, lname, connum, email, Uname, password);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Congratulations!!!! successfully create your account');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Sorry, Your account was not successfully created..Please try again');");
			out.println("location='CreateAccount.jsp'");
			out.println("</script>");
		}
	}

}


