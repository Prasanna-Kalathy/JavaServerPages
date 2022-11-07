<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Addition of 2 numbers</title>
</head>
<body>
	<%
	int Num1 = Integer.parseInt(request.getParameter("num1"));
	int Num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	<h1>
		Sum of
		<%=Num1%>
		and
		<%=Num2%>
		are
		<%=Num1 + Num2%></h1>
</body>
</html>