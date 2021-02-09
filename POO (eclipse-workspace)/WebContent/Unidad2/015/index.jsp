<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="author" content="daniboy">
		<meta name="description" content="Unificacion de temas 2do parcial.">
		<title>Unificacion de temas 2do parcial.</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<form onsubmit='return validation();'>
			<input type="text" name="user" id="user" placeholder="Nombre de usuario."><br>
			<input type="password" name="password" id="password" placeholder="Ingrese su contraseña."><br>
			<button type="submit">Ingresar</button>
		</form>
		<script> src="../../jquery-3.4.1.js"</script>
		<script> src="../../ErrorManager.js"</script>
		<script> src="Validate.js"</script>
	</body>
</html>