<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<form action="service.jsp" onsubmit="alert('Se esta enviando el formulario.')">
			<input type="text" id="name" name="name" placeholder="Nombre del Estudiante" value="">
			<button type="submit">Enviar</button>
			<div id="error"></div>
		</form>
		<script type="text/javascript">
			/*
				Comentarios de varias lineas.
				mozilla developer network, para documentacion de Javascript.
				
				function example(){
					if(true){
						let b = 1;
						var a = "hola mundito xd";
					}
					return algo equisde.
			}
				
			*/
			
			//Ejemplo de Clases en Javascript
			function Human(name,age)
			{
				this.name = name;
				this.age = age;
				
			}
			var human = new Human("Programacion Orientada a Objetos","5");
			
			function Validator(name)
			{
				this.name = function(name)
				{
					if(`\${name}`.trim().matches(/^([A-Z][a-z]{2,})( [A-Z][a-z]{2,}){1,3}$/)){
						return true;
					}
					return false;
				};
			}
			
			function ErrorManager()
			{
				this.show = function(tag)
				{
					tag.style.border = "1px solid red";
					tag.style.color = "red";
					tag.innerHTML = "Error, el nombre de usuario no cumple con el formato.";
				};
				this.hide = function(tag)
				{
					tag.style.border = "0px solid transparent";
					tag.style.color = "transparent";
					tag.innerHTML = "";
				};
			}
			
			function load()
			{
				var body = document.querySelector("body");
				var p = new ParagraphTag();
				body.innerHTML = '${p.toString("")}${body.innerHTML}';
				var em = new ErrorManager();
				var p = document.querySelector("p");
				em.show(p);
			}
			
			function validate()
			{
				var name = document.querySelector("#name");
				var validator = new Validator();
				var result = validator.name(name.value);
				if(!result)
				{
					var errorManager = new ErrorManager();
					var errorTag = document.querySelector("#error");
					errorManager.show(errorTag);
					
					setTimeout(function(){
						errorManager.hide(errorTag);
					},5000);
					
				}
				
				return 	result;
			}
		</script>

	</body>
</html>