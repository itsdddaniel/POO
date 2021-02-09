<%@page import="Unidad2.FileManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	Factorial f = new Factorial();
	FileManager fm = new FileManager();
	//out.print(fm.path());
	//out.print(fm.read("file.txt"));
	//fm.write("file.txt","<table border=1><tr><td>1</td></tr></table>");
	
	int n = 5;
	if	(	request.getParameter("n")!= null &&
			request.getParameter("n").toString().trim().matches( "((\\d)|([1-5]\\d)|(6[0-9]))" )
		)
{
	n = Integer.parseInt(request.getParameter("n"));
}
	int factorialN = f.calc(n);
	fm.write("file.txt",String.format("%s",factorialN));
	fm.write("file.txt",String.format("%s<br>%s",fm.read("file.txt"),factorialN));
	response.sendRedirect(String.format("service.jsp?n=%s",n-1));
	
	out.print(fm.read("file.txt"));
	
%>	