<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head></head>
    <body>
		<input type="number" name="n" id="n"><br>
		<select name="option" id="option">
			<option value="factorial">Factorial</option>
			<option value="fibonacci">Fibonacci</option>
		</select>
        <button onclick="anyName()">Calculate</button>
        <script src="jquery.js"></script>
        <script src="ErrorManager.js"></script>
        <script>
            function anyName()
            {
            	var n = document.querySelector("input#n");
            	var option = document.querySelector("select#option");
                var action = "service.jsp";
                var parameters = {"option":option.value,};
                var callback = function(anyVariableName)
                {
                    var result = JSON.parse(anyNameVariable);
                    var body = document.querySelector("body");
                    if(result.error)
                    	{
                    		var em = new ErrorManager();
                    		var errorTag = em.insertTag(body);
                    		em.show(errorTag,result.description);
                    	}
                    else
                    	{
                    		var message = `Se ha realizado la operacion de <strong>\${result.operation}</strong> con el numero 
                    		<strong>\${result.n}</strong> dando como resultado <strong>\${result.description}</strong>;`
                    		body.innerHTML += message;
                    	}
   				};
                $.get(action,parameters,callback);
            }
        </script>
    </body>
</html>