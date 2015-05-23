<%@page import="Modelo.RoleDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.RoleDAO"%>
<html><!-- InstanceBegin template="../Templates/Gesticom.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1" >


        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <link rel="icon" type="image/x-icon" href="imagenes/favicon.ico">


        <!-- InstanceBeginEditable name="doctitle" -->
        <title>Bienvenido ADMINISTRADOR</title>
        <!-- InstanceEndEditable -->

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>
        <!-- InstanceBeginEditable name="head" -->
        <!-- InstanceEndEditable -->
    </head>
    <body>
        <main>
            <div id="logo"><h1> <IMG SRC="imagenes/gesticom.png" height="80" width="80"></h1></div>
            <div id="baner"><h1> <IMG SRC="imagenes/baner.png" height="100" width="760"></h1></div>
            <div id="contenido">	
                <div id="header">
                    <ul class="nav">
                        <!--  <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw"></i> User</a> -->
                        <li><a class="btn btn-primary" href="usuariosListar.jsp"><i class="fa fa-user fa-fw"></i> Usuarios</a>
                            <ul>
                                <li><a href="usuariosCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="usuariosListar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="usuariosListar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="usuariosListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="ciudadesListar.jsp"><i class="fa fa-globe fa-fw"></i> Ciudades</a>
                            <ul>
                                <li><a href="ciudadesCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="ciudadesListar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="ciudadesListar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="ciudadesListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="campanasListar.jsp"><i class="fa fa-briefcase fa-fw"></i> Campañas</a>
                            <ul>
                                <li><a href="campanasCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="campanasListar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="campanasListar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="campanasListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="solicitudesListar.jsp"><i class="fa fa-users fa-fw"></i> Solicitudes</a>
                            <ul>
                                <li><a href="SolicitudesCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="solicitudesListar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="solicitudesListar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="solicitudesListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        <li><a class="btn btn-primary" href="profesional.jsp"><i class="fa fa-user fa-fw"></i> Profesional</a>
                        <li><a class="btn btn-primary" href="competencias.jsp"><i class="fa fa-user fa-fw"></i> Competencias</a>
                    </ul>
                </div>
                <section>
                    <!-- InstanceBeginEditable name="EditRegionSection" -->
                    <ol class="breadcrumb">
                        <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Español</a><a href="indexIngles.jsp"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">ADMINISTRADOR </a><a href="LogOut">Cerrar Sesión</a></div>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="inicioAdmin.jsp">Usuarios</a></li>
                        <li href="usuariosCrear.jsp" class="active">Crear</li>
                    </ol>
                    <script type="text/javascript">
                        $(function () {
                            $("#FechaNacimiento").datepicker({
                                changeMonth: true,
                                changeYear: true,
                                showOn: "button",
                                buttonImage: "imagenes/ico.png",
                                buttonImageOnly: true,
                                showButtonPanel: true,
                            });
                        })
                    </script>

                    <form id="formularioUsuarios" method="post" action="GestionUsuarios">
                        <div id="Usuarios1">

                            <table class="table table-condensed" border=3>

                                <!--                                <table class="table table-condensed table-striped" border=3> -->

                                <td><label  for="Tipo">Tipo Documento: </label>
                                <td><select name="TipoDocumento" tabindex="1">
                                        <option value="1">Cedula de Ciudadanía</option>
                                        <option value="2">Tarjeta de Identidad</option>
                                        <option value="3">Cedula de Extranjería</option>
                                        <option value="4">Nit</option>
                                    </select>
                                <td><label for="Id_Usuario">Número Documento:</label>
                                <td><input type="text" name="Id_Usuario" id="Id_Usuario"  maxlength="15" required tabindex="2"></td><tr>

                                <td><label for="Usuario">Usuario:</label>
                                <td><input type="text" name="Usuario" id="Usuario"  maxlength="15" required tabindex="2"></td><tr>

                                    <td><label for="Nombres">Nombres:</label>
                                    <td><input name="Nombres" id="Nombres" type="text"  required maxlength="45" tabindex="3">
                                    <td><label for="Apellidos">Apellidos:</label> 
                                    <td><input name="Apellidos" id="Apellidos" type="text"  required maxlength="45" tabindex="4"></td><tr>

                                    <td><label for="FechaDeNacimiento">Fecha Nacimiento:</label>
                                    <td><input name="FechaDeNacimiento" id="FechaDeNacimiento" type="date" tabindex="5">
                                    <td><label for="LugarDeNacimiento">Lugar Nacimiento:</label>
                                    <td><input name="LugarDeNacimiento" id="LugarDeNacimiento" type="text"  required maxlength="10" tabindex="6"></td><tr>
                                    <td><label for="TelefonoFijo">Teléfono:</label>
                                    <td><input name="TelefonoFijo" id="TelefonoFijo" type="text"  required tabindex="7">
                                    <td><label for="Celular">Celular:</label>
                                    <td><input name="Celular" id="Celular" type="text"  required maxlength="50" tabindex="8"></td><tr>
                                    <td><label for="Direccion">Dirección:</label>
                                    <td><input name="Direccion" id="Direccion" type="text"  required maxlength="45" tabindex="9">
                                    <td><label for="Ciudad">Ciudad:</label>
                                    <td><select name="Ciudad" tabindex="11">
                                            <option value="1">Bogotá</option>
                                            <option value="2">Medellín</option>
                                            <option value="3">Cali</option>
                                    </select></td><tr>
                                    <td><label for="Cargo">Cargo:</label>
                                    <td><select name="Cargo" tabindex="12">
                                            
                                        </td>
                                    <td><label for="Role">Role:</label>
                                    <td><select name="Role" tabindex="13">
                                            <%
                                                RoleDAO ObjDaoRole = new RoleDAO();
                                                ArrayList<RoleDTO> listadoRole = new ArrayList<RoleDTO>();
                                                listadoRole = ObjDaoRole.ConsultarTodos();
                                                for (int a=0; a <listadoRole.size(); a++){
                                            %>
                                            
                                            <option value="<%= listadoRole.get(a).getId_Role()%>">
                                                <%= listadoRole.get(a).getRole()%></option>
                                            <% }%>
                                        </select></td>
                                   <tr>

                                    <td><label for="clave">Digite la contraseña:</label>
                                    <td><input name="clave" id="clave" type="password" tabindex="13" required> <br>
                                    <td><label for="clave">Repita la contraseña:</label>
                                    <td><input name="clave1" id="clave1" type="password" tabindex="14" required> <br>


                            </table>  
                            <input type="submit" class="btn btn-success" name="Boton" value="Usuario Nuevo" />
                            <input type="submit" class="btn btn-success" name="Boton" value="Cancelar" />

                        </div>                        
                    </form>


                    <%

                        if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Usuario Registrado Correctamente")</script>

                    <%         }
                    %>                  

                    <script>
                        $().ready(function () {
                            $("#formularioUsuarios").validate({
                                rules: {
                                    Iddocumento: {
                                        required: true,
                                        minlength: 3,
                                        maxlength: 15
                                    },
                                    Nombres: {
                                        required: true,
                                        minlength: 5,
                                        maxlength: 45
                                    },
                                    Apellidos: {
                                        required: true,
                                        minlength: 5,
                                        maxlength: 45
                                    }
                                },
                                // Mensajes a generar para indicar al usuario la estructura valida que debe ingresar. Se debe indicar por cada regla adicionada anteriormente para sobre escribir los mensajes por defecto (los cuales estÃ¡n en inglÃ©s. Se encuentran en "jquery.validate.js" lÃ­nea 308)
                                messages: {
                                    Iddocumento: {
                                        required: "Campo requerido",
                                        minlength: "Mínimo {0} caracteres",
                                        maxlength: "Maximo {0} caracteres"
                                    },
                                    Nombres: {
                                        required: "Campo requerido",
                                        minlength: "Mínimo {0} caracteres",
                                    }
                                } // Cierre de los mensajes
                            }); // Cierre de la funciÃ³n validate
                        }); // Cierre de la funciÃ³n ready
                    </script>


                    <!-- InstanceEndEditable -->

                </section>

                <div id="pie"><a href="AboutGesticom.html">Versión 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Contáctenos: 3133163023</a></div>
                <div id="iconos">Siguenos también en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>

            </div>

        </main>
    </body>
</html>
<!-- InstanceEnd -->
