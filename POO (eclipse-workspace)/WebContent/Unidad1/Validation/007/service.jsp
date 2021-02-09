<%@page import="Unidad1.Validator"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
<body>
	<%
		if(
			request.getParameter("fullName") != null &&
			request.getParameter("age") != null
			)
		{
			Validator validator = new Validator();
			String fullName = validator.cleanUserName(request.getParameter("fullName").toString());
			int age = validator.cleanAge(request.getParameter("age").toString());
			
			out.print("<span style='color:green;'>Se han limpiado los parametros recibidos.</span><br>");
			out.print(String.format("<strong>Username: </strong>%s<br>",fullName));
			out.print(String.format("<strong>Age: </strong>%s<br>",age));
		}
		else
		{
			out.print("<span style='color:red;'>No existen los parametros requeridos.</span>");
		}
	
	%>
</body>
</html>