<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Categoria</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link href="https://rawgit.com/t4t5/sweetalert/master/dist/sweetalert.css" rel="stylesheet"/>
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
	<fieldset>
		<c:url var="save" value="/categoria/save" />
		<form:form modelAttribute="categoria" action="${save}" method="post">
			<form:hidden path="id" />
			<fieldset>
				<legend>
					<b>Cadastro de Categoria</b>
				</legend>
				<div class="form-group">
					<form:label path="descricao">Descrição da Categoria</form:label><br>
					<form:input path="descricao" type="text" size="60" />
					<form:errors path="descricao" cssClass="error" />
				</div>
				<div>
					<button type="submit" class="btn btn-success">Salvar</button>
					<button type="reset" class="btn btn-danger">Limpar</button>
				</div>
			</fieldset>
		</form:form><br>

		<fieldset>
			<legend>
				<b>Lista de Categorias</b>
			</legend>
			<table class="table table-striped table-sm">
				<tr>
					<th>Código</th>
					<th>Descrição</th>
					<th>Permalink</th>
					<th>Ação</th>
				</tr>
				<c:forEach var="categoria" items="${page.content}" varStatus="i">
					<tr>
						<td>${categoria.id}</td>
						<td>${categoria.descricao}</td>
						<td>${categoria.permalink}</td>
						<td>
							<c:url var="update" value="/categoria/update/${categoria.id}" />
							<a href="${update}" title="Editar" style="text-decoration: none">&#9998</a> 
							<c:url var="delete" value="/categoria/delete/${categoria.id}" />
							<a href="${delete}" title="Excluir" style="text-decoration: none">&#10006</a>
						</td>
					</tr>
				</c:forEach>
			</table>
			<c:import url="../paginacao.jsp"/>
		</fieldset>
	</fieldset>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>