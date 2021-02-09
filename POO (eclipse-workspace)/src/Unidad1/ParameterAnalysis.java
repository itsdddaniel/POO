package Unidad1;

/**
 * Representa una fila en el arreglo de resultados.
 * */
public class ParameterAnalysis {
	/**Contiene el valor del parametro*/
	private int length;
	/**Tamano en caracteres del valor*/
	private String value;
	
	public ParameterAnalysis(String value,int length,String type) {
		this.value = value;
		this.length = length;
		this.type = type;
	}
	
	/**
	 * @return the length
	 */
	public int getLength() {
		return length;
	}
	/**
	 * @param length the length to set
	 */
	public void setLength(int length) {
		this.length = length;
	}
	/**
	 * @return the value
	 */
	public String getValue() {
		return value;
	}
	/**
	 * @param value the value to set
	 */
	public void setValue(String value) {
		this.value = value;
	}
	/**
	 * @return the type
	 */
	public String getType() {
		return type;
	}
	/**
	 * @param type the type to set
	 */
	public void setType(String type) {
		this.type = type;
	}
	private String type;
}
