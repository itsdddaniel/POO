<%@page import="Unidad2.User"%>
<%@page import="Unidad2.Auth"%>
<%@page import="java.util.List"%>
<%@page import="Unidad2.FileManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%

	if(	request.getParameter("option")!=null &&
		request.getParameter("option").toString().trim().matches("((auth)|(record))")
		)
	{
		
		if(request.getParameter("option").toString().trim().matches("isauth$") &&
			request.getParameter("user")!=null
			)
		{
			String fileName = request.getParameter("user").toString().trim().replace("auth=", "");
			FileManager fm = new FileManager();
			String content = fm.read(String.format("%s.auth",fileName)).trim();
			String result = String.format("{\"status\":false,\"message\":\"El usuario y/o la contraseña no son validos.\"}");
			
			if(content.matches("true$"))
			{
				result = String.format("{\"status\":true,\"message\":\"\"}");
			}
			out.print(result);
		}
		else
		{
			if(	request.getParameter("option").toString().trim().matches("auth$") &&
					request.getParameter("user")!=null &&
					request.getParameter("password")!=null
					)
				{
					String result = String.format("{\"status\":false,\"message\":\"El usuario y/o la contraseña no son validos.\"}");
					String name = request.getParameter("user").toString();
					String password = request.getParameter("password").toString();
					List<User> userList = Auth.readList("auth.csv");
					for(User user: userList)
					{
						if(user.validate(name,password))
						{
							FileManager fm = new FileManager();
							fm.write(String.format("%s.auth",user.getName()),"true");
							result = String.format("{\"status\":true,\"message\":\"\"}");
							break;
						}
					}
					out.print(result);
				}
				else if(request.getParameter("option").toString().trim().matches("record$") &&
						request.getParameter("nameEvaluator")!=null &&
						request.getParameter("nameEvaluated")!=null)
				{
					FileManager fm = new FileManager();
					
					
				}
		}
		
	}
	else
	{
		out.print(String.format("{\"status\":false,\"message\":\"La peticion solicitado no es valida\"}"));
	}

%>