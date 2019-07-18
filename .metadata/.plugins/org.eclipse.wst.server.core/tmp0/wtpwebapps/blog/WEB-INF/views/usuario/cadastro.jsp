<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Usuário</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">

.error {
	color: #ff0000;
}

.dropdown:hover>.dropdown-menu {
	display: block;
}

.table {
	width: 900px;
	text-align: center;
}

fieldset {
	width: 900px;
	margin: 0 auto;
}

fieldset.group .campo {
	float: left;
	margin-right: 2em;
}

.master {
	width: 960px;
	margin: 0 auto;
}

.header {
	text-align: center;
	font: monospace;
	font-size: 1.7em;
}
</style>
</head>
<body>
	<fieldset class="header">
		<b>Blog do Curso de Spring-Data JPA | DevMedia</b>
	</fieldset>
	<c:import url="../menu.jsp"></c:import>
	<br>
	<c:url var="save" value="/usuario/save?${_csrf.parameterName}=${_csrf.token}" />
	<form:form modelAttribute="usuario" action="${save}" method="post"
		enctype="multipart/form-data">
		<form:hidden path="id" />
		<fieldset>
			<legend>
				<b>Cadastro de Usuário</b>
			</legend>
			<div class="form-group">
				<form:label path="nome">Nome do Usuário</form:label><br>
				<form:input path="nome" type="text" />
				<form:errors path="nome" cssClass="error"/>
			</div>
			<div class="form-group">
				<form:label path="email">E-mail</form:label><br>
				<form:input path="email" type="email" />
				<form:errors path="email" cssClass="error"/>
			</div>
			<div class="form-group">
				<form:label path="senha">Senha</form:label><br>
				<form:password path="senha" />
				<form:errors path="senha" cssClass="error"/>
			</div>
			<div class="form-group">
				<form:label path="file">Avatar</form:label><br> 
				<form:input type="file" path="file" />
				<form:errors path="file" cssClass="error"/>
			</div>
			<div>
				<button type="submit" class="btn btn-success">Salvar</button>
				<button type="reset" class="btn btn-danger">Limpar</button>
			</div>
		</fieldset>
	</form:form>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>