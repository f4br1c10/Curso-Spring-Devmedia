<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Avatar</title>
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
	<c:url var="save" value="/avatar/update?${_csrf.parameterName}=${_csrf.token}" />
	<form:form modelAttribute="avatar" action="${save}" method="post"
		enctype="multipart/form-data">
		<form:hidden path="id" />
		<fieldset class="group">
			<legend>Alterar Avatar</legend>
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
</body>
</html>