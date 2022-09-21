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
 * Servlet implementation class BIDDelete
 */
@WebServlet("/BIDDelete")
public class BIDDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String suppid = request.getParameter("suppid");
		
		boolean isTrue;
		
		isTrue = BidDBUtil.deleteBid(suppid);
		
		if (isTrue == true) {
			out.println("<script type='text/javascript'>");
			out.println("alert('Successfully deleted your record');");
			out.println("location='BidView.jsp'");
			out.println("</script>");
		}
		
		else {
			List<BIDnew> BidDetails = BidDBUtil.getBidDetails(suppid);
			request.setAttribute("BidDetails", BidDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("index.jsp");
			dis.forward(request, response);
		}
	}

}
