<%-- 
    Document   : index
    Created on : 24 sept. 2020, 12:52:44
    Author     : julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@include file="css/Bootstrap.html" %>
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Calcular</h1>
        <div id="formulario" class="centrar" style="align-content: center">
            
            <form name="Calcular" method="POST" class="padre" action="OperacionController?accion=resolver" name = "formulario">
                
                <b>Ingrese Un Numero </b>
                <input type="number" id="num1" name="primero" required=""><br/>

                <b>Ingrese Un Numero </b>
                <input type="number" id="num2" name="segundo"><br/>
                
                <label><input type="checkbox" id="Suma" value="1" name="Suma"> Este es mi primer checkbox</label><br>
                <label><input type="checkbox" id="Multiplicacion" value="1" name="Multiplicacion">  Este es mi primer checkbox</label><br>
                <label><input type="checkbox" id="cbox1" value="1" name="Mayor"> Este es mi primer checkbox</label><br>
                <label><input type="checkbox" id="cbox1" value="1" name="Potencia"> Este es mi primer checkbox</label><br>
                <label><input type="checkbox" id="cbox1" value="1" name="Binario"> Este es mi primer checkbox</label><br>
              <input type="submit" value="Submit!" />
            </form>
        </div>
        
        <%@include  file="js/Bootstrap.html" %>
    </body>
</html>
