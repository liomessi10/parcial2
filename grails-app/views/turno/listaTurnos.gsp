<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Listado Turnos</title>
    </head>  
    <body>
        
        <h1> Listado de turnos pendientes del paciente </h1>

        <h1> Rango de fechas <br> Fecha desde: ${fechaDesde} <br> Fecha hasta: ${fechaHasta} </h1>

        <h1>Paciente: ${paciente.nombre}  </h1>

        <table class="table">
            <tr>
                <th>Fecha turno</th>
                <th>Hora turno</th>
                <th>Profesional</th>
                <th>Especialidad</th>
                <th>Cancelar Turno</th>
            </tr>

            <%-- en listado tenemos array de turnos --%>
            <g:each in="${listaTurnos}">            
                <tr>
                    <td>${it.fecha}</td>
                    <td>${it.hora}</td>
                    <td>${it.medico.nombre}</td>
                    <td>${it.medico.especialidad}</td>
                    <td><g:link action="cancelar" id="${it.id}">Cancelar</g:link></td>
                </tr>
            </g:each>
        </table>
    </body>  
</html>
