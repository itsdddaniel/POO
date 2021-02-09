<%@page import="Unidad3.User"%>
<%@page import="Unidad3.Auth"%>
<%@page import="Unidad3.Constants"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%
    

    String result = String.format("{\"status\":%s,\"message\":%s}",Constants.StatusResult,Constants.MessageResult);

    Auth auth = new Auth();
    if(auth.requestIsValid(request))
    {
    	session = auth.create(session,request);
    	if((boolean) session.getAttribute(Constants.SessionAuthStatus))
    	{
    		out.print(result.replace(Constants.StatusResult,"true").replace(Constants.MessageResult,"\"El usuario y/o contraseña no son validos.\""));
    	}
    	else
    	{
    		out.print(result.replace(Constants.StatusResult,"false").replace(Constants.MessageResult,"\"El usuario y/o contraseña no son validos.\""));
    	}
    }
    else
    {
    	out.print(result.replace(Constants.StatusResult,"false").replace(Constants.MessageResult,"\"No se han encontrado los parametros correctos.\""));
    }
    
    %>