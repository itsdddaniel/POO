package Unidad2;

public class PAA  implements Quiz
{
	@Override
	public Qualification evaluate() 
	{
		// TODO Auto-generated method stub
		return null;
	}
	
	public String print(String user)
	{
		StringBuilder result = new StringBuilder(String.format("<form onsubmit='record();return false;'><input type='hidden' name='user' id='user' value='%s'><table>",user));
		InputTag nameEvaluator = new InputTag("nameEvaluator","nameEvaluator","Ingrese el nombre del Evaluador");
		InputTag nameEvaluated = new InputTag("nameEvaluated", "nameEvaluated","Ingrese el nombre del Evaluado");
		
		result.append("<tr>");
			result.append("<td>Ingrese el nombre del Evaluador</td>");
			result.append("<td>");
			result.append(nameEvaluator.print());
			result.append("</td>");
		result.append("</tr>");
		
		result.append("<tr>");
			result.append("<td>Ingrese el nombre del Evaluado</td>");
			result.append("<td>");
			result.append(nameEvaluated.print());
			result.append("</td>");
		result.append("</tr>");
		
		result.append("<tr>");
			result.append("<td></td>");
			result.append("<td><button type='submit'>Enviar Formulario</button></td>");
		result.append("</tr>");
		
		result.append("</table></form>");
		return result.toString();
	}
}
