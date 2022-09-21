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

import com.prj.model.BIDnew;
import com.prj.util.BidDBUtil;

/**
 * Servlet implementation class BIDSearch
 */
@WebServlet("/BIDSearch")
public class BIDSearch extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String suppid = request.getParameter("searchbid");
		
		boolean isTrue;
		
		isTrue = BidDBUtil.validate(suppid);
		
		if (isTrue == true) {
			List<BIDnew> BidDetails = BidDBUtil.getBID(suppid);
			request.setAttribute("BidDetails", BidDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("BID.jsp");
			dis.forward(request, response);
		} else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Incorrect supplier ID');");
			out.println("location='index.jsp'");
			out.println("</script>");
		}
		
	}

}
