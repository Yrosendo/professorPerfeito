
<div style="margin-left:44%;" class="g-signin2" data-onsuccess="onSignIn" id="myP"></div>



  
<code><p style="margin-left:34%;" id="status"></p></code>



<script type="text/javascript">
			function onSignIn(googleUser) {
			// window.location.href='success.jsp';

				
			
				  var profile = googleUser.getBasicProfile();
				  var imagurl=profile.getImageUrl();
				  var name=profile.getName();
				  var email=profile.getEmail();

				  
				  
				var formulario = document.createElement("FORM");
				formulario.setAttribute("action","/tela/save");
				formulario.setAttribute("method","post");
				
				
				
				var input1 = document.createElement("input");
				input1.setAttribute("name","nome");
				input1.setAttribute("value","1");
				
				
				
				var input2 = document.createElement("input");
				input2.setAttribute("name","emailPagSeguro");
				input2.setAttribute("value","2");
				
				
				var input3 = document.createElement("input");
				input3.setAttribute("name","foto");
				input3.setAttribute("value","3");
				
			
				
				
				formulario.appendChild(input1);
				formulario.appendChild(input2);
				formulario.appendChild(input3);
				
				document.formulario.submit();
				
				
				
				
				  
}
</script>
 


<button style="margin-top:12%;" class="btn btn-danger" onclick="myFunction()">Sign Out</button>

<script>
function myFunction() {
	gapi.auth2.getAuthInstance().disconnect();
    location.reload();
}
</script>