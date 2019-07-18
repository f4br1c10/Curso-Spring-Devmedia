<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>${postagem.titulo}</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">

.comentarios-avatar {
	float: left;
	margin: 0 10px 0 0;
	width: 64px;
	height: auto;
	position: relative;
}

.comentarios p {
	font-family: cursive;
	font-size: 10pt;
	text-align: justify;
}

#comentarios {
	margin-top: 15px;
}

.comentarios {
	background: #f1f1f1;
	margin-bottom: 10px;
	padding: 10px;
	font-family: monospace;
}

.post-avatar {
	float: left;
	margin: 0 10px 0 0;
	width: 64px;
	height: auto;
	position: relative;
}

.post-autor {
	border: 2px solid #eee;
	position: relative;
	padding: 10px 10px 10px 10px;
	color: silver;
	font-family: sans-serif;
	text-align: justify;
}

.post-categ {
	margin-bottom: 40px;
}

.post-categ a:link {
	background: #f2f2f2;
	display: inline-block;
	line-height: 16px;
	color: #999;
	padding: 3px 7px;
	margin: 0 5px 2px 0;
}

.post-categ a:houver {
	background: #f0f0f0;
	display: inline-block;
	line-height: 16px;
	color: #999;
	padding: 3px 7px;
	margin: 0 5px 2px 0;
}

a:link {
	text-decoration: none;
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
	
	<c:import url="menu.jsp"/><br>

	<fieldset>
	<div>
		<form action="<c:url value="/search"/>" method="get">
			<input name="texto" type="search" placeholder="busca por palavra chave"> 
			<button class="btn btn-light" type="submit">Localizar</button>
		</form>
	</div><br>
	<c:forEach var="p" items="${page.content}">
	<div>
		<div>
			<h2><a href="<c:url value="/${p.permalink}" />" title="${p.titulo}">${p.titulo}</a></h2>
			<p>Autor: <a href="<c:url value="/autor/${p.autor.id}/page/1"/>" >${p.autor.nome}</a> 
			| <fmt:parseDate var="date" value="${p.dataPostagem}" pattern="yyyy-MM-dd'T'HH:mm:ss"/>
			   Data: <fmt:formatDate value="${date}" type="both"/>
			|  # ${fn:length(p.comentarios)} Comenatário(s)   
			</p>
		</div>
		<div>
			<p class="post-texto" align="justify">
				<c:forTokens var="resumo" items="${p.texto}" delims=" " begin="0" end="60">
					${resumo}
				</c:forTokens><a href="<c:url value="/${p.permalink}" />">[Leia Mais]</a>
			</p>
		</div>
		<div>
			<p class="post-categ">
			<span>Categorias: </span>
			<c:forEach var="c" items="${p.categorias}">
				<a href="<c:url value="/categoria/${c.permalink}/page/1"/>" title="${c.descricao}">
				${c.descricao}</a>
			</c:forEach>	
			</p>
		</div>
	</div>	
	</c:forEach>
	<c:import url="paginacao.jsp"/>
	</fieldset>
</body>
</html>