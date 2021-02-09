<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="author" content="dan">
		<meta name="description" content="css">
		<title>Insert title here</title>
	</head>
	<style>
		div#selectAnOption
		{
			position:fixed;
			width: 25.vw;
			left: 37.5vh; /*100-25=75  75/2=37.5*/
			height: auto;
			top: 50vh;
		}
	</style>
	<body>
		<div id="selectAnOption" class="box">
			<select onChange="changeCSS(this);">
				<option value="0">Corners</option>
				<option value="1">Cross</option>
			</select>
		</div>
		<div id="style"></div>
		<div id="first" class="box" onclick="sm.click(this);"></div>
		<div id="second" class="box" onclick="sm.click(this);"></div>
		<div id="third" class="box" onclick="sm.click(this);"></div>
		<div id="fourth" class="box" onclick="sm.click(this);"></div>
	</body>
	<script>
		var sm = new StyleManager();
		window.onload=changeCSS;
		function StyleManager()
		{
			this.click = function(obj)
			{
				obj.style.backgroundColor= "black";
			}
		}
		
		function changeCSS(select)
		{
			if(typeof select.value == "undefined")
			{
				var select = document.querySelector("div#selectAnOption select");
			}
			//document.querySelector("div#selectAnOption select");
			if(select.vale == 0)
			{
				var styleCSS = `
					<style>
						div#first
						{
							background-color: red;
							top: -45vh;
							left: -45vw;
						}
						
						div#first:hover
						{
							top:0;
							left:0;
						}
						
						div#second
						{
							background-color: blue;
							top: -45vh;
							right: -45vw;
						}
						
						div#second:hover
						{
							top:0;
							right:0;
						}
						
						div#third
						{
							background-color: green;
							bottom:-45vh;
							left:-45vw;
						}
						
						div#third:hover
						{
							bottom:0;
							left:0;
						}
						
						div#fourth
						{
							background-color: yellow;
							bottom:-45vh;
							right:-45vw;
						}
						
						div#fourth:hover
						{
							bottom:0;
							right:0;
						}
						/*Aplicar un estilo a objetos que pertenecen a la misma class*/
						div.box
						{
							border: 2px dotted black;
							width: 50vw;
							height: 50vh;
							position: fixed;
						}
					</style>
					`;
			}
			else
			{
				var styleCSS = `
					<style>
						div#first
						{
							background-color: red;
							top: -45vh;
							left: 25vw;
						}
						
						div#first:hover
						{
							top:0;
							left:0;
						}
						
						div#second
						{
							background-color: blue;
							top: -45vh;
							right: 25vw;
						}
						
						div#second:hover
						{
							top:0;
							right:0;
						}
						
						div#third
						{
							background-color: green;
							bottom:50vh;
							left:50vw;
						}
						
						div#third:hover
						{
							bottom:0;
							left:0;
						}
						
						div#fourth
						{
							background-color: yellow;
							bottom:50vh;
							right:50vw;
						}
						
						div#fourth:hover
						{
							bottom:0;
							right:0;
						}
						/*Aplicar un estilo a objetos que pertenecen a la misma class*/
						div.box
						{
							border: 2px dotted black;
							width: 50vw;
							height: 50vh;
							position: fixed;
						}
					</style>
					`;
			}
			style.innerHTML = styleCSS;
		}
	</script>
</html>