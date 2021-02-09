<%@page import="Unidad1.Rectangle"%>
<%@page import="Unidad1.Point"%>
<%@page import="Unidad1.Validator"%>
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
					int zIndex;
					Validator validator = new Validator();
					String color;
					if(request.getParameter("color")!=null)
					{
						String color = validator.color(request.getParameter("color").toString());	
					}
					else
					{
						color = "white";
					}
					if (
							request.getParameter("point").toString() != null &&
							request.getParameter("point").toString().trim().matches("") &&
							request.getParameter("h").toString() !=null &&
							request.getParameter("w").toString() !=null
						)
					{
		
						Point p = new Point(
								request.getParameter("point").toString()
								);
						int h = validator.maxInt(request.getParameter("h").toString(),0,100);
						int w = validator.maxInt(request.getParameter("w").toString(),0,100);
						Rectangle rectangle = new Rectangle();
						out.print(rectangle.draw(p,h,w,color,zIndex));
					}
					else
					{
						if	(
								request.getParameter("pointA").toString().trim().matches("\\d+,\\d+") &&
								request.getParameter("pointA").toString() !=null &&
								request.getParameter("pointB").toString().trim().matches("\\d+,\\d+") &&
								request.getParameter("pointB").toString() !=null 
							)
						{
							Point pointA = new Point(
									request.getParameter("pointA").toString()
									);
							Point pointB = new Point(
									request.getParameter("pointB").toString()
									);
							Rectangle rectangle = new Rectangle();
							out.print(
									rectangle.draw(pointA,pointB,color,zIndex)
									);
							
						}
						else
						{
							out.print("<span></span>");
						}
						
					}
				%>
		
	</body>
</html>