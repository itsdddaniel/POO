/**
 * Crear dinamicamente ventanas modales 
 * @author Ferlox
 * @version 0.1.0
 */
function Modal(){
	
	this.modal = null;
	this.content = null; 
	this.width = null;
	this.height = null;
	
	this.create = function(content = "", width=40,height=40){
		
		this.content = content; 
		this.width = width;
		this.height = height;
		this.init();
		this.background();
		this.foreground();
	};
	this.init = function(){
		if(!document.querySelector("body div.modal")){
			document.querySelector("body").innerHTML += "<div class='modal'></div>";
		}
		
		this.modal = document.querySelector("body div.modal");
		this.modal.innerHTML="";
	};
	this.clearNumber = function(number){
		number = `${number}`.trim();
		number = number.replace(/\\D+/,"");
		if(number.match(/\s+/)){
			return parseInt(number);
		}
		return 40;
	};
	this.foreground = function(){
		//
		this.modal.innerHTML += `<div class='foreground'>${this.content}</div>`
		var element = document.querySelector("div.modal div.foreground");
		var width = this.clearNumber(this.width);
		var height= this.clearNumber(this.height);
		
		element.style.position = "fixed";
		element.style.top = `${parseInt((100-height)/2)}vh`;
		element.style.left = `${parseInt((100-width)/2)}vw`;
		element.style.width = `${width}vw`;
		element.style.height = `${height}vh`;
		element.style.backgroundColor = "#dddddd";
		element.style.zIndex = "2";
		element.style.display = "block";
	};
	this.background = function(){
		//
		this.modal.innerHTML += "<div onclick='modal.close();' class='background'>&nbsp</div>";
		var element = document.querySelector("div.modal div.background");
		element.style.position = "fixed";
		element.style.top = "0";
		element.style.left = "0";
		element.style.width = "100vw";
		element.style.height = "100vh";
		element.style.backgroundColor = "black";
		element.style.opacity= "0.5";
		element.style.zIndex = "1";
		element.style.display = "block";
	};
	this.close = function(){
		console.log("a");
		var foreground = document.querySelector("div.modal div.foreground");
		var background = document.querySelector("div.modal div.background");
		foreground.style.display = "none";
		background.style.display = "none";
	};
	this.show = function(){
		var foreground = document.querySelector("div.modal div.foreground");
		var background = document.querySelector("div.modal div.background");
		foreground.style.dispaly = "block";
		background.style.dispaly = "block";
	};
}