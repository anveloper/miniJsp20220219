<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Servlet</title>
</head>
<body>
		<h1>Servlet���κ��� ���� ${num}��</h1>
		<p style="width: 350px; border: 1px solid">
				���� �ֽ� ${num}���� servlet�� ����� ��������
				<br>
				${result} �Դϴ�.
				<%-- <%=request.getAttribute("result") %> EL��ȯ--%>
		</p>
		<h1>JSP�� ���� ����� ${num}��</h1>
		<div style="width: 350px; border: 1px solid">
				���� �ֽ� ${num}���� jsp�� ����� ��������
				<p>
						<%int num = (int) request.getAttribute("num");
						for (int i = 1; i <= 9; i++) {%>
						<%=num%> X <%=i%> = <%=num * i%><br />
						<%}%>
				</p>
				�Դϴ�.
		</div>
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