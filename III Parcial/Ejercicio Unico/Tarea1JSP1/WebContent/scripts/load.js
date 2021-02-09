/**
 * 
 */
var matrix = (new Matrix()).generate(0,50);
var htmlMatrix = (new HTMLMatrix()).span(matrix);
var modal = new Modal();

window.onload = function(){
	
	matrixElement.innerHTML = htmlMatrix;
	activateClick();
}

function refresh(){}

function save(){
	draftSave(function(){
		$.post("controllers/save.jsp",{},function(data){
			try{
				var json = JSON.parse(`${data}`.trim());	
				({status,message} = json);
				
				console.group("Debug Save controller");
				console.log(json);
				console.log(status);
				console.log(message);
				console.groupEnd();
				
				if(status){
					let modal = new Modal();
					modal.create(`<img src='${message}' style='position: absolute; width: 100%; height: 100%;'>`);
					modal.show();
				}else{
					
				}
			}catch(ex){
				console.error(`Error en el guardado del save. ${ex}`);
			}
		}).fail(function(data){
			console.error("Error en el AJAX del save.");
		});
	});
	
}

function erase(){
	matrixElement.innerHTML = htmlMatrix;
}

function draftSave(f){
	
	var stringMatrix = (new HTMLMatrix()).readFromTag(matrixElement);
	$.post(
		"controllers/draftSave.jsp",
		{"matrix":stringMatrix,"width":matrix.length},
		function(data){
			try{
				var json = JSON.parse(`${data}`.trim());
				console.info(json.message);
				if(typeof f == "function") f();
			}catch(ex){
				console.error(`Error en el guardado del borrador. ${ex}`);
			}
	}).fail(function(data){
		console.error("Error en el AJAX del borrador.");
	});
}

var clickStatus = true;
function activateClick(){
	
	clickStatus = !clickStatus;
	if(clickStatus) console.log("Se ha activado el pintado."); else
	console.warn("El pintado esta desactivado");
}
var buffer;
function paint(me){
	
	if(clickStatus && typeof me == "object"){
		
		clearTimeout(buffer);
		me.style.backgroundColor = "black";
		
		buffer = setTimeout(draftSave,300)
	}
}