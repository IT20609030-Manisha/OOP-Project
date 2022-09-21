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
import com.prj.util.AddShoppingCartDBUtil;

/**
 * Servlet implementation class DeleteShoppingServlet
 */
@WebServlet("/DeleteShoppingServlet")
public class DeleteShoppingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int itemid = Integer.parseInt(request.getParameter("itemid"));
		boolean isTrue;
		
		isTrue = AddShoppingCartDBUtil.deleteShoppingCart(itemid);
		
		if (isTrue == true) {
//			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
//			dispatcher.forward(request, response);
			
			List<newShopping> displayDetail = AddShoppingCartDBUtil.display();
			request.setAttribute("displayDetail", displayDetail);
			
			RequestDispatcher dis = request.getRequestDispatcher("newShopping.jsp");
			dis.forward(request, response);	
		}
		else {
			RequestDispatcher dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
		}
	}

}
