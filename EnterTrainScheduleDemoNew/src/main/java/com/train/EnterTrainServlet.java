package com.train;

import java.io.IOException;


import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/EnterTrainServlet")
public class EnterTrainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String tid = request.getParameter("tid");
		String tname = request.getParameter("tname");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String seats = request.getParameter("seats");
	
		
		List<Train> trdetail = EnterTrainDBUtil.insertTrain1(tid, tname, date, time, start,end,seats);
		request.setAttribute("trdetail", trdetail);
		
		RequestDispatcher dis = request.getRequestDispatcher("View.jsp");
		dis.forward(request,response);
		
	}
	
}
		
		
		
		
		
		
		
		
		
		
/*boolean isTrue;
		
		isTrue =EnterTrainDBUtil.insertTrain(tid, tname, date, time, start,end,seats);
		
		
		if(isTrue == true) {
			
	
			RequestDispatcher dis = request.getRequestDispatcher("View.jsp");
			dis.forward(request, response);
			
			
		}else 
		
		{
			
			
			RequestDispatcher dis2 = request.getRequestDispatcher("u.jsp");
			dis2.forward(request, response);
		}
		
		
	}
}
*/
