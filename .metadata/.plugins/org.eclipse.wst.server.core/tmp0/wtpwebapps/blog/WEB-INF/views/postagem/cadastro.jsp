<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Postagem</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">
.dropdown:hover>.dropdown-menu {
	display: block;
}

.error {
	color: #ff0000;
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
	<c:url var="save" value="/postagem/save"/>
	<form:form modelAttribute="postagem" action="${save}" method="post">
		<form:hidden path="id"/>												 
		<fieldset>
			<legend><b>Cadastro de Postagem</b></legend>
			<div class="form-group">
				<form:label path="titulo">Título do post</form:label><br>
				<form:input path="titulo" type="text" size="60"/>
				<form:errors path="titulo" cssClass="error"/>
			</div>
			<div class="form-group">
				<form:label path="texto">Texto do post</form:label><br>
				<form:textarea path="texto" rows="15" cols="80"/>
				<form:errors path="texto" cssClass="error"/>
			</div>
			<div class="form-group">
				<form:label path="categorias">Selecione as Categoria(s)</form:label><br>
				<form:select multiple="true" path="categorias">
					<form:options items="${categorias}" itemValue="id" itemLabel="descricao"/>
				</form:select><br>
				<i style="font-size: .8em; color: #545454">
					*Pressione a tecla Crtl para selecionar mais de uma opção.
				</i>
			</div>
			<div>
				<button type="submit" class="btn btn-success">Salvar</button>
				<button type="reset" class="btn btn-danger">Limpar</button>
			</div>
		</fieldset>	
	</form:form>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>