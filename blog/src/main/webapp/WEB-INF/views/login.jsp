<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<style type="text/css">

.error {
	color: #ff0000;
}

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
		<c:url value="/auth/login" var="loginUrl"/>
		<form action="${loginUrl}" method="post">       
		    <c:if test="${error != null}">        
		        <p class="error">
		        	${error}
		        </p>
		    </c:if>
		    <c:if test="${logout != null}">       
		        <p class="error">
		        	${logout}
		        </p>
		    </c:if>
		    <p>
		        <label for="username">Username</label>
		        <input type="text" id="username" name="j_username"/>  
		    </p>
		    <p>
		        <label for="password">Password</label>
		        <input type="password" id="password" name="j_password"/>  
		    </p>
		    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
		    <button type="submit" class="btn btn-success">Log in</button>
		</form>		
	</fieldset>
	
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>
</html>