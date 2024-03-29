<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Postagem</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
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
	<c:url var="save" value="/postagem/ajax/save"/>
	<form id="save-ajax">
		<security:csrfInput/>													 
		<fieldset>
			<legend><b>Cadastro de Postagem</b></legend>
			<div class="form-group">
				<label for="titulo">Título do post</label><br>
				<input name="titulo" type="text" size="60"/>
				<span id="titulo-error" class="error"></span>
			</div>
			<div class="form-group">
				<label for="texto">Texto do post</label><br>
				<textarea name="texto" rows="15" cols="80"></textarea>
				<span id="texto-error" class="error"></span>
			</div>
			<div class="form-group">
				<label for="categorias">Selecione as Categoria(s)</label><br>
				<select multiple name="categorias">
					<c:forEach var="c" items="${categorias}">
					<option value="${c.id}">${c.descricao}</option>
					</c:forEach>
				</select><br>
				<i style="font-size: .8em; color: #545454">
					*Pressione a tecla Crtl para selecionar mais de uma opção.
				</i>
			</div>
			<div>
				<button type="submit" class="btn btn-success">Salvar</button>
				<button type="reset" class="btn btn-danger">Limpar</button>
			</div>
		</fieldset>	
	</form><br>
	<div id="info" align="center"></div>
	<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<script type="text/javascript">
		$(document).ready(function () {
			
			$( "#save-ajax" ).submit(function( event ) {
				  
				  event.preventDefault();
				  
				  var token = $("input[name='_csrf']").attr('value');
				  
				  $.post( '/blog/postagem/ajax/save?_csrf=' + token, $(this).serialize() )
				  	.done(function(result) {
				  		
				  		if ( result.status != 'FAIL' ) {
				  		
					  		$('#info').empty().append(
					  				"<p>Postagem salva com sucesso!</p>" + 
					  				"<p>Abrir postagem: <a href='/blog/" +
					  				result.postagem.permalink + "'>" + result.postagem.titulo + "</a></p>"
					  		);
					  		
					  		$('#save-ajax').each(function() {
					  			this.reset();
					  		});
					  		$('#titulo-error').empty();
					  		$('#texto-error').empty();
				  		} else {
				  			
				  			$('#titulo-error').empty().append( result.tituloError );

				  			$('#texto-error').empty().append( result.textoError );
				  			
				  		}
				  	})
				  	.fail(function( error ) {
				  		$('#info').empty().append("<p>Error: status " + 
				  				error.status + ", " + error.statusText + "</p>")
				  	});
			});
			
			
			$(document).on('click', 'button[id*="button_"]', function(a) {
				var pageNumber = $(this).val();
	
				tbody(pageNumber);		
			});
			
			$('#search').keyup(function () {
	
				var value = $(this).val();
	
				var exp = new RegExp('^[a-zA-Z0-9]');
				
				if (exp.test(value)) {
					search(value);	
				} else {
					tbody(1);
				}
				
			}); 
		});
	
		function search(value) {
			
			var url = "/blog/postagem/ajax/titulo/" + value + "/page/1";
			
			$('#table-ajax').load( url, function( response, status, xhr) {
				if ( status == "error" ) {
					var msg = "Sorry but there was an error: ";
				    $( "#info" ).html( msg + xhr.status + " " + xhr.statusText );
				}
			}); 
		}
	
		function tbody(page) {
			
			var url = "";
			
			var titulo = $('#search').val();
			
			if (titulo.length > 0) {
				url = "/blog/postagem/ajax/titulo/" + titulo + "/page/" + page;
			} else {
				url = "/blog/postagem/ajax/page/" + page;
			}
			
			$( "#table-ajax" ).load( url, function( response, status, xhr ) {
				
				  if ( status == "error" ) {
				    var msg = "Sorry but there was an error: ";
				    $( "#info" ).html( msg + xhr.status + " " + xhr.statusText );
				  }
				  
				 /* if ( status = "success" ) {
					  $('button').each(function() {
						 
						  var id = '#' + $(this).attr('id');
						  
						  if ( $(id).attr('disabled') == 'disabled' ) {
							  $(id).removeAttr('disabled');
						  }
						  
					  });
					  
					  $('#button_' + page).attr('disabled', 'disabled');
				  }*/
			});
		}
	</script>
</body>
</html>