

<%@ page import="caso.HistorialCaso" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <g:set var="entityName" value="${message(code: 'historialCaso.label', default: 'HistorialCaso')}" />
        <title><g:message code="default.create.label" args="[entityName]" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="default.create.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${historialCasoInstance}">
            <div class="errors">
                <g:renderErrors bean="${historialCasoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fecha"><g:message code="historialCaso.fecha.label" default="Fecha" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: historialCasoInstance, field: 'fecha', 'errors')}">
                                    <g:datePicker name="fecha" precision="day" value="${historialCasoInstance?.fecha}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="caso"><g:message code="historialCaso.caso.label" default="Caso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: historialCasoInstance, field: 'caso', 'errors')}">
                                    <g:select name="caso.id" from="${caso.Caso.list()}" optionKey="id" optionValue="descripcion" value="${historialCasoInstance?.caso?.id}"  />
                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="medico"><g:message code="historialCaso.medico.label" default="Medico" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: historialCasoInstance, field: 'medico', 'errors')}">
                                    <g:select name="medico.id" from="${medico.Medico.list()}" optionKey="id" optionValue="nombre" value="${historialCasoInstance?.medico?.id}"  />
                                </td>
                            </tr>
                          <%--
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="estadoCaso"><g:message code="historialCaso.estadoCaso.label" default="Estado Caso" /></label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: historialCasoInstance, field: 'estadoCaso', 'errors')}">
                                    <g:textField name="estadoCaso" value="${historialCasoInstance?.estadoCaso}" />
                                </td>
                            </tr>
                            --%>
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
