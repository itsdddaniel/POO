<%@page import="Unidad1.user"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Validacion de campos de texto</title>
	</head>
	<body>
		<%
			if(request.getParameter("fullName") != null &&
				request.getParameter("fullName").toString().trim().matches("^([A-Z][a-z]){2,}( [A-Z][a-z]{2,3}]){1,3}$") &&
			   	request.getParameter("age") != null &&
				request.getParameter("age").toString().trim().matches("^(1[6-9])|([2-9]\\d|(10[0-5]))$"))
			{
				String fullName = request.getParameter("fullName").toString().trim();
				int age = Integer.parseInt(request.getParameter("age").toString().trim());
				user User = new user(fullName,age);
				out.print("<span style='color:green;'>Los parametros son validos.</span>");
			}
			else
			{
				out.print("<span style='color:red;'>Los parametros ingresados no son validos</span>.");
			}
		%>
	</body>
</html>