<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Servlet</title>
</head>
<body>
		<h1>Servlet���κ��� ����� JSP</h1>
		<p>
				�����ֽ� ���� 5�� ���ϸ� ${result} �Դϴ�.
				<%-- <%=request.getAttribute("result") %> EL��ȯ--%>
		</p>
</body>
</html>

<%--
	jsp ����
	1. <% %> : ����� �ڹ� �ڵ�
		<% if( 5 > 1 ){ System.out.println("5�� 1���� ũ��.") } %>

	2. <%! %> : ����, �޼��� ���� ���� �� ��
		<!% String name = "������" %>
		<!% public int plus(int a, int b){ return a + b; } %>

	3. <%= %> : ����, �޼��� ���� ���࿡ ���� �κ� 
		<%= name %>
		<%= plus(10, 5)%>		

	->  EL �� ��ȯ�ϸ� ${result}�� Ȯ��� �̸��� ����.
--%>