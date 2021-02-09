package ImageService;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Objeto de Acceso a Datos para la cracion de Imagenes 
 * usando como input un vector de datos de 0 y 1, definido 
 * como una cadena de texto sin espacio ni caracteres adicionales.
 * @author ferlox 
 * @version 0.1.0
 **/

public class ImageDAO {
	
	/**
	 * Crea un archivo en localhost usando como parametros la cadena 0 y 1
	 * obtenida desde un servicio externo. Requiere del ancho de la matriz 
	 * original para generar los datos. Hace uso de un servicio externo de 
	 * consola para generar informacion.
	 * @param textStream Es el flujo de datos 0 y 1 
	 * @param width El valor numerico que representa el ancho de la matriz original.
	 * @return <code>String<code> Representa el mensaje de error o en su defecto la URL
	 * desde donde se pueda descargar la imagen generada.
	 * @author ferlox
	 * @since 0.1.0 
	 */	
	public String create(String textStream, int width ) {
		
		String result = "Error ejecutando el servicio. No se ha enocntrado una URL.";
		
		try {
			String fileName = this.getFileName();
			Process p = Runtime.getRuntime().exec(new String []{
				"sh",
				"Tarea1Python1/run.sh",
				"Tarea1Python1",
				fileName,
				String.format("%s",width),
				textStream
			});
			
			
			try {
				p.waitFor();
				System.out.println(p.exitValue());
		    	int len;
		    	if ((len = p.getErrorStream().available()) > 0) {
		    	  byte[] buf = new byte[len];
		    	  p.getErrorStream().read(buf);
		    	  System.err.println("Command error:\t\""+new String(buf)+"\"");
		    	}
				if(p.exitValue()==0) {
					
					result = String.format("http://localhost:8080/%s",fileName);
				}else {
					result = String.format("%s %s", result, "Error en el servicio del consola");
				}
				
			} catch (InterruptedException e) {
				result = String.format("%s %s",result,e.getMessage());
			}
			
		} catch (IOException e) {
			result = String.format("%s %s",result,e.getMessage());
		}
		
		return result;
	}
	
	
	private String getFileName() {
		
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy_MM_dd_HH_mm_ss");
		RandomManager rg = new RandomManager();
		StringBuilder prefix = new StringBuilder("");
		
		for(int i: rg.getIntArray(4)){
			prefix.append(rg.getChar());
		}
		
		return String.format(
				"%s_%s.png",
				prefix.toString(),
				dateFormat.format(new Date())
		);
	}
}