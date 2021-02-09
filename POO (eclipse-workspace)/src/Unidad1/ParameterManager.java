package Unidad1;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Frontend: JSP con contenido Java que hace uso de clases HTML + CSS + JS
 * Backend: JSP o Java que contiene logica 
 * */

/**
 * Gestiona la cantidad de parametros recibidos.
 * Cuantifica y categoriza los parametros recibidos por el programa.
 * @author %Danniboy
 * @version 0.1.0
 * */

public class ParameterManager {
	/*
	 * Visibilidad:
	 * Public: Puede ser visto fuera y dentro de la clase.
	 * Private: No pueden ser visto fuera de la clase.
	 * Protected: No puede ser visto fuera de la clase pero puede ser herenciado.
	 */
	
	/** Cuantifica la cantidad de parametros. */
	public ResponseParameterManager analize(Map<String,String[]> parameters) {
		int count = 0;
		List<ParameterAnalysis> results = new ArrayList<ParameterAnalysis>();
		ResponseParameterManager rpm = new ResponseParameterManager();
		
		for(String[] parameter :parameters.values()) {
			//ejemplo primitivo de la generacion de la matriz de resultados.
			for(String element:parameter) {
				
				count++;
				int length;
				String parameterType;
				length = element.length();
				
				//element contiene el valor del parametro que se procesa
				if(element.matches("-?\\d+(\\.\\d+)?")) {
					parameterType = "numeric";
				}
				else 
				{
					parameterType = "alphanumeric";
				}
				results.add(new ParameterAnalysis(element,length,parameterType));
			}
		}
		rpm.setCount(count);
		rpm.setResults(results);
		return rpm;
		
	}
	public String convertResponseToHTML(ResponseParameterManager rpm) {
		int count = rpm.getCount();
		List<ParameterAnalysis> results = rpm.getResults();
		
		StringBuilder html = new StringBuilder("<table border='1'>");
		html.append(String.format("<tr><td>Parametros encontrados:</td><td>%s</td></tr>",count));
		html.append(String.format("<tr><td=colspan='2'>%s</td></tr>",this.convertResultsToHTMLTable(results)));		
		html.append("</table>");
		return html.toString();
	}
	private String convertResultsToHTMLTable(List<ParameterAnalysis> results) {
		int count = 1;
		StringBuilder html = new StringBuilder("<table border='1'>");

		html.append("<thead><tr>");
			html.append("<th>No.</th>");
			html.append("<th>Valor del Parametro</th>");
			html.append("<th>Tamano en Caracteres</th>");
			html.append("<th>Tipo de dato</th>");
		html.append("</tr></thead>");
		
		html.append("<tbody>");
		for(ParameterAnalysis element : results) {
			html.append("<tr>");
				html.append(String.format("<td>%s</td>", count));		
				html.append(String.format("<td>%s</td>", element.getValue()));
				html.append(String.format("<td>%s</td>", element.getLength()));
				html.append(String.format("<td>%s</td>", element.getType()));
			html.append("</tr>");
			count++;
		}
		html.append("</tbody>");
		html.append("</table>");
		return html.toString();
	}
	
}
