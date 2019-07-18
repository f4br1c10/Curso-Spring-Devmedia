<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Usuário</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
	<c:url var="save" value="/usuario/update/senha" />
	<form:form modelAttribute="usuario" action="${save}" method="post">
		<form:hidden path="id" />
		<fieldset class="group">
			<legend>Alterar Senha</legend>
			<div class="form-group">
				<form:label path="senha">Senha</form:label>
				<br>
				<form:password path="senha" />
				<form:errors path="senha" cssClass="error" />
			</div>
			<div>
				<button type="submit" class="btn btn-success">Salvar</button>
				<button type="reset" class="btn btn-danger">Limpar</button>
			</div>
		</fieldset>
	</form:form>
	<br>
	<c:url var="save" value="/usuario/update" />
	<form:form modelAttribute="usuario" action="${save}" method="post">
		<form:hidden path="id" />
		<fieldset class="group">
			<legend>Alterar Nome e/ou Email</legend>
			<div class="form-group">
				<form:label path="nome">Nome do Usuário</form:label>
				<br>
				<form:input path="nome" type="text" value="${nome}" />
				<form:errors path="nome" cssClass="error" />
			</div>
			<div class="form-group">
				<form:label path="email">E-mail</form:label>
				<br>
				<form:input path="email" type="email" value="${email}" />
				<form:errors path="email" cssClass="error" />
			</div>
			<div>
				<button type="submit" class="btn btn-success">Salvar</button>
				<button type="reset" class="btn btn-danger">Limpar</button>
			</div>
		</fieldset>
	</form:form>
	<br>
	<security:authorize access="hasAuthority('ADMIN')">
		<c:url var="save" value="/usuario/update/perfil" />
		<form:form modelAttribute="usuario" action="${save}" method="POST">
			<form:hidden path="id" />
			<fieldset class="group">
				<legend>Editar Perfil</legend>
				<div class="form-group">
					<form:label path="perfil">Perfil</form:label>
					<br>
					<form:select path="perfil" required="true">
						<form:option value="ADMIN" label="ADMIN" />
						<form:option value="AUTOR" label="AUTOR" />
						<form:option value="LEITOR" label="LEITOR" />
					</form:select>
				</div>
				<div>
					<button type="submit" class="btn btn-success">Salvar</button>
					<button type="reset" class="btn btn-danger">Limpar</button>
				</div>
			</fieldset>
		</form:form>
	</security:authorize>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>