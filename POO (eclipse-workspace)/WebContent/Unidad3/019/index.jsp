<%@page import="java.util.List"%>
<%@page import="Unidad3.User"%>
<%@page import="Unidad3.Auth"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%

    if(!(new Auth()).sessionIsValid(session)) response.sendRedirect("login.jsp");
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Guardar borrador temporal del Formulario.</title>
	</head>
	<body>
		<form onsubmit="store();return false;">
			<input type="text" id="userName" onkeyup="change(this);" placeholder="Escriba su nombre"><br>
			<input type="text" id="userAge" onkeyup="change(this);" placeholder="Escriba su edad"><br>
			<input type="text" id="userID" onkeyup="change(this);" placeholder="Escriba su identidad"><br>
			<textarea id="userDescription" onkeyup="change(this);" rows="10" cols="60"></textarea>
			<button type="submit">Enviar</button>
		</form>
		<script src="jquery-3.4.1.js"></script>
		<script src="scripts/script.js"></script>
	</body>
</html>