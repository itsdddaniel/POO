package Matrix;

import javax.servlet.http.HttpSession;

public class Unique {

	public static HttpSession unique(HttpSession session) {
		
		int unique = 0;
		
		if(	session.getAttribute(Constants.uniqueSessionName)!=null &&
			session.getAttribute(Constants.uniqueSessionName).getClass().getSimpleName().equals("Inetger")
		){
			unique = (int) session.getAttribute(Constants.uniqueSessionName);
			unique++;
			session.setAttribute(Constants.uniqueSessionName,unique);
	
		}else session.setAttribute(Constants.uniqueSessionName,unique);
		
		return session;
	}
}
