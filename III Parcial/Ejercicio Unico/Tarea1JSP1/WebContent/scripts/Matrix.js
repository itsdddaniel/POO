/**
 * Crea una Matriz de elementos en/de JavaScript.
 * @author Ferlox
 * @version 0.1.0
 */
function Matrix(){
	
	this.generate = function(defaultValue=0,widthaAndHeigth=10){
		
		var matrix = [], width = widthaAndHeigth, heigth = widthaAndHeigth;
		while(width>0){
			let vector = [];
			for(let i =0; i<heigth;i++) vector.push(defaultValue);
			matrix.push(vector);
			width--;
		}
		
		return matrix;
	}
}