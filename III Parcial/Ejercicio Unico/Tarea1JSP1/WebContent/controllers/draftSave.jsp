<%@page import="Matrix.Constants"%>
<%@page import="Matrix.Draft"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%
    
	String result = String.format("{\"status\":%s,\"message\":%s}",Constants.StatusResult,Constants.MessageResult);    
    
    if(Draft.requestIsValid(request)){
    	
    	session = Draft.create(request,session);

    	//JSON positiva
    	out.print(
    			result
    				.replace(Constants.StatusResult,"true")
    				.replace(Constants.MessageResult,String.format("\"%s\"",Constants.DraftSaved))
    			);
    }else{
    	//JSON negativa
    	out.print(
    			result
    				.replace(Constants.StatusResult,"false")
    				.replace(Constants.MessageResult,String.format("\"%s\"",Constants.ErrorMainParameterNotFound))
    			);
    }
%>