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


@WebServlet("/shoppingServlet")
public class shoppingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
		
		List<newShopping> displayDetail = AddShoppingCartDBUtil.display();
			request.setAttribute("displayDetail", displayDetail);
			
          RequestDispatcher dis = request.getRequestDispatcher("newShopping.jsp");
			
			dis.forward(request, response);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
			
	}

}
