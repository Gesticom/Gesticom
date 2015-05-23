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
        <title>Interfaz de Usuario</title>
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
                        <li><a class="btn btn-primary" href="usuariosListar.jsp"><i class="fa fa-user fa-fw"></i> Usuarios</a>
                            <ul>
                                <li><a href="usuariosCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="usuariosEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="usuariosBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="ciudadesListar.jsp"><i class="fa fa-globe fa-fw"></i> Ciudades</a>
                            <ul>
                                <li><a href="ciudadesCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="ciudadesEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="ciudadesBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="campanaListar.jsp"><i class="fa fa-briefcase fa-fw"></i> CampaÒas</a>
                            <ul>
                                <li><a href="campanaCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="campanaEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="campanaBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                            </ul>
                        </li>
                        <li><a href="solicitudempleados.html">Solicitud</a></li>
                        <li><a href="profesional.html">Profesional</a></li>
                        <li><a href="competencias.html">Competencias</a></li>
                    </ul>
                </div>
                <section>
                    <!-- InstanceBeginEditable name="EditRegionSection" -->
                    <ol class="breadcrumb">
                        <li><a href="#">Inicio</a></li> 
                        <li><a href="#">Usuarios</a></li> 
                        <li class="active">Borrar</li>
                        <div id="idioma"><a href="../css/bootstrap.css">EspaÒol</a> <a href="IndexIngles.html"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">ADMINISTRADOR </a></div>
                    </ol>
                    
                    
                    

                    
                    
                    <%

                    if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Usuario Borrado")</script>

                    <%         }
                    %>     
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
                                        minlength: 5
                                    },
                                    Apellidos: {
                                        required: true,
                                        minlength: 5
                                    }
                               },
                                // Mensajes a generar para indicar al usuario la estructura valida que debe ingresar. Se debe indicar por cada regla adicionada anteriormente para sobre escribir los mensajes por defecto (los cuales est√°n en ingl√©s. Se encuentran en "jquery.validate.js" l√≠nea 308)
                                messages: {
                                    Iddocumento: {
                                        required: "Campo requerido",
                                        minlength: "MÌnimo {0} caracteres",
                                        maxlength: "Maximo {0} caracteres"
                                    },
                                    Nombres: {
                                        required: "Campo requerido",
                                        minlength: "MÌnimo {0} caracteres",
                                    }
                                } // Cierre de los mensajes
                            }); // Cierre de la funci√≥n validate
                        }); // Cierre de la funci√≥n ready
                    </script>


                    <!-- InstanceEndEditable -->

                </section>

                <div id="pie"><a href="AboutGesticom.html">VersiÛn 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Cont·ctenos: 3133163023</a></div>
                <div id="iconos">Siguenos tambiÈn en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>

            </div>
            <main>	
                </body>
                <!-- InstanceEnd --></html>
