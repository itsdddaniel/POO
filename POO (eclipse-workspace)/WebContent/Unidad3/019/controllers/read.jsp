<%@page import="Unidad3.Form019"%>
<%@page import="Unidad3.Auth"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%
    
    if(	
   		(new Auth()).sessionIsValid(session) &&
   		session.getAttribute("form")!=null &&
    	session.getAttribute("form").getClass().getSimpleName().equals("Form019")
		)
    {
    	Form019 form = (Form019) session.getAttribute("form");
    	out.print(String.format("{\"status\":true,\"name\":\"%s\",\"age\":\"%s\",\"id\":\"%s\",\"description\":\"%s\"}",
    			form.getName(),
    			form.getAge(),
    			form.getId(),
    			form.getDescription()
    			));
    }
    else
    {
    	out.print(String.format("{\"status\":false}"));
    }
    %>