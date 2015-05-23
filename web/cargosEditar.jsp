<%@page import="Modelo.CargosDTO"%>
<%@page import="Modelo.CargosDAO"%>
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
                                <li><a href="usuariosEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="usuariosBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="usuariosListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="ciudadesListar.jsp"><i class="fa fa-globe fa-fw"></i> Ciudades</a>
                            <ul>
                                <li><a href="ciudadesCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="ciudadesEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="ciudadesBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="ciudadesListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="campanasListar.jsp"><i class="fa fa-briefcase fa-fw"></i> Campañas</a>
                            <ul>
                                <li><a href="campanasCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="campanasEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="campanasBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="campanasListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="cargosListar.jsp"><i class="fa fa-briefcase fa-fw"></i> Campañas</a>
                            <ul>
                                <li><a href="cargosCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="cargosEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="cargosBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="cargosListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="solicitudempleados.jsp"><i class="fa fa-users fa-fw"></i> Solicitudes</a>
                        <li><a class="btn btn-primary" href="profesional.jsp"><i class="fa fa-user fa-fw"></i> Profesional</a>
                        <li><a class="btn btn-primary" href="competencias.jsp"><i class="fa fa-user fa-fw"></i> Competencias</a>
                    </ul>
                </div>
                <section>
                    <!-- InstanceBeginEditable name="EditRegionSection" -->
                    <ol class="breadcrumb">
                        <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Español</a><a href="indexIngles.jsp"> / English</a> </div>
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
                    <%
                        int Posi = Integer.parseInt(request.getParameter("pos"));
                        CargosDAO cargosdao = new CargosDAO();
                        CargosDTO cargosdto = new CargosDTO();
                        cargosdto = cargosdao.consultarUnRegistro1(Posi);
                    %>

                    <form name="formularioActualizacionCargos" action="GestionCargos" method="POST">
                        <div id="Usuarios1">

                            <table class="table table-condensed" border=3>

                                <!--                                <table class="table table-condensed table-striped" border=3> -->

                                <td><label for="Id_Cargo">Id:</label>
                                <td><input type="text" name="Id_Cargo" id="Id_Cargo" value="<%if(cargosdto!=null){out.print(cargosdto.getId_Cargo());}%>"> </td><tr>

                                    <td><label for="Cargo">Cargo:</label>
                                    <td><input name="Cargo" id="Cargo" type="text"  value="<%if(cargosdto!=null){out.print(cargosdto.getCargo());}%>">



                            </table>  
                            <input type="submit" class="btn btn-success" name="Boton" value="Actualizar" />
                            <input type="submit" class="btn btn-success" name="Boton" value="Cancelar" />

                        </div>                        
                    </form>


                    <%

                        if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Cargo Actualizado Correctamente")</script>

                    <%         }
                    %>                  

                    <script>
                        $().ready(function () {
                            $("#formularioActualizacionCargos").validate({
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
