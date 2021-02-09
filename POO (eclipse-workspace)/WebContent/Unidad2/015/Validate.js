/**
 * La logica de validacion y las consultas AJAX del sistema.
 */

window.onload=function()
{
	document=cookie="auth=";
}

function record()
{
	$.post("service.jsp",
			{"option":"record","evaluatorName":evaluatorName.value,"evaluatedName":evaluatedName},
			function(data))
			{
				data=JSON.parse(`${data}`.trim());
				var em = new ErrorManager();
				var body = document.querySelector("body");
				var errorTag = em.insertTag(body);
				em.show(errorTag,"Se ha hecho.");
				setTimeout(function(){em.hide(errorTag)},3000);
			};
}

function isauth()
{
	window.onload=function()
	{
		$.post("service.jsp",{"option":"isauth","user":document.cookies},function(data)
		{
			data = JSON.parse(`${data}`.trim());
			if(data.status)
			{}
			else
			{
				location = "index.jsp";
			}
		})
	};
}

function validation()
{
	$.post(
			"service.jsp",{"option":"auth","user":user.value, "password":password.value},function(data)
			{
				data=JSON.parse(`${data}`.trim());
				if(data.status)
				{
					document.cookie = `auth=${user.value}`;
					location = "PAA.jsp";
				}
				else
				{
					var em = new ErrorManager();
					var body = document.querySelector("body");
					var errorTag = em.insertTag(body);
					em.show(errorTag,"El usuario y/o la contraseña no son validos.");
					setTimeout(function(){em.hide(errorTag)},3000);
					
				}
			}
		  )
		  return false;
}