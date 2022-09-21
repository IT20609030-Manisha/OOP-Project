package com.prj.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.prj.model.Procurenew;
import com.prj.util.ProcurementDBUtil;

/**
 * Servlet implementation class ProcurementServlet
 */
@WebServlet("/ProcurementServlet")
public class ProcurementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		List<Procurenew> Procdetails = ProcurementDBUtil.ListProcure();
		request.setAttribute("Procdetails", Procdetails);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("ProcurementList.jsp");
		dispatcher.forward(request, response);
	}

}
