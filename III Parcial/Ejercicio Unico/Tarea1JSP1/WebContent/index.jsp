<%@page import="Matrix.Unique"%>
<%@page import="Matrix.Constants"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session = Unique.unique(session);
	int unique = (int) session.getAttribute(Constants.uniqueSessionName);
%>   
<!DOCTYPE html>
<html>
	<head>
		<meta name="author" content="Ferlox">
		<meta name="description" content="Ejemplo de implementacion de un objeto para la creacion de ventanas modales.">
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="styles/matrix.css">
	</head>
	<body>
		<section id="matrixElement"></section>
		<section id="buttonElement">
			<!-- 
			
			El ejercicio se hara con una mezcla de llamados funcionales, donde dichas funciones hacen uso de objetos 
				<button id = "refreshButtonElement" onclick="matrixObject.refresh();">refresh</button>
			 -->
			 <button id="refreshButtonElement" onclick="refresh();">Refresh</button>
			 <button id="clearButtonElement" onclick="erase();">Clear</button>
			 <button id="saveButtonElement" onclick="save();">Save</button>				 
		</section>		
		
		<script src="scripts/jquery.js"></script>
		<script src="scripts/Modal.js?<%=unique%>"></script>
		<script src="scripts/Matrix.js?<%=unique%>"></script>
		<script src="scripts/HTMLMatrix.js?<%=unique%>"></script>
		<script src="scripts/load.js?<%=unique%>"></script>		
			
	</body>
</html>