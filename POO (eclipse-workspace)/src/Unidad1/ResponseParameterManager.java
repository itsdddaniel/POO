package Unidad1;

import java.util.List;

/**Este programa es la respuesta del analisis del programa
 * @author danniboy
 * @version 0.1.0 */
public class ResponseParameterManager {
	
	/** La cantidad de parametros cuantificados*/
	private int count;
	/** La matriz de resultados con la informacion de los parametros.*/
	private List<ParameterAnalysis> results;
	/**
	 * @return the count
	 */
	public int getCount() {
		return count;
	}
	/**
	 * @param count the count to set
	 */
	public void setCount(int count) {
		this.count = count;
	}
	/**
	 * @return the results
	 */
	public List<ParameterAnalysis> getResults() {
		return results;
	}
	/**
	 * @param results the results to set
	 */
	public void setResults(List<ParameterAnalysis> results) {
		this.results = results;
	}
	
}