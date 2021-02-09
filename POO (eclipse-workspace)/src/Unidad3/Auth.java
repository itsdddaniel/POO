package Unidad3;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Auth 
{
	private List<User> readList(String fileName)
	{
		List<User> userList = new ArrayList<>();
		FileManager fm = new FileManager();
		String content[] = fm.read(fileName).split("\n");
		
		for(String row : content)
		{
			String[] columns = row.split(",");
			userList.add(new User(columns[0],columns[1]));
		}
		
		return userList;
	}
	
	public boolean requestIsValid(HttpServletRequest request)
	{
		if	(	
				request.getParameter("userName")!=null &&
				request.getParameter("userPassword")!=null
			)
			{
				return true;
			}
		return false;
	}
	
	public boolean sessionIsValid(HttpSession session)
	{
		if(session.getAttribute(Constants.SessionAuthKey)!=null &&
		    	session.getAttribute(Constants.SessionAuthKey).getClass().getSimpleName().equals("User"))
		    {
		    	User userSession = (User) session.getAttribute(Constants.SessionAuthKey);
		    	List<User> userList = Auth.readList(Constants.AuthSourceFile);
		    	
		    	for(User user : userList)
		    	{
		    		if(user.getName().equals(userSession.getName()))
		    		{
		    			return true;
		    		}
		    	}
		    }
			return false;
	}
	
	/**
	 *Permite crear la sesion con el usuario autenticado.
	 *@param session Una instancia de HttpSession.
	 *@param request Una instancia de HttpServletRequest.
	 *@return La sesion con la informacion actulizada.
	 **/
	public HttpSession create(HttpSession session,HttpServletRequest request)
	{
		session.setAttribute(Constants.SessionAuthStatus, false);
		String userName = request.getParameter("userName").toString().trim();
    	String userPassword = request.getParameter("userPassword").toString().trim();
    	
    	List<User> users = this.readList("auth.csv");
    	for(User user:users)
    	{
    		if(user.validate(userName, userPassword))
    		{
    			User userSession = new User();
    			userSession.setName(user.getName());
    			session.setAttribute(Constants.SessionAuthKey,userSession);
    			session.setAttribute(Constants.SessionAuthStatus, true);
    			break;
    		}
    	}
		return session;
	}
	
}
