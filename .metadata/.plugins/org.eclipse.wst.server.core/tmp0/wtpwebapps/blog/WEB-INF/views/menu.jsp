<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<fieldset style="font-size: 10pt">
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="<c:url value = "/"/> ">Home</a>
		<div class="collapse navbar-collapse" id="navbarNavDropdown">
			<ul class="navbar-nav">
			<security:authorize access="hasAnyAuthority('ADMIN','AUTOR','LEITOR')">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"aria-haspopup="true" aria-expanded="false">
						Usuário
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="font-size: 10pt">
						
		          			<a class="dropdown-item" href="<c:url value = "/usuario/perfil/${logado.id}"/>">Perfil do usuário</a>
		          		
						<security:authorize access="hasAuthority('ADMIN')">
		          			<a class="dropdown-item" href="<c:url value = "/usuario/list"/>">Lista de usuários</a>
		          		</security:authorize>
					</div>
				</li>
			</security:authorize>
			<security:authorize access="hasAnyAuthority('ADMIN','AUTOR')">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"aria-haspopup="true" aria-expanded="false">
						Autor
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="font-size: 10pt">
					<security:authorize access="hasAuthority('AUTOR')">
						<a class="dropdown-item" href="<c:url value = "/autor/add"/>">Dados do autor</a>
					</security:authorize>
					<security:authorize access="hasAuthority('ADMIN')">
		          		<a class="dropdown-item" href="<c:url value = "/autor/list"/>">Lista de autores</a>
		          	</security:authorize>
					</div>
				</li>
			</security:authorize>
			<security:authorize access="hasAnyAuthority('ADMIN', 'AUTOR')">
				<li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"aria-haspopup="true" aria-expanded="false">
						Postagem
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="font-size: 10pt">
					<security:authorize access="hasAuthority('AUTOR')">
						<a class="dropdown-item" href="<c:url value = "/postagem/add"/>">Nova postagem</a>
						<a class="dropdown-item" href="<c:url value = "/postagem/ajax/add"/>">Nova postagem Ajax</a>
						<a class="dropdown-item" href="<c:url value = "/postagem/list/${logado.id}"/>">Lista de postagens</a>
					</security:authorize>
					<security:authorize access="hasAuthority('ADMIN')">
		          		<a class="dropdown-item" href="<c:url value = "/postagem/list"/>">Lista de postagens</a>
		          	</security:authorize>
					</div>
				</li>
			</security:authorize>
				<security:authorize access="hasAnyAuthority('ADMIN','AUTOR')">
					<li class="nav-item">
				    	<a class="nav-link" href="<c:url value = "/categoria/add"/>">Categorias</a>
				    </li>
			    </security:authorize>
			    <li class="nav-item dropdown">
					<a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown"aria-haspopup="true" aria-expanded="false">
						Minha Conta
					</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink" style="font-size: 10pt">
			    	<c:if test="${logado == null}">
						<a class="dropdown-item" href="<c:url value = "/auth/form"/>">Entrar</a>
						<a class="dropdown-item" href="<c:url value = "/usuario/add"/>">Cadastrar-se</a>
					</c:if>
						<security:authorize access="hasAnyAuthority('ADMIN','AUTOR','LEITOR')">
							<form action="<c:url value="/logout"/>" method="post">
							    <security:csrfInput/>
								<button type="submit" class="btn btn-danger btn-block" style="font-size: 10pt">Sair</button>
							</form>
						</security:authorize>
					</div>
				</li>
			</ul>
		</div>
	</nav>

</fieldset>