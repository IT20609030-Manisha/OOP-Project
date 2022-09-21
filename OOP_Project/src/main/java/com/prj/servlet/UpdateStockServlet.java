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
 * Servlet implementation class UpdateStockServlet
 */
@WebServlet("/UpdateStockServlet")
public class UpdateStockServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int isoNum = Integer.parseInt(request.getParameter("iso"));
		String medName = request.getParameter("name");
		String medCategory = request.getParameter("cat");
		double medPrice = Double.parseDouble(request.getParameter("pri"));
		int medQty = Integer.parseInt(request.getParameter("qty"));
		int medExpYear = Integer.parseInt(request.getParameter("expYr"));
		int medExpMonth = Integer.parseInt(request.getParameter("expMon"));
		String medPrescription = request.getParameter("pres");
		
		boolean isTrue;
		
		isTrue = StockDBUtil.updateStock(isoNum, medName, medCategory, medPrice, medQty, medExpYear, medExpMonth, medPrescription);
		
		if(isTrue == true) {
			
			List<Stock> medDetails = StockDBUtil.getMedicineDetails(isoNum);
			request.setAttribute("medDetails", medDetails);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("DisplayMedicine.jsp"); 
			dispatcher.forward(request, response);
		}
		else {
			RequestDispatcher dispatcher2 = request.getRequestDispatcher("unsuccess.jsp");
			dispatcher2.forward(request, response);
		}
	}

}
