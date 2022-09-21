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
 * Servlet implementation class DeleteStockServlet
 */
@WebServlet("/DeleteStockServlet")
public class DeleteStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		int IsoNum = Integer.parseInt(request.getParameter("iso"));
		
		boolean isTrue;
		
		isTrue = StockDBUtil.deleteStock(IsoNum);
		
		if(isTrue == true) {
			
			//RequestDispatcher dispatcher = request.getRequestDispatcher("StockHome.jsp");
			//dispatcher.forward(request, response);
			out.println("<script type='text/javascript'>");
			out.println("alert('Record is deleted from stock');");
			out.println("location='StockHome.jsp'");
			out.println("</script>");
		}
		else {
			
			List<Stock> medDetails = StockDBUtil.getMedicineDetails(IsoNum);
			request.setAttribute("medDetails", medDetails);
			
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("DisplayMedicine.jsp");
			dispatcher2.forward(request, response);
		}
	}

}
