

<%@ page import="medico.Triaje" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="referenc" />
        <g:set var="entityName" value="${message(code: 'triaje.label', default: 'Triaje')}" />
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
<li><g:link controller="triaje" action="list" class="selected"><g:message code="Modificar Encargado de Triaje"/></g:link></li>
<li><g:link controller="triaje" action="create"><g:message code="Cargar Encargado de Triaje"/></g:link></li>
</ul>
</div>

<div id="nivel1">
  <div id="nivel2">
    <div id="contenido">
    <h1>Datos del encargado de triaje</h1>
       <g:link class="boton1" controller="triaje" action="list"><g:message code="Volver"/></g:link>
       <p>&nbsp;</p>
       
        <div class="form1">
           
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${triajeInstance}">
            <div class="errors">
                <g:renderErrors bean="${triajeInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${triajeInstance?.id}" />
                <g:hiddenField name="version" value="${triajeInstance?.version}" />
                
                    <table class="tabla2">
                        <tbody>
                            <tr>
                                <td valign="top" class="name">
                                  <label for="nombre"><g:message code="nombre.label" default="Nombre" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'nombre', 'errors')}">
                                    <g:textField style="width:250px" name="nombre" value="${triajeInstance?.nombre}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="apellido"><g:message code="apellido.label" default="Apellido" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'apellido', 'errors')}">
                                    <g:textField style="width:250px" name="apellido" value="${triajeInstance?.apellido}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="cedula"><g:message code="cedula.label" default="Cedula" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'cedula', 'errors')}">
                                    <g:textField style="width:250px" name="cedula" value="${fieldValue(bean: triajeInstance, field: 'cedula')}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="sexo"><g:message code="sexo.label" default="Sexo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'sexo', 'errors')}">
                                    <g:select style="width:250px" name="sexo" noSelection="['':'Seleccione']" from="['Masculino', 'Femenino']" value="${triajeInstance?.sexo}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="nacionalidad"><g:message code="nacionalidad.label" default="Nacionalidad" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'nacionalidad', 'errors')}">
                                    <g:textField style="width:250px" name="nacionalidad" value="${triajeInstance?.nacionalidad}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="login"><g:message code="login.label" default="Usuario" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'login', 'errors')}">
                                    <g:textField style="width:250px" name="login" value="${triajeInstance?.login}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="password"><g:message code="password.label" default="Contraseña" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'password', 'errors')}">
                                    <g:passwordField style="width:250px" name="password" value="${triajeInstance?.password}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="mail"><g:message code="mail.label" default="Correo" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'mail', 'errors')}">
                                    <g:textField style="width:250px" name="mail" value="${triajeInstance?.mail}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="numColegioMedico"><g:message code="numColegioMedico.label" default="Num Colegio Medico" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'numColegioMedico', 'errors')}">
                                    <g:textField style="width:250px" name="numColegioMedico" value="${fieldValue(bean: triajeInstance, field: 'numColegioMedico')}" />
                                </td>
                            </tr>
                        
                            <tr>
                                <td valign="top" class="name">
                                  <label for="numMinisterioSalud"><g:message code="numMinisterioSalud.label" default="Num Ministerio Salud" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: triajeInstance, field: 'numMinisterioSalud', 'errors')}">
                                    <g:textField style="width:250px" name="numMinisterioSalud" value="${fieldValue(bean: triajeInstance, field: 'numMinisterioSalud')}" />
                                </td>
                            </tr>                        
                        </tbody>
                    </table>
                <p>&nbsp;</p>
                <div>
                    <g:actionSubmit class="boton_submit2" action="update" value="${message(code: 'button.update.label', default: 'Actualizar')}" />
                    <g:actionSubmit class="boton_submit2" action="delete" value="${message(code: 'button.delete.label', default: 'Eliminar')}" onclick="return confirm('${message(code: 'delete.confirm.message', default: '¿Está seguro?')}');" />
                </div>
            </g:form>
        </div>
       <p>&nbsp;</p>
    </div>      
  </div>
  <p style="clear:both">&nbsp;</p>
</div>
    </body>
</html>
