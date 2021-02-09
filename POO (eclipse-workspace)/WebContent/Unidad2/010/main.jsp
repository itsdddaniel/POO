<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body onload="load();">
	<script src="ErrorManager.js"></script>
	<script src="Tags.js"></script>
	<script type="text/javascript">
		function ParagraphTag()
		{
			this.name="p";
			this.toString = function(content)
			{
				`<${this.name}>${content}</${this.name}>`;
			}			
		}
	</script>
</body>
</html>