package Matrix;

public class Constants {
	
	/** Nombre de la sesion que contiene el contador unico vistas del usuario.*/
	public static String uniqueSessionName="m2i_unique";
	
	/** Llave de reemplazo para el Status Result.*/
	public static String StatusResult = "#STATUS#";
	
	/** Llave de reemplazo para el Status Message.*/
	public static String MessageResult = "#MESSAGE#";
	
	/** La llave de la session o nombre de la session que contiene el borrador.*/
	public static String DraftSession = "m2i_draft";	
	
	/** Mensaje de respuesta exitosa para el guardado de un borrador.*/
	public static String DraftSaved = "Se ha guardado el borrador";
	
	/** Mensaje cuando no existe el parametro principal de una ejecucion AJAX. */
	public static String ErrorMainParameterNotFound = "No se ha encontrado el parametro principal de la peticion";
}
