/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.42
 * Generated at: 2019-07-10 15:17:10 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views.postagem;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class cadastro_002dajax_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(9);
    _jspx_dependants.put("/WEB-INF/lib/spring-webmvc-4.2.2.RELEASE.jar", Long.valueOf(1561133054989L));
    _jspx_dependants.put("/WEB-INF/lib/spring-security-taglibs-4.0.2.RELEASE.jar", Long.valueOf(1561133072170L));
    _jspx_dependants.put("jar:file:/home/fabricio/Área%20de%20Trabalho/8.2%20-%20Projeto%20Final/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/blog/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153395882000L));
    _jspx_dependants.put("jar:file:/home/fabricio/Área%20de%20Trabalho/8.2%20-%20Projeto%20Final/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/blog/WEB-INF/lib/spring-security-taglibs-4.0.2.RELEASE.jar!/META-INF/security.tld", Long.valueOf(1437612504000L));
    _jspx_dependants.put("jar:file:/home/fabricio/Área%20de%20Trabalho/8.2%20-%20Projeto%20Final/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/blog/WEB-INF/lib/spring-webmvc-4.2.2.RELEASE.jar!/META-INF/spring-form.tld", Long.valueOf(1444896864000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1561133048801L));
    _jspx_dependants.put("jar:file:/home/fabricio/Área%20de%20Trabalho/8.2%20-%20Projeto%20Final/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/blog/WEB-INF/lib/jstl-1.2.jar!/META-INF/fn.tld", Long.valueOf(1153395882000L));
    _jspx_dependants.put("/WEB-INF/jspl/taglibs.jspf", Long.valueOf(1562681260417L));
    _jspx_dependants.put("jar:file:/home/fabricio/Área%20de%20Trabalho/8.2%20-%20Projeto%20Final/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/blog/WEB-INF/lib/jstl-1.2.jar!/META-INF/fmt.tld", Long.valueOf(1153395882000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005furl_0026_005fvar_005fvalue_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fsecurity_005fcsrfInput_005fnobody;
  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvar_005fvalue_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fsecurity_005fcsrfInput_005fnobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.release();
    _005fjspx_005ftagPool_005fc_005furl_0026_005fvar_005fvalue_005fnobody.release();
    _005fjspx_005ftagPool_005fsecurity_005fcsrfInput_005fnobody.release();
    _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.release();
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET POST or HEAD");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write(" \r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>Postagem</title>\r\n");
      out.write("\t<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("\r\n");
      out.write(".error {\r\n");
      out.write("\tcolor: #ff0000;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".dropdown:hover>.dropdown-menu {\r\n");
      out.write("\tdisplay: block;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".table {\r\n");
      out.write("\twidth: 900px;\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("fieldset {\r\n");
      out.write("\twidth: 900px;\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("fieldset.group .campo {\r\n");
      out.write("\tfloat: left;\r\n");
      out.write("\tmargin-right: 2em;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".master {\r\n");
      out.write("\twidth: 960px;\r\n");
      out.write("\tmargin: 0 auto;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".header {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("\tfont: monospace;\r\n");
      out.write("\tfont-size: 1.7em;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\t<fieldset class=\"header\">\r\n");
      out.write("\t\t<b>Blog do Curso de Spring-Data JPA | DevMedia</b>\r\n");
      out.write("\t</fieldset>\r\n");
      out.write("\t");
      if (_jspx_meth_c_005fimport_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t<br>\r\n");
      out.write("\t");
      if (_jspx_meth_c_005furl_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t<form id=\"save-ajax\">\r\n");
      out.write("\t\t");
      if (_jspx_meth_security_005fcsrfInput_005f0(_jspx_page_context))
        return;
      out.write("\t\t\t\t\t\t\t\t\t\t\t\t\t \r\n");
      out.write("\t\t<fieldset>\r\n");
      out.write("\t\t\t<legend><b>Cadastro de Postagem</b></legend>\r\n");
      out.write("\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t<label for=\"titulo\">Título do post</label><br>\r\n");
      out.write("\t\t\t\t<input name=\"titulo\" type=\"text\" size=\"60\"/>\r\n");
      out.write("\t\t\t\t<span id=\"titulo-error\" class=\"error\"></span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t<label for=\"texto\">Texto do post</label><br>\r\n");
      out.write("\t\t\t\t<textarea name=\"texto\" rows=\"15\" cols=\"80\"></textarea>\r\n");
      out.write("\t\t\t\t<span id=\"texto-error\" class=\"error\"></span>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"form-group\">\r\n");
      out.write("\t\t\t\t<label for=\"categorias\">Selecione as Categoria(s)</label><br>\r\n");
      out.write("\t\t\t\t<select multiple name=\"categorias\">\r\n");
      out.write("\t\t\t\t\t");
      if (_jspx_meth_c_005fforEach_005f0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t\t\t\t</select><br>\r\n");
      out.write("\t\t\t\t<i style=\"font-size: .8em; color: #545454\">\r\n");
      out.write("\t\t\t\t\t*Pressione a tecla Crtl para selecionar mais de uma opção.\r\n");
      out.write("\t\t\t\t</i>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div>\r\n");
      out.write("\t\t\t\t<button type=\"submit\" class=\"btn btn-success\">Salvar</button>\r\n");
      out.write("\t\t\t\t<button type=\"reset\" class=\"btn btn-danger\">Limpar</button>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</fieldset>\t\r\n");
      out.write("\t</form><br>\r\n");
      out.write("\t<div id=\"info\" align=\"center\"></div>\r\n");
      out.write("\t<script src=\"https://code.jquery.com/jquery-3.4.1.js\"></script>\r\n");
      out.write("\t<script src=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<script type=\"text/javascript\">\r\n");
      out.write("\t\t$(document).ready(function () {\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$( \"#save-ajax\" ).submit(function( event ) {\r\n");
      out.write("\t\t\t\t  \r\n");
      out.write("\t\t\t\t  event.preventDefault();\r\n");
      out.write("\t\t\t\t  \r\n");
      out.write("\t\t\t\t  var token = $(\"input[name='_csrf']\").attr('value');\r\n");
      out.write("\t\t\t\t  \r\n");
      out.write("\t\t\t\t  $.post( '/blog/postagem/ajax/save', $(this).serialize() )\r\n");
      out.write("\t\t\t\t  \t.done(function(result) {\r\n");
      out.write("\t\t\t\t  \t\t\r\n");
      out.write("\t\t\t\t  \t\tif ( result.status != 'FAIL' ) {\r\n");
      out.write("\t\t\t\t  \t\t\r\n");
      out.write("\t\t\t\t\t  \t\t$('#info').empty().append(\r\n");
      out.write("\t\t\t\t\t  \t\t\t\t\"<p>Postagem salva com sucesso!</p>\" + \r\n");
      out.write("\t\t\t\t\t  \t\t\t\t\"<p>Abrir postagem: <a href='/blog/\" +\r\n");
      out.write("\t\t\t\t\t  \t\t\t\tresult.postagem.permalink + \"'>\" + result.postagem.titulo + \"</a></p>\"\r\n");
      out.write("\t\t\t\t\t  \t\t);\r\n");
      out.write("\t\t\t\t\t  \t\t\r\n");
      out.write("\t\t\t\t\t  \t\t$('#save-ajax').each(function() {\r\n");
      out.write("\t\t\t\t\t  \t\t\tthis.reset();\r\n");
      out.write("\t\t\t\t\t  \t\t});\r\n");
      out.write("\t\t\t\t\t  \t\t$('#titulo-error').empty();\r\n");
      out.write("\t\t\t\t\t  \t\t$('#texto-error').empty();\r\n");
      out.write("\t\t\t\t  \t\t} else {\r\n");
      out.write("\t\t\t\t  \t\t\t\r\n");
      out.write("\t\t\t\t  \t\t\t$('#titulo-error').empty().append( result.tituloError );\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t  \t\t\t$('#texto-error').empty().append( result.textoError );\r\n");
      out.write("\t\t\t\t  \t\t\t\r\n");
      out.write("\t\t\t\t  \t\t}\r\n");
      out.write("\t\t\t\t  \t})\r\n");
      out.write("\t\t\t\t  \t.fail(function( error ) {\r\n");
      out.write("\t\t\t\t  \t\t$('#info').empty().append(\"<p>Error: status \" + \r\n");
      out.write("\t\t\t\t  \t\t\t\terror.status + \", \" + error.statusText + \"</p>\")\r\n");
      out.write("\t\t\t\t  \t});\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$(document).on('click', 'button[id*=\"button_\"]', function(a) {\r\n");
      out.write("\t\t\t\tvar pageNumber = $(this).val();\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\ttbody(pageNumber);\t\t\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$('#search').keyup(function () {\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\tvar value = $(this).val();\r\n");
      out.write("\t\r\n");
      out.write("\t\t\t\tvar exp = new RegExp('^[a-zA-Z0-9]');\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\tif (exp.test(value)) {\r\n");
      out.write("\t\t\t\t\tsearch(value);\t\r\n");
      out.write("\t\t\t\t} else {\r\n");
      out.write("\t\t\t\t\ttbody(1);\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t}); \r\n");
      out.write("\t\t});\r\n");
      out.write("\t\r\n");
      out.write("\t\tfunction search(value) {\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar url = \"/blog/postagem/ajax/titulo/\" + value + \"/page/1\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$('#table-ajax').load( url, function( response, status, xhr) {\r\n");
      out.write("\t\t\t\tif ( status == \"error\" ) {\r\n");
      out.write("\t\t\t\t\tvar msg = \"Sorry but there was an error: \";\r\n");
      out.write("\t\t\t\t    $( \"#info\" ).html( msg + xhr.status + \" \" + xhr.statusText );\r\n");
      out.write("\t\t\t\t}\r\n");
      out.write("\t\t\t}); \r\n");
      out.write("\t\t}\r\n");
      out.write("\t\r\n");
      out.write("\t\tfunction tbody(page) {\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar url = \"\";\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tvar titulo = $('#search').val();\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\tif (titulo.length > 0) {\r\n");
      out.write("\t\t\t\turl = \"/blog/postagem/ajax/titulo/\" + titulo + \"/page/\" + page;\r\n");
      out.write("\t\t\t} else {\r\n");
      out.write("\t\t\t\turl = \"/blog/postagem/ajax/page/\" + page;\r\n");
      out.write("\t\t\t}\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t$( \"#table-ajax\" ).load( url, function( response, status, xhr ) {\r\n");
      out.write("\t\t\t\t\r\n");
      out.write("\t\t\t\t  if ( status == \"error\" ) {\r\n");
      out.write("\t\t\t\t    var msg = \"Sorry but there was an error: \";\r\n");
      out.write("\t\t\t\t    $( \"#info\" ).html( msg + xhr.status + \" \" + xhr.statusText );\r\n");
      out.write("\t\t\t\t  }\r\n");
      out.write("\t\t\t\t  \r\n");
      out.write("\t\t\t\t /* if ( status = \"success\" ) {\r\n");
      out.write("\t\t\t\t\t  $('button').each(function() {\r\n");
      out.write("\t\t\t\t\t\t \r\n");
      out.write("\t\t\t\t\t\t  var id = '#' + $(this).attr('id');\r\n");
      out.write("\t\t\t\t\t\t  \r\n");
      out.write("\t\t\t\t\t\t  if ( $(id).attr('disabled') == 'disabled' ) {\r\n");
      out.write("\t\t\t\t\t\t\t  $(id).removeAttr('disabled');\r\n");
      out.write("\t\t\t\t\t\t  }\r\n");
      out.write("\t\t\t\t\t\t  \r\n");
      out.write("\t\t\t\t\t  });\r\n");
      out.write("\t\t\t\t\t  \r\n");
      out.write("\t\t\t\t\t  $('#button_' + page).attr('disabled', 'disabled');\r\n");
      out.write("\t\t\t\t  }*/\r\n");
      out.write("\t\t\t});\r\n");
      out.write("\t\t}\r\n");
      out.write("\t</script>\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }

  private boolean _jspx_meth_c_005fimport_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:import
    org.apache.taglibs.standard.tag.rt.core.ImportTag _jspx_th_c_005fimport_005f0 = (org.apache.taglibs.standard.tag.rt.core.ImportTag) _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.ImportTag.class);
    boolean _jspx_th_c_005fimport_005f0_reused = false;
    try {
      _jspx_th_c_005fimport_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fimport_005f0.setParent(null);
      // /WEB-INF/views/postagem/cadastro-ajax.jsp(49,1) name = url type = null reqTime = true required = true fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fimport_005f0.setUrl("../menu.jsp");
      int[] _jspx_push_body_count_c_005fimport_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fimport_005f0 = _jspx_th_c_005fimport_005f0.doStartTag();
        if (_jspx_th_c_005fimport_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fimport_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fimport_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fimport_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fimport_0026_005furl_005fnobody.reuse(_jspx_th_c_005fimport_005f0);
      _jspx_th_c_005fimport_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fimport_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fimport_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005furl_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:url
    org.apache.taglibs.standard.tag.rt.core.UrlTag _jspx_th_c_005furl_005f0 = (org.apache.taglibs.standard.tag.rt.core.UrlTag) _005fjspx_005ftagPool_005fc_005furl_0026_005fvar_005fvalue_005fnobody.get(org.apache.taglibs.standard.tag.rt.core.UrlTag.class);
    boolean _jspx_th_c_005furl_005f0_reused = false;
    try {
      _jspx_th_c_005furl_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005furl_005f0.setParent(null);
      // /WEB-INF/views/postagem/cadastro-ajax.jsp(51,1) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f0.setVar("save");
      // /WEB-INF/views/postagem/cadastro-ajax.jsp(51,1) name = value type = null reqTime = true required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005furl_005f0.setValue("/postagem/ajax/save");
      int _jspx_eval_c_005furl_005f0 = _jspx_th_c_005furl_005f0.doStartTag();
      if (_jspx_th_c_005furl_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005furl_0026_005fvar_005fvalue_005fnobody.reuse(_jspx_th_c_005furl_005f0);
      _jspx_th_c_005furl_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005furl_005f0, _jsp_getInstanceManager(), _jspx_th_c_005furl_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_security_005fcsrfInput_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  security:csrfInput
    org.springframework.security.taglibs.csrf.CsrfInputTag _jspx_th_security_005fcsrfInput_005f0 = (org.springframework.security.taglibs.csrf.CsrfInputTag) _005fjspx_005ftagPool_005fsecurity_005fcsrfInput_005fnobody.get(org.springframework.security.taglibs.csrf.CsrfInputTag.class);
    boolean _jspx_th_security_005fcsrfInput_005f0_reused = false;
    try {
      _jspx_th_security_005fcsrfInput_005f0.setPageContext(_jspx_page_context);
      _jspx_th_security_005fcsrfInput_005f0.setParent(null);
      int _jspx_eval_security_005fcsrfInput_005f0 = _jspx_th_security_005fcsrfInput_005f0.doStartTag();
      if (_jspx_th_security_005fcsrfInput_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fsecurity_005fcsrfInput_005fnobody.reuse(_jspx_th_security_005fcsrfInput_005f0);
      _jspx_th_security_005fcsrfInput_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_security_005fcsrfInput_005f0, _jsp_getInstanceManager(), _jspx_th_security_005fcsrfInput_005f0_reused);
    }
    return false;
  }

  private boolean _jspx_meth_c_005fforEach_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_005fforEach_005f0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    boolean _jspx_th_c_005fforEach_005f0_reused = false;
    try {
      _jspx_th_c_005fforEach_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fforEach_005f0.setParent(null);
      // /WEB-INF/views/postagem/cadastro-ajax.jsp(69,5) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setVar("c");
      // /WEB-INF/views/postagem/cadastro-ajax.jsp(69,5) name = items type = javax.el.ValueExpression reqTime = true required = false fragment = false deferredValue = true expectedTypeName = java.lang.Object deferredMethod = false methodSignature = null
      _jspx_th_c_005fforEach_005f0.setItems(new org.apache.jasper.el.JspValueExpression("/WEB-INF/views/postagem/cadastro-ajax.jsp(69,5) '${categorias}'",_jsp_getExpressionFactory().createValueExpression(_jspx_page_context.getELContext(),"${categorias}",java.lang.Object.class)).getValue(_jspx_page_context.getELContext()));
      int[] _jspx_push_body_count_c_005fforEach_005f0 = new int[] { 0 };
      try {
        int _jspx_eval_c_005fforEach_005f0 = _jspx_th_c_005fforEach_005f0.doStartTag();
        if (_jspx_eval_c_005fforEach_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          do {
            out.write("\r\n");
            out.write("\t\t\t\t\t<option value=\"");
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${c.id}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write('"');
            out.write('>');
            out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${c.descricao}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
            out.write("</option>\r\n");
            out.write("\t\t\t\t\t");
            int evalDoAfterBody = _jspx_th_c_005fforEach_005f0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
        }
        if (_jspx_th_c_005fforEach_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return true;
        }
      } catch (java.lang.Throwable _jspx_exception) {
        while (_jspx_push_body_count_c_005fforEach_005f0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_c_005fforEach_005f0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_c_005fforEach_005f0.doFinally();
      }
      _005fjspx_005ftagPool_005fc_005fforEach_0026_005fvar_005fitems.reuse(_jspx_th_c_005fforEach_005f0);
      _jspx_th_c_005fforEach_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fforEach_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fforEach_005f0_reused);
    }
    return false;
  }
}