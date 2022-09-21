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

import com.prj.model.Stock;
import com.prj.util.StockDBUtil;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int isoNumber = Integer.parseInt(request.getParameter("medId"));
		boolean isTrue ;
		
		isTrue = StockDBUtil.validate(isoNumber);
		
		if(isTrue == true) {
			
			List<Stock> medDetails = StockDBUtil.getMedicineDetails(isoNumber);
			request.setAttribute("medDetails", medDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("DisplayMedicine.jsp");
			dispatcher.forward(request, response);
		}
		else {
			out.println("<script type='text/javascript'>");
			out.println("alert('Search Results not found!!');");
			out.println("location='StockHome.jsp'");
			out.println("</script>");
		}
	}

}
