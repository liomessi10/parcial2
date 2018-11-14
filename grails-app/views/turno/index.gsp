<!DOCTYPE html>
<html>  
    <head>
        <meta name="layout" content="main" />
	    <title>Iniciar</title>
    </head>  
     <body>
        
        
        <g:form action="login" method="POST">
            
            <fieldset>
                <label for="nombre"> Nombre: </label>
                <input type="text" name="nombre" id="nombre">
            </fieldset>
            <fieldset>
                <g:submitButton name="create" class="create" value="Iniciar"/>
            </fieldset>
        </g:form> 

    </body>  
</html>
