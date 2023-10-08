<%-- 
    Document   : index
    Created on : 2/10/2023, 19:28:51
    Author     : Luis Zambra
--%>

<%@page import="modelo.Puesto"%>
<%@page import= "java.util.HashMap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empleados</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
    </head>
    <body>
        <h1>Formulario Empleados</h1>
        <div class="container"> 
            <form action="" method="post" class="form-group">
                <label for="lbl_codigo"><b>Codigo:</b></label>
                <input type="text" name="txt_codigo" id="txt_codigo" class="form_control" placeholder ="Ejemplo: E001" required> 
                
                <br>
                <label for="lbl_nombres"><b>Nombres:</b></label>
                <input type="text" name="txt_nombres" id="txt_nombres" class="form_control" placeholder ="Ejemplo: Nombre 1  Nombre 2 " required> 
                <br>
                <label for="lbl_apellidos"><b>Apellidos:</b></label>
                <input type="text" name="txt_apellidos" id="txt_apellidos" class="form_control" placeholder ="Ejemplo: Apellido 1  Apellido 2 " required> 
                <br>
                <label for="lbl_direccion"><b>Direccion:</b></label>
                <input type="text" name="txt_direccion" id="txt_direccion" class="form_control" placeholder ="# Casa Calle Zona Ciudad" required> 
                <br>
                <label for="lbl_telefonos"><b>Telefonos:</b></label>
                <input type="number" name="txt_telefonos" id="txt_telefonos" class="form_control" placeholder ="Ejemplo: 555555555 " required> 
               <br>
               <label for="lbl_fn"><b>Fecha de nacimiento:</b></label>
                <input type="date" name="txt_fn" id="txt_fn" class="form_control"  required> 
               <br>
                <label for="lbl_sangre"><b>Puesto</b></label>
                <select name="drop_puesto" id="drop_puesto" class="form_control">
                   
                    
                    <%
                    Puesto puesto = new Puesto();
                       HashMap<String, String> drop= puesto.drop_sangre();
                     

for(String i: drop.keySet()){
out.println(" <option value='"+ i  + "'>" + drop.get(i)+ "</option>");
                        }


                    %>
                    
                      
                    </select>
                <br>
                <button type="button" name="btn_agregar" id="btn_agregar" class="btn btn-primary">Agregar</button>
              
            </form>
        
            
        </div>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"> 
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script> 
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script> 
    </body>
</html>
