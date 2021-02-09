<%@page import="Unidad2.User"%>
<%@page import="Unidad2.FileManager"%>
<%@page import="Unidad3.Form019"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%
    
    String statusResult = "#STATUS#";
    String messageResult = "#MESSAGE#";
    String result = String.format("{}");
    
	if(	session.getAttribute("019_auth") != null &&
		session.getAttribute("019_auth").getClass().getSimpleName().equals("User")
		)
	{
		if(	session.getAttribute("form") != null &&
			session.getAttribute("form").getClass().getSimpleName().equals("Form019"))
		{
			User user = (User) session.getAttribute("019_auth");
			Form019 form = (Form019) session.getAttribute("form");
			FileManager fm = new FileManager();
			
			fm.write
			(
			String.format("%s.json",user.getName()),
			String.format("{\"status\":true,\"name\":\"%s\",\"age\":\"%s\",\"id\":\"%s\",\"description\":\"%s\"}",
					form.getName(),
					form.getAge(),
					form.getId(),
					form.getDescription())	
			);
			
			out.print(result.replace(statusResult,"true").replace(messageResult,"\"Se ha guardado la informacion.\""));
		}
		else
		{
			out.print(result.replace(statusResult,"false").replace(messageResult,"\"No se ha podido crear el archivo.\""));
		}
	}
	else
	{
		out.print(result.replace(statusResult,"false").replace(messageResult,"\"No se ha detectado un usuario.\""));
	}

    %>
