<%@page import="Matrix.FileManager"%>
<%@page import="Matrix.DraftDTO"%>
<%@page import="Matrix.Constants"%>
<%@page import="Matrix.Draft"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><% 
    
	String result = String.format("{\"status\":%s,\"message\":%s}",Constants.StatusResult,Constants.MessageResult);   
    
    if(Draft.sessionIsValid(session)){
    	
    	DraftDTO draft = (DraftDTO) session.getAttribute(Constants.DraftSession);
    	String data = draft.getData();
    	int width = draft.getWidth();

    	Process p = Runtime.getRuntime().exec(new String[]{
    			"sh",
    			"Tarea1Python2/run.sh",
    			data,
    			String.format("%s",width)
    	});
    	p.waitFor();
    	System.out.println(p.exitValue());
    	int len;
    	if ((len = p.getErrorStream().available()) > 0) {
    	  byte[] buf = new byte[len];
    	  p.getErrorStream().read(buf);
    	  System.err.println("Command error:\t\""+new String(buf)+"\"");
    	}
    	if(p.exitValue()==0){
    		
    		//JSON positivo 
    		FileManager fm = new FileManager();
    		out.print(
    			result
    				.replace(Constants.StatusResult,"true")
    				.replace(Constants.MessageResult, 
    						String.format(
    							"\"%s\"",
    							fm.read("Tarea1Python2/url.txt").trim()
    						)
    				)
    		);
    	}else{
    		
    		//JSON negativo
    		out.print(
        			result
        				.replace(Constants.StatusResult,"false")
        				.replace(Constants.MessageResult, String.format("\"%s\"",Constants.ErrorMainParameterNotFound))
        		);
    	}
    }else{
    	
    	//JSON negativa
    	out.print(
    			result
    				.replace(Constants.StatusResult,"false")
    				.replace(Constants.MessageResult,String.format("\"%s\"",Constants.ErrorMainParameterNotFound))
    			);
    }
    



%>