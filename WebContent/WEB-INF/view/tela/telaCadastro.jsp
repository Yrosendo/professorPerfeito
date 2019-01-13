<!Doctype html>
<html>
<head>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css" />
<script type="text/javascript"src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>


<link rel="icon" href="../resources/img/android-icon-48x48.png">


<link rel="stylesheet" type="text/css"
	href="https://fonts.googleapis.com/css?family=Open+Sans|Candal|Alegreya+Sans">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/imagehover.min.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/estilos.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/resources/bootstrap/css/estilos1.css">


<!-- Links Google -->
<link href="https://afeld.github.io/emoji-css/emoji.css" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id" content="709243002314-i0pusjq95guihorvd92dmoqjiei4inrp.apps.googleusercontent.com">
	
<title>Professor Perfeito</title>

</head>
<body>


<c:import url="menu.jsp" />

<br />
<br />

 

<form class="form-horizontal" action="save2" method="post">
<fieldset>

<!-- Form Name -->
<legend>Novo Usuario</legend>

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="inputNome">Nome</label>  
  <div class="col-md-4">
  <input id="inputNome" name="nome" type="text" placeholder="Nome Completo" class="form-control" required="required" 
    onkeypress="return letras(event)"  />
    
    
  </div>
</div>


<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="inputEmailPagSeguro">Email</label>  
  <div class="col-md-4">
  <input id="inputEmailPagSeguro" name="emailPagSeguro" type="email" placeholder="exemplo@email.com" class="form-control" required="required"
   onblur="ValidaEmail()"/>
    
  </div>
</div>

<!-- Password input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="inputSenha">Senha</label>
  <div class="col-md-4">
    <input id="inputSenha" name="senha" type="password" placeholder="Senha" class="form-contro" required="required" />
    
  </div>
</div>


<!-- Button -->
<div class="form-group">
  <label class="col-md-4 control-label" for="singlebutton"></label>
  <div class="col-md-4">
    <button type="submit" name="singlebutton" class="btn btn-primary">Cadastrar</button>
  </div>
</div>

<c:import  url="loginGoogle.jsp" />




</fieldset>
</form>
<br />
<br />
<!--FOOTER -->
	<c:import url="footer.jsp" />

	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/jquery.easing.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/bootstrap.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/bootstrap/js/custom.js"></script>
		
		<!-- JS do Cadastro -->

	<script src="<%=request.getContextPath()%>/resources/bootstrap/js/regrasNegocio.js"></script>		

</body>
</html>
