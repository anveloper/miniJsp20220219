<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Servlet</title>
</head>
<body>
		<h1>Servlet으로부터 실행된 JSP</h1>
		<p>
				보내주신 값에 5를 곱하면 ${result} 입니다.
				<%-- <%=request.getAttribute("result") %> EL변환--%>
		</p>
</body>
</html>

<%--
	jsp 실행
	1. <% %> : 실행될 자바 코드
		<% if( 5 > 1 ){ System.out.println("5는 1보다 크다.") } %>

	2. <%! %> : 변수, 메서드 등을 선언 할 때
		<!% String name = "윤혜림" %>
		<!% public int plus(int a, int b){ return a + b; } %>

	3. <%= %> : 변수, 메서드 등의 실행에 관한 부분 
		<%= name %>
		<%= plus(10, 5)%>		

	->  EL 로 변환하면 ${result}로 확장된 이름을 쓴다.
--%>