<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Page</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
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
<!-- 	<fieldset class="header"> -->
<!-- 		<b>Blog do Curso de Spring-Data JPA | DevMedia</b> -->
<!-- 	</fieldset> -->
<%-- 	<c:import url="menu.jsp"></c:import><br> --%>
	<br>
	<fieldset>
		<h1>Error page</h1>
		<p>${mensagem}</p>
		<div>
			<button onclick="javascript:history.back();" class="btn btn-success">Voltar</button>
		</div>
		
		<!-- 
			Falha ao acessar a URL: ${url}
			Exceção: ${excecao}
		 -->
	</fieldset>

	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>