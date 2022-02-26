package com.asj.mini;

import java.io.IOException;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/home")
public class HomeServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		
		StringBuilder sb = new StringBuilder();
		String number = request.getParameter("number");
		int num = Integer.parseInt(number);
		for (int i = 1; i <= 9; i++) {
			sb.append(num).append(" X ").append(i).append(" = ").append(num * i).append("<br>");
		}

		request.setAttribute("num", num);
		request.setAttribute("result", sb);

		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");

		requestDispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
