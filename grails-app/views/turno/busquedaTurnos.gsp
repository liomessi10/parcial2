<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Busqueda Turnos</title>
    </head>  
    <body>

        <fieldset><legend>Datos Paciente </legend>
            <label> Nombre: ${session.paciente.nombre} </label><br>
            <label> DNI: ${session.paciente.dni} </label><br>
            <label> Obra Social: ${session.paciente.obrasocial} </label><br>
            <label> session.paciente: ${session.paciente} </label><br>
            <label> session.paciente.id: ${session.paciente.id} </label>
        </fieldset>

        <fieldset><legend>Busqueda de turnos</legend>
        
            <g:form action="listarTurnosPaciente" method="POST">

                <label> Fecha desde </label>
                <input type="date" name="fechaDesde"/>
                <br>
                <label> Fecha Hasta </label>
                <input type="date" name="fechaHasta"/>
                <br>
                <g:submitButton name="create" class="create" value="Buscar"/>
            </g:form>
        </fieldset>












        
        <%-- <g:form action="buscarContrato" method="POST"> --%>
            <%-- se agrega fieldset para estilo --%>
            <%-- <fieldset class="buttons">
                <label for="cliente">Cliente: </label>
                <select name ="cliente" id="cliente">
                    <option value="%%"> Todos </option>                    
                    <g:each in="${clientes?}">
                        <option value="${it.id}"> ${it.apellido} </option>
                    </g:each>
                </select>

                <label for="propietario">Propietario: </label>
                <select name ="propietario" id="propietario">
                    <option value="%%"> Todos </option>                    
                    <g:each in="${propietarios}">
                        <option value="${it.id}"> ${it.apellido} </option>
                    </g:each>
                </select>

                <label for="tipo">Tipo:</label>
                <select name ="tipo" id="tipo">
                    <option value="%%">Todos</option>
                    <option value="Casa">Casa</option>
                    <option value="Departamento">Departamento </option>
                    <option value="Local">Local</option>
                    <option value="Oficina">Oficina</option>
                </select>

                <label for="ubicacion">Ubicacion:</label>
                <select name ="ubicacion" id="ubicacion">
                    <option value="%%">Todas</option>
                    <option value="F.M.E.">F.M.E.</option>
                    <option value="Valle Viejo">Valle Viejo</option>
                    <option value="Capital">Capital</option>
                    <option value="Ambato">Ambato</option>
                </select>

                <g:submitButton name="search" class="search" value="Buscar"/>
                <g:link class="list" action="contrato">Mostrar todos</g:link>
                <g:link class="create" action="altaContrato">Crear contrato</g:link>
            </fieldset>
        </g:form> --%>

        <%-- <table class="table">
            <tr>
                <th>Nombre y Apellido</th>
                <th>Telefono</th>
                <th>Email</th>
                <th>Fecha</th>
                <th>Estado</th>
                <th>Propiedad</th>
                <th>Acción</th>
            </tr> --%>

            <%-- en listado tenemos array de contratos --%>
            <%-- <g:each in="${listado?}">            
                <tr>
                    <td>${it.nombreApellido}</td>
                    <td>${it.telefono}</td>
                    <td>${it.email}</td>
                    <td>${it.fecha}</td>
                    <td>${it.estado}</td>
                    <td><g:link action="verPropiedad" id="${it.propiedad.id}">${it.propiedad}</g:link></td>
                    <td><g:link action="verConsulta" params="[id1: it.id, nombre: it.propiedad.direccion]">Atender</g:link></td>
                </tr>
            </g:each>
        </table> --%>
    </body>  
</html>
