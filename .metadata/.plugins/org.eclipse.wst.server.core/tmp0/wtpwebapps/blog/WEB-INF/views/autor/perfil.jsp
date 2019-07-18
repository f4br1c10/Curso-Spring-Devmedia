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
	<c:import url="../menu.jsp"></c:import><br>
	<fieldset>
		<legend>
			<b>Perfil</b>
		</legend>
		<table class="table table-striped table-sm">
			<tr>
				<th>Nome do Autor</th>
				<th>E-mail</th>
				<th>Data de Cadastro</th>
				<th>Biografia</th>
				<th>Ação</th>
			</tr>
			<c:forEach var="autor" 
					   items="${page.content != null ? page.content : autores}" varStatus="i">
				<tr>
					<td>${autor.nome}</td>
					<td>${autor.usuario.email}</td>
					<td>
						<fmt:parseDate var="date" value="${autor.usuario.dataCadastro}" pattern="yyyy-MM-dd"/> 
				   		<fmt:formatDate value="${date}" type="date"/>
					</td>
					<td>${autor.biografia}</td>
					<td><c:url var="update" value="/autor/update/${autor.id}" /> <a
						href="${update}" title="Editar" style="text-decoration: none">&#9998</a>
						<c:url var="delete" value="/autor/delete/${autor.id}" /> <a
						href="${delete}" title="Excluir" style="text-decoration: none">&#10006</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<c:if test="${page != null}">
		<c:import url="../paginacao.jsp"/>
		</c:if>
	</fieldset>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>