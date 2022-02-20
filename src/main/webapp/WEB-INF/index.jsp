<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Servlet</title>
</head>
<body>
	<h1>Servlet으로부터 실행된 JSP</h1>
	<p>
		보내주신 값에 5를 곱하면 <%=request.getAttribute("result") %>
	</p>
</body>
</html>
