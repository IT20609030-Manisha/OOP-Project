package com.prj.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import com.prj.test.Stock2;
import com.prj.test.StockNDBUtil;
import com.prj.util.AddShoppingCartDBUtil;

/**
 * Servlet implementation class getItemServlet
 */
@WebServlet("/getItemServlet")
public class getItemServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int isoNo = Integer.parseInt(request.getParameter("isoNo"));
		
       boolean isTrue;
      isTrue = StockNDBUtil.validate(isoNo);
      
      if(isTrue==true)
      {
    	  List<Stock2> displayDetails = StockNDBUtil.display(isoNo);
			request.setAttribute("displayDetails", displayDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("middle.jsp");
			
			dis.forward(request, response);
      }
      
//      List<viewShopping_cart> displayDetail = AddShoppingCartDBUtil.display();
//  	request.setAttribute("displayDetail", displayDetail);
//  	
//  	RequestDispatcher dis = request.getRequestDispatcher("ShoppingCart.jsp");
//  	
//  	dis.forward(request, response);
	}

	
	
}
