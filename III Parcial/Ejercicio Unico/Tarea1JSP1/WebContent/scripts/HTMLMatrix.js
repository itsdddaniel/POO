/**
 * 
 */

function HTMLMatrix(){
	
	this.span = function(matrix){
		
		var html = 	[];
		for(i in matrix){
			
			var vector = matrix[i];
			for(j in vector){
				
				let color = (vector[j]==1)?"black":"white";	
				
				let width = parseInt(100/vector.length);
				let height = parseInt(100/matrix.length);

				let top = height*i;
				let left = width*j;
				
				let span = `span onmouseenter="paint(this);" onclick="activateClick();" style="background-color:${color}; top:${top}%; left:${left}%; width:${width}%; height:${height}%;"`;
				html.push(`<${span}>&nbsp</span>`);
			}
		}
		
		return html.join("");
	};
	
	this.readFromTag = function(obj){
		
		var vector = [];
		for(child of obj.children){
			vector.push(child.style.backgroundColor.match(/black/)?1:0);
		}
		return `${vector}`.replace(/[^01]/g,"");
	};
	
}