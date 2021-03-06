<%@page import="java.util.ArrayList"%>
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
                        <li><a class="btn btn-primary" href="solicitudesListar.jsp"><i class="fa fa-user fa-fw"></i> Solicitudes</a>
                            <ul>
                                <li><a href="solicitudesCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="solicitudesListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="hojasDeVidaListar.jsp"><i class="fa fa-globe fa-fw"></i> Hojas de Vida</a>
                            <ul>
                                <li><a href="hojasDeVidaCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="hojasDeVidaListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                                <li><a href="hojasDeVidaCargar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Carga</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <section>
                    <!-- InstanceBeginEditable name="EditRegionSection" -->
                    <ol class="breadcrumb">
                        <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Espa�ol</a><a href="indexIngles.jsp"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">AUXILIAR </a><a href="LogOut">Cerrar Sesi�n</a></div>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="hojasDeVidaListar.jsp">Hojas de Vida</a></li>
                        <li href="hojasDeVidaCrear.jsp" class="active">Crear</li>
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

                    <form id="formularioUsuarios" method="post" action="GestionHojasDeVida">
                        <div id="Usuarios1">

                            <table class="table table-condensed" border=0>

                            <!--<table class="table table-condensed table-striped" border=3> -->

                                <td><label for="Id_Cedula">Documento:</label>
                                <td><input type="text" name="Id_Cedula" id="Id_Cedula"  maxlength="15" required tabindex="2"></td>

                                <td><label for="Nombres">Nombres:</label>
                                <td><input type="text" name="Nombres" id="Nombres"  maxlength="15" required tabindex="2"></td><tr>

                                <td><label for="Apellidos">Apellidos:</label>
                                <td><input name="Apellidos" id="Apellidos" type="text"  required maxlength="15" tabindex="3"></td>

                                <td><label for="Direccion">Direccion:</label>
                                <td><input name="Direccion" id="Direccion" type="text" tabindex="5"></td><tr>

                                <td><label for="Telefono">Telefono:</label>
                                <td><input name="Telefono" id="Telefono" type="text"  required maxlength="10" tabindex="6"></td>

                                <td><label for="Celular">Celular:</label>
                                <td><input name="Celular" id="Celular" type="text"  required tabindex="7"></td><tr>

                                <td><label for="FechaNacimiento">Fecha Nacimiento:</label>
                                <td><input name="FechaNacimiento" id="FechaNacimiento" type="text"  required maxlength="50" tabindex="8"></td>

                                <td><label for="CiudadNacimiento">Ciudad Nacimiento:</label>
                                <td><input name="CiudadNacimiento" id="CiudadNacimiento" type="text"  required maxlength="10" tabindex="8"></td><tr>

                                <td><label for="CiudadResidencia">Ciudad Residencia:</label>
                                <td><input name="CiudadResidencia" id="CiudadResidencia" type="text"  required maxlength="10" tabindex="8"></td>

                                <td><label for="EstadoCivil">Estado Civil:</label>
                                <td><input name="EstadoCivil" id="EstadoCivil" type="text"  required maxlength="10" tabindex="8"></td><tr>

                                <td><label for="NoHijos">Hijos:</label>
                                <td><input name="NoHijos" id="NoHijos" type="text"  required maxlength="1" tabindex="9">

                                <td><label for=""></label>
                                <td><label for=""></label>


                            </table>  
                            <input type="submit" class="btn btn-success" name="Boton" value="Nueva" />
                            <input type="submit" class="btn btn-success" name="Boton" value="Cancelar" />

                        </div>                        
                    </form>


                    <%

                        if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Hoja de vida Registrada Correctamente")</script>

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
