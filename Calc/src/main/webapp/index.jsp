<%-- 
    Document   : index
    Created on : 24 sept. 2020, 12:52:44
    Author     : julio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

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
            
            <form name="Calcular" class="padre" method="POST"  action="OperacionController?accion=resolver" name = "formulario">
                
                <b>Ingrese Un Numero </b>
                <input type="number" step="0.01" id="num1"  name="primero" required=""><br/>

                <b>Ingrese Un Numero </b>
                <input type="number" step="0.01" id="num2"  name="segundo" required=""><br/>
                
                <label><input type="checkbox" id="Suma" value="1" name="operacion">Suma</label><br>
                <label><input type="checkbox" id="Mul" value="2" name="operacion">Multiplicacion</label><br>
                <label><input type="checkbox" id="mayor" value="3" name="operacion">Numero Mayor</label><br>
                <label><input type="checkbox" id="potencia" value="4" name="operacion">n(1^n)</label><br>
                <label><input type="checkbox" id="binarios" value="5" name="operacion">a Binarios</label><br>
              <input type="submit" value="Submit!" />
            </form>
        </div>
        
          <c:if test="${requestScope['mostrar'] != null}">
           <div class="alert alert-success" role="alert">
                    <p>${operacion.suma()}</p>
                    <p>${operacion.multiplicacion()}</p>            
                    <p>${operacion.mayor()}</p>
                    <p>${operacion.potencia()}</p>
                    <p>${operacion.numBinario()}</p>
           </div>                        
        </c:if>
   
        <%@include  file="js/Bootstrap.html" %>
    </body>
</html>
