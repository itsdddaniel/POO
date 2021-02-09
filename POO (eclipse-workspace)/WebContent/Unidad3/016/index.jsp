<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="author" content="">
		<meta name="description" content="">
		<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="style.css">
	</head>
	<body>
		<h1>Bienvenido COÑOOOO!</h1>
		<p>Bienvenido <strong><%=session.getAttribute("userName")%></strong> al sistema.</p>
		<div class="centerPage bigSize red">
			<%
				int count = 1;
				if(session.getAttribute("count")!=null)
				{
					if(session.getAttribute("count").getClass().getSimpleName().equals("Integer"))
					{
						count = (int) session.getAttribute("count");
						count++;
						session.setAttribute("count",count);
					}
					else
					{
						session.setAttribute("count",1);
					}
				}
				else
				{
					session.setAttribute("count",1);
				}
			%>
			<%=count%>
		</div>
	</body>
</html>