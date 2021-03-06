

<%@ page import="especialidad.Especialidad" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="referenc" />
        <g:set var="entityName" value="${message(code: 'especialidad.label', default: 'Especialidad')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
      
      
      
<div id="cabecera">
  <div id="cabColI">
    <div id="logo">
       <h1><img src="${resource(dir:'images',file:'SOS.gif')}" width="97" height="53" align="texttop" />Referencias Médicas</h1>        
    </div>
    <div id="breadcrumbs">
        <p>&nbsp;</p>
    </div>
  </div>
          <div id="cabColD">
          <div id="infoSec">14-12-2011 06:59 PM &nbsp; | &nbsp; Cambiar idioma <a href="#"><img src="${resource(dir:'images',file:'ico_ingles.jpg')}" alt="Inglés" width="25" height="34" hspace="2" border="0" align="absmiddle" /></a> <a href="#"><img src="${resource(dir:'images',file:'ico_port.jpg')}" alt="Portugués" width="25" height="34" hspace="2" border="0" align="absmiddle" /></a></div>
          <div id="header"><div id="loginHeader"><g:loginControl/></div></div>
        </div>
</div>

<div id="menu1">
  <ul>
   <li><g:link controller="especialidad" action="list" class="selected"><g:message code="Modificar Especialidades"/></g:link></li>
   <li><g:link controller="especialidad" action="create"><g:message code="Crear especialidad"/></g:link></li>
  </ul>
</div>  
      

     <g:form method="post" >
        <g:hiddenField name="id" value="${especialidadInstance?.id}" />
        <g:hiddenField name="version" value="${especialidadInstance?.version}" />

<div id="nivel1">
  <div id="nivel2">
    <div id="contenido">
    <h1>Datos de la especialidad</h1>
       <g:link class="boton1" controller="especialidad" action="list"><g:message code="Volver"/></g:link>
       <p>&nbsp;</p>
       
        <div class="form1">
          
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${especialidadInstance}">
            <div class="errors">
                <g:renderErrors bean="${especialidadInstance}" as="list" />
            </div>
            </g:hasErrors>
          
            <table class="tabla2">
                <tbody>
                  
                    <tr>
                        <td valign="top">
                            <label for="numMinisterioSalud"><g:message code="especialidad.nombre.label" default="Nombre" /></td></label>
                        <td valign="top" class="value ${hasErrors(bean: especialidadInstance, field: 'nombre', 'errors')}">
                            <g:textField style="width:250px" name="nombre" value="${especialidadInstance?.nombre}" />
                        </td>
                    </tr>
                    <tr>
                        <td valign="top">
                            <label for="numMinisterioSalud"><g:message code="especialidad.descripcion.label" default="Descripcion" /></td></label>
                        <td valign="top" class="value ${hasErrors(bean: especialidadInstance, field: 'descripcion', 'errors')}">
                            <g:textArea style="width:250px" name="descripcion" value="${especialidadInstance?.descripcion}" />
                        </td>
                    </tr>

                </tbody>
            </table>
            
            <p>&nbsp;</p>
            <div>
            <g:actionSubmit class="boton_submit2" action="update" value="${message(code: 'Actualizar', default: 'Actualizar')}" />
            <g:actionSubmit class="boton_submit2" action="delete" value="${message(code: 'Eliminar', default: 'Eliminar')}" onclick="return confirm('${message(code: '¿Está seguro?', default: '¿Está seguro?')}');" />
            </div>
        </div>
        
    <p>&nbsp;</p>
    </div>      
  </div>
  <p style="clear:both">&nbsp;</p>
</div>
      </g:form>
     
    </body>
</html>
