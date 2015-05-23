<%@page import="Modelo.UsuarioDTO"%>
<%@page import="Modelo.UsuarioDAO"%>
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
                        <li href="usuariosEditar.jsp" class="active">Editar</li>
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
                    <%
                        int Posi = Integer.parseInt(request.getParameter("pos"));
                        UsuarioDAO usudao = new UsuarioDAO();
                        UsuarioDTO usudto = new UsuarioDTO();
                        usudto = usudao.consultarUnRegistro1(Posi);
                    %>

                    <form name="formularioActualizacionUsuarios" action="GestionUsuarios" method="POST">
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
                                <td><input type="text" name="Id_Usuario" id="Id_Usuario" value="<%if(usudto!=null){out.print(usudto.getId_Usuario());}%>"> </td><tr>

                                <td><label for="Usuario">Usuario:</label>
                                <td><input type="text" name="Usuario" id="Usuario"  value="<%if(usudto!=null){out.print(usudto.getUsuario());}%>"> </td><tr>

                                    <td><label for="Nombres">Nombres:</label>
                                    <td><input name="Nombres" id="Nombres" type="text"  value="<%if(usudto!=null){out.print(usudto.getNombres());}%>">
                                    <td><label for="Apellidos">Apellidos:</label> 
                                    <td><input name="Apellidos" id="Apellidos" type="text"  value="<%if(usudto!=null){out.print(usudto.getApellidos());}%>"></td><tr>

                                    <td><label for="FechaDeNacimiento">Fecha Nacimiento:</label>
                                    <td><input name="FechaDeNacimiento" id="FechaDeNacimiento" type="text"  value="<%if(usudto!=null){out.print(usudto.getFechaDeNacimiento());}%>">
                                    <td><label for="LugarDeNacimiento">Lugar Nacimiento:</label>
                                    <td><input name="LugarDeNacimiento" id="LugarDeNacimiento" type="text"  value="<%if(usudto!=null){out.print(usudto.getLugarDeNacimiento());}%>"></td><tr>
                                    <td><label for="TelefonoFijo">Teléfono:</label>
                                    <td><input name="TelefonoFijo" id="TelefonoFijo" type="text"  value="<%if(usudto!=null){out.print(usudto.getTelefonoFijo());}%>">
                                    <td><label for="Celular">Celular:</label>
                                    <td><input name="Celular" id="Celular" type="text"  value="<%if(usudto!=null){out.print(usudto.getCelular());}%>"></td><tr>
                                    <td><label for="Direccion">Dirección:</label>
                                    <td><input name="Direccion" id="Direccion" type="text"  value="<%if(usudto!=null){out.print(usudto.getDireccion());}%>">
                                    <td><label for="Ciudad">Ciudad:</label>
                                    <td><select name="Ciudad" tabindex="11">
                                            <option value="1">Bogotá</option>
                                            <option value="2">Medellín</option>
                                            <option value="3">Cali</option>
                                            <option value="4">Barranquilla</option>
                                            <option value="5">Bucaramanga</option>
                                            <option value="6">Cartagena</option>
                                            <option value="7">Manizalez</option>
                                            <option value="8">Santa Marta></option>
                                        </select></td><tr>
                                    <td><label for="Cargo">Cargo:</label>
                                    <td><select name="Cargo" tabindex="12">
                                            <option value="1">Gerente</option>
                                            <option value="2">Subgerente</option>
                                            <option value="3">Asistente</option>
                                            <option value="4">Secretaria</option>
                                            <option value="5">Operario</option>
                                            <option value="6">Tecnólogo</option>
                                            <option value="7">Técnico</option>
                                            <option value="8">Celador</option>
                                        </select></td>
                                    <td><label for="Role">Role:</label>
                                    <td><select name="Role" tabindex="13">
                                            <option value="1">Administrador</option>
                                            <option value="2">Coordinador</option>
                                            <option value="3">Psicologo</option>
                                            <option value="4">Auxiliar</option>
                                        </select></td><tr>
                                    <td><label for="Contrasena">Digite la contraseña:</label>
                                    <td><input name="Contrasena" id="Contrasena" type="password" value="<%if(usudto!=null){out.print(usudto.getContrasena());}%>">
                                    <td><label for="Contrasena">Repita la contraseña:</label>
                                    <td><input name="Contrasena" id="Contrasena" type="password" value="<%if(usudto!=null){out.print(usudto.getContrasena());}%>">



                            </table>  
                            <input type="submit" class="btn btn-success" name="Boton" value="Actualizar" />
                            <input type="submit" class="btn btn-success" name="Boton" value="Cancelar" />

                        </div>                        
                    </form>


                    <%

                        if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Usuario Actualizado Correctamente")</script>

                    <%         }
                    %>                  

                    <script>
                        $().ready(function () {
                            $("#formularioActualizacionUsuarios").validate({
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
