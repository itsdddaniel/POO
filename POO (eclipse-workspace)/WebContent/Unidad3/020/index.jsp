<%@page import="Unidad3.Constants"%>
<%@page import="Unidad3.FileManager" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%
    
    
    String[] call = new String[]{"sh","Subprocess08001000/run.sh","Subprocess08001000/result.txt","Hola Mundo","9"};
    String result = String.format("{\"status\":%s,\"message\":%s}",Constants.StatusResult,Constants.MessageResult);
	try
    {
		Process p = Runtime.getRuntime().exec(call);
		p.waitFor();
		if(p.exitValue()==0)
		{
			FileManager fm = new FileManager();
			out.print(
					result
					.replace(Constants.StatusResult,"true")
					.replace(Constants.MessageResult,
					String.format("\"%s\"",fm.read(call[2]))));
		}
		else
		{
			out.print(result.replace(Constants.StatusResult,"false").replace(Constants.MessageResult,"\"Error\""));
		}
    }
    catch(Exception ex)
    {
    	out.print(result.replace(Constants.StatusResult,"false").replace(Constants.MessageResult,""));
    }

    
    
    %>