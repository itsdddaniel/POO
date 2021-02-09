<%@page import="Unidad2.FileManager"%>
<%@page import="Unidad2.Qualification"%>
<%@page import="Unidad2.PAA"%>
<%@page import="Unidad2.Evaluator"%>
<%@page import="Unidad2.Evaluated"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%
    	FileManager fm = new FileManager();
   		String[] fileNames = fm.read("fileList.txt").split("\n");
   		for(String file: fileNames)
   		{
   			
   		}
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="author" content="dan">
		<meta name="description" content="Implementar la instancia con uso de interfaces.">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			PAA quiz = new PAA();
			out.print(quiz.print(""));
		%>
		<script> src="../../jquery-3.4.1.js"</script>
		<script> src="Validate.js"</script>
		<script>
			window.onload = isauth;
		</script>
	</body>
</html>