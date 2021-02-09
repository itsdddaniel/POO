package Matrix;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class Draft {
	
	/**
	 * Crea un borrador en la session
	 * @param request Es una instancia de HttpServletRequest
	 * @param session Es una instancia de HttpSession
	 * @return <code>HttpSession</code> Es la instancia con el DraftDTO creado-
	 */
	public static HttpSession create(HttpServletRequest request, HttpSession session) {
		
		String data = request.getParameter("matrix").toString().trim();
		int width = Integer.parseInt(request.getParameter("width").toString().trim());
		
		DraftDTO draft = new DraftDTO(data,width);
		session.setAttribute(Constants.DraftSession,draft);
		
		return session;
	}
	
	/**
	 * Este metodo valida el estado de la autenticacion del usuario 
	 * @param session La instancia de un HttpSession 
	 * @return Si el usuario  esta aautenticado o no lo esta 
	 */
	public static boolean sessionIsValid(HttpSession session) {
		 if (
			 session.getAttribute(Constants.DraftSession) != null &&
			 session.getAttribute(Constants.DraftSession).getClass().getSimpleName().equals("DraftDTO")
			){
			 return true;
		 }else {
			 return false;
		 }
	}
	/**
	 * Verificar que el request es valido 
	 * @param request Es una instancia de HttpServletRequest
	 * @return <code>boolean</code> Si una peticion es valida o no 
	 */
	public static boolean requestIsValid(HttpServletRequest request) {
		if(
				request.getParameter("matrix") != null &&
				request.getParameter("matrix").toString().trim().matches("[01]+") &&
				request.getParameter("width") != null &&
				request.getParameter("width").toString().trim().matches("\\d+")
			){
			
			return true;
		}
		return false;
	}
}
