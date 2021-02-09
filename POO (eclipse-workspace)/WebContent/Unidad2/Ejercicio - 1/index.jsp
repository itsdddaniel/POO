<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<form onsubmit='start();'>
		<input type="text" name="name">
		<button type="submit">Enviar</button>
	</form>
		<script>
			function start()
			{
				var tag = new Tag();
				var input = document.querySelector("input");
				var result = input.value;
			}
			function Tag()
			{
				this.tag = "div";
				this.toString = function(content)
				{
					`<${this.name}>${content}</${this.name}>`;
				}
			}
		</script>
	</body>
</html>