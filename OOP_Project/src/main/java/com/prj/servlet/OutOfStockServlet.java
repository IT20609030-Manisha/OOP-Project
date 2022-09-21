package com.prj.servlet;

import java.io.IOException;
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
 * Servlet implementation class OutOfStockServlet
 */
@WebServlet("/OutOfStockServlet")
public class OutOfStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		List<Stock> medDetails = StockDBUtil.DisplayOutStockdetails();
		request.setAttribute("medDetails", medDetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("OutOfStock.jsp");
		dispatcher.forward(request, response);
	}

}
