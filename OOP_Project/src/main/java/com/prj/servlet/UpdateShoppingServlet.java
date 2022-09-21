package com.prj.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.model.newShopping;
import com.prj.test.StockNDBUtil;
import com.prj.util.AddShoppingCartDBUtil;
import com.prj.util.*;

/**
 * Servlet implementation class UpdateShoppingServlet
 */
@WebServlet("/UpdateShoppingServlet")
public class UpdateShoppingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int itemid = Integer.parseInt(request.getParameter("itemid"));
		String itemname = request.getParameter("itemname");
		String price = request.getParameter("price");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String total = request.getParameter("total");
		
		boolean isTrue;
		boolean Ttrue;
		
		isTrue = AddShoppingCartDBUtil.updateShoppingCart( quantity, itemid);
		
		Ttrue = StockNDBUtil.UpdateQuantity(quantity, itemname);
		
		if(isTrue == true) {
//			RequestDispatcher dis = request.getRequestDispatcher("newShopping.jsp");
//			dis.forward(request, response);
			
			List<newShopping> displayDetail = AddShoppingCartDBUtil.display();
			request.setAttribute("displayDetail", displayDetail);
			
	      RequestDispatcher dis = request.getRequestDispatcher("newShopping.jsp");
			
			dis.forward(request, response);
		}
		else {
			RequestDispatcher dis = request.getRequestDispatcher("home.jsp");
			dis.forward(request, response);
		}
		
		
	}

}
