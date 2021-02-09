<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		Rectangle rectangle = new Rectangle();
		out.print(
				rectangle.draw("0,0",40,40,"red",5)
				);
		
	%>
</body>
</html>