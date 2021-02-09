<%@page import="Unidad1.ResponseParameterManager"%>
<%@page import="Unidad1.ParameterManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="Danniboy" content="Programacion Orientada a Objetos">
		<meta name="descripcion" content="Ejemplo de Validacion">
		<title>Ejemplo</title>
	</head>
	<body>
		<%		
			ParameterManager pm = new ParameterManager();
			ResponseParameterManager rpm = pm.analize(request.getParameterMap());
			
			out.print(pm.convertResponseToHTML(rpm));
		%>		

	</body>
</html>