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

		String number = request.getParameter("number");

		int result = Integer.parseInt(number) * 5;

		request.setAttribute("result", result);
		
		RequestDispatcher requestDispatcher = request.getRequestDispatcher("/WEB-INF/index.jsp");

		requestDispatcher.forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}

//1. <% %> : 실행될 자바 코드
//	<% if( 5 > 1 ){ System.out.println("5는 1보다 크다.") } %>
//
//2. <%! %> : 변수, 메서드 등을 선언 할 때
//	<!% String name = "윤혜림" %>
//	<!% public int plus(int a, int b){ return a + b; } %>
//
//3. <%= %> : 변수, 메서드 등의 실행에 관한 부분
//	<%= name %>
//	<%= plus(10, 5)%>
