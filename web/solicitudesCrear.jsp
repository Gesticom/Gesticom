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
                        <li><a class="btn btn-primary" href="campanasListar.jsp"><i class="fa fa-briefcase fa-fw"></i> Campa�as</a>
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
                        <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Espa�ol</a><a href="indexIngles.jsp"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">ADMINISTRADOR </a></div>
                        <li class="active">Login</li> 
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

                    <form  method="post" action="GestionSolicitudes">
                        <div >

                            <table class="table table-condensed" border=3>


                                <td><label for="Id_Solicitud">N�mero:</label>
                                <td><input type="text" name="Id_Solicitud" id="Id_Solicitud"  maxlength="15" required tabindex="2"></td>

                                    <td><label for="Fecha">Fecha</label>
                                    <td><input name="Fecha" id="Fecha" type="date"  required maxlength="45" tabindex="3"></td><tr>
                                    <td><label for="Cargo">Cargo:</label> 
                                    <td><input name="Cargo" id="Cargo" type="text"  required maxlength="45" tabindex="4">

                                    <td><label for="Perfil">Perfil:</label>
                                    <td><input name="Perfil" id="Perfil" type="text" tabindex="5"></td><tr>
                                    <td><label for="Experiencia">Experiencia:</label>
                                    <td><input name="Experiencia" id="Experiencia" type="text"  required maxlength="10" tabindex="6">
                                    <td><label for="Estudio">Estudio</label>
                                    <td><input name="Estudio" id="Estudio" type="text"  required maxlength="50" tabindex="8"></td><tr>
                                    <td><label for="Conocimiento">Conocimiento</label>
                                    <td><input name="Conocimiento" id="Conocimiento" type="text"  required tabindex="7">
                                    <td><label for="Otros">Otros</label>
                                    <td><input name="Otros" id="Otros" type="text"  required tabindex="7"></td><tr>
                                    <td><label for="Departamento">Departamento</label>
                                    <td><select name="Departamento" tabindex="11">
                                            <option value="1">Gerencia</option>
                                            <option value="2">Ventas</option>
                                            <option value="3">Recursos Humanos</option>
                                    </select>
                                    <td><label for="CoordinadorSolicitante">Coordinador</label>
                                    <td><select name="CoordinadorSolicitante" tabindex="12">
                                            <option value="1">AVVillas</option>
                                            <option value="2">Comcel</option>
                                            <option value="3">Gas Natural</option>
                                        </select></td><tr>


                            </table>  
                            <input type="submit" class="btn btn-success" name="Boton" value="Solicitud Nueva" />
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
                                // Mensajes a generar para indicar al usuario la estructura valida que debe ingresar. Se debe indicar por cada regla adicionada anteriormente para sobre escribir los mensajes por defecto (los cuales están en inglés. Se encuentran en "jquery.validate.js" línea 308)
                                messages: {
                                    Iddocumento: {
                                        required: "Campo requerido",
                                        minlength: "M�nimo {0} caracteres",
                                        maxlength: "Maximo {0} caracteres"
                                    },
                                    Nombres: {
                                        required: "Campo requerido",
                                        minlength: "M�nimo {0} caracteres",
                                    }
                                } // Cierre de los mensajes
                            }); // Cierre de la función validate
                        }); // Cierre de la función ready
                    </script>


                    <!-- InstanceEndEditable -->

                </section>

                <div id="pie"><a href="AboutGesticom.html">Versi�n 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Cont�ctenos: 3133163023</a></div>
                <div id="iconos">Siguenos tambi�n en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>

            </div>

        </main>
    </body>
</html>
<!-- InstanceEnd -->
