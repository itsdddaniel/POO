<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(	request.getParameter("name") != null && 
		request.getParameter("name").toString().trim().matches("^([A-Z][a-z]{2,})( [A-Z][a-z]{2,}){1,3}$")
			)	
		
	{
		response.sendRedirect(String.format("success.jsp?result=%s", NameProcessor.process(request.getParameter("name").toString())));
		
	}
	else
	{
		response.sendRedirect("error.jsp");
	}

%>	