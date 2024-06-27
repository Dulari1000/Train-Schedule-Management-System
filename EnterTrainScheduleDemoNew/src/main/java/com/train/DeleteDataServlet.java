package com.train;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class DeleteDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tid = request.getParameter("tid");
		boolean isTrue;
		
		isTrue = EnterTrainDBUtil.deleteTrain(tid);
		
		if (isTrue == true) {
			RequestDispatcher dispatcher = request.getRequestDispatcher("EnterTrainScheduleNew.jsp");
			dispatcher.forward(request, response);
		}
		else {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("u.jsp");
			dis2.forward(request, response);
			
			/*List<Customer> cusdetail = customerDButil.insertCustomer(name);
			request.setAttribute("cusdetail", cusdetail);
			
			RequestDispatcher dispatcher = request.getRequestDispatcher("useraccount.jsp");
			dispatcher.forward(request, response);*/
		}
    }
}