<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Perfil</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<style type="text/css">
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
	<fieldset>
		<legend>
			<b>Perfil</b>
		</legend>
		<table class="table table-striped table-sm">
			<tr>
				<th>Avatar</th>
				<th>Nome do Usuário</th>
				<th>E-mail</th>
				<th>Data de Cadastro</th>
				<th>Perfil</th>
				<th>Ação</th>
			</tr>
			<tr>
				<td><a
					href="<c:url value="/avatar/update/${usuario.avatar.id}"/>"
					title="Alterar avatar"> <img
						src="<c:url value = "/avatar/load/${usuario.avatar.id}"/>"
						style="width: 25px; height: 25px;" /></a></td>
				<td>${usuario.nome}</td>
				<td>${usuario.email}</td>
				<td>${usuario.dataCadastro}</td>
				<td>${usuario.perfil}</td>
				<td><c:url var="update" value="/usuario/update/${usuario.id}" />
					<a href="${update}" title="Editar" style="text-decoration: none">&#9998</a>
					<a href="#" title="Excluir" style="text-decoration: none">&#10006</a>
				</td>
			</tr>
		</table>
	</fieldset>