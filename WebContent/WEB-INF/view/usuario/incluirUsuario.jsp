<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<hr>
	<h3>cadastrar Usuario</h3>
	<hr>
	<form action="save" method="post" enctype="multipart/form-data">
		<p>
			login: <br /> <input type="text" name="login" />
		</p>
		<p>
			(64 charactes exatos)senha: <br /> <input type="password"
				name="senha" />
		</p>
		<p>
			nome: <br /> <input type="text" name="nome" />
		</p>
		<!--  
		<p>
			Data de nascimento: <br /> <input type="date" name="dataNascimento" />
		</p>
		-->
		<p>
			(11 digitos exatos)cpf: <br /> <input type="text" name="cpf" />
		</p>
		<p>
			endereco: <br /> <input type="text" name="endereco" />
		</p>
		<p>
			(11 digitos exatos)telefone: <br /> <input type="text"
				name="telefone" />
		</p>
		<p>
			formacao: <br /> <input type="text" name="formacao" />
		</p>
		<p>
			email PagSeguro: <br /> <input type="text" name="emailPagSeguro" />
		</p>
		<p>
			<select name="estado">
				<option value="AC">Acre</option>
				<option value="AL">Alagoas</option>
				<option value="AP">Amapá</option>
				<option value="AM">Amazonas</option>
				<option value="BA">Bahia</option>
				<option value="CE">Ceará</option>
				<option value="DF">Distrito Federal</option>
				<option value="ES">Espírito Santo</option>
				<option value="GO">Goiás</option>
				<option value="MA">Maranhão</option>
				<option value="MT">Mato Grosso</option>
				<option value="MS">Mato Grosso do Sul</option>
				<option value="MG">Minas Gerais</option>
				<option value="PA">Pará</option>
				<option value="PB">Paraíba</option>
				<option value="PR">Paraná</option>
				<option value="PE">Pernambuco</option>
				<option value="PI">Piauí</option>
				<option value="RJ">Rio de Janeiro</option>
				<option value="RN">Rio Grande do Norte</option>
				<option value="RS">Rio Grande do Sul</option>
				<option value="RO">Rondônia</option>
				<option value="RR">Roraima</option>
				<option value="SC">Santa Catarina</option>
				<option value="SP">São Paulo</option>
				<option value="SE">Sergipe</option>
				<option value="TO">Tocantins</option>
			</select>
		</p>
		<p>
			cidade: <br /> <input type="text" name="cidade" />
		</p>
		<p>
			(8 digitos exatos)cep: <br /> <input type="text" name="cep" />
		</p>
		<p>
			Foto: <br /> <input type="file" name="file">
		</p>
		<input type="submit" value="enviar" />
	</form>
</body>
</html>