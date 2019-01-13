

	//Somente Numero

	function somenteNumero(e){
	 var tecla=(window.event)?event.keyCode:e.which;   
    if((tecla>47 && tecla<58)) return true;
    else{
    	if (tecla==8 || tecla==0) return true;
	else  return false;
    }
   }


  // Somente Letras

function letras(e){
	var tecla=new Number();
	if(window.event) {
		tecla = e.keyCode;
	}
	else if(e.which) {
		tecla = e.which;
	}
	else {
		return true;
	}
  if((tecla >= "33") && (tecla <= "64")){
		return false;
	}
	if((tecla >= "91") && (tecla <= "96")){
		return false;
	}
	if((tecla >= "123") && (tecla <= "9830")){
		return false;
	}
}


 //Validar E-mail

function ValidaEmail(){
  var obj = eval("document.forms[0].Email");
  var txt = obj.value;
  if ((txt.length != 0) && ((txt.indexOf("@") < 1) || (txt.indexOf('.') < 7))){
  	alert('Email incorreto');
	obj.focus();
  }
  
  
  
  function igual(e){
	  
	  var senha1 = document.getElementByID("inputSenha");
	  var senha2 = document.getElementByID("inputSenha2");
	  if(senha1 === senha2){
		  return true;
	  }else{
		  alert('Senha incorreta');
		  return false;
	  }
  }
}
