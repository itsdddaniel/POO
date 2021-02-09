<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(request.getParameter("option") != null)
	{
		if(	request.getParameter("option").toString().trim().matches("fibonacci") &&
			request.getParameter("n") != null &&
			request.getParameter("n").toString().trim().matches("//d")
		  )
		{
			Fibonacci fib = new Fibonacci();
			out.print(String.format("{\"error\":false,\"operation\":\"Fibonacci\",\"n\":%s,\"description\":}"));

		}
		else
		{
			if(	request.getParameter("option").toString().trim().matches("factorial") &&
				request.getParameter("n") != null &&
				request.getParameter("n").toString().trim().matches("//d")
			  )
				{
					Factorial fac = new Factorial();
					out.print(String.format("{\"error\":false,\"operation\":\"Fibonacci\",\"n\":%s,\"description\":}"));
				}
				else
				{
					out.print(String.format("{\"error\":true,\"description\":\"La variable 'option' no cumple.\"}"));
				}
		}
	}
	else
	{
		out.print(String.format("{\"error\":true,\"description\":\"No se ha detectado la variable.\"}"));
	}

%>