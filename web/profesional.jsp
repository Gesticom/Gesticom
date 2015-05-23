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
        <title>Actualizacion de Usuarios</title>
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
                        <li><a class="btn btn-primary" href="campanaListar.jsp"><i class="fa fa-briefcase fa-fw"></i> Campañas</a>
                            <ul>
                                <li><a href="campanaCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="campanaEditar.jsp"><i class="fa fa-pencil fa-fw"></i> Editar</a></li>
                                <li><a href="campanaBorrar.jsp"><i class="fa fa-trash-o fa-fw"></i> Borrar</a></li>
                                <li><a href="campanaListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
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
                        <li><a href="#">Inicio</a></li> 
                        <li><a href="#">Usuarios</a></li> 
                        <li class="active">Actualización</li>
                        <div id="idioma"><a href="../css/bootstrap.css">Español</a> <a href="IndexIngles.html"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">ADMINISTRADOR </a></div>
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
					<section>
					<!-- InstanceBeginEditable name="EditRegionSection" -->
                	<div id="profesional">
                        <form id="profesional" method="post" action="profesional.html">
                            <h3>Profesional</h3>
                            <table class="table table-bordered table-striped" border=3>
                                <td><label for="Numerosolicitud">Numero de Solicitud:</label>
                                <td><input name="Numerosolicitud" id="Numerosolicitud" type="text" tabindex="1" required maxlength="10"></td><tr>

                                <td><label for="Cargo">Cargo:</label> 
                                <td><input name="Cargo" id="Cargo" type="text" tabindex="2" required maxlength="50"></td><tr>

								<td><label for="Perfil">Perfil:</label>
                                <td><input name="Perfil" id="Perfil" type="text" tabindex="3" required maxlength="50"></td><tr>
                                
                                <td><label for="Experiencia">Experiencia:</label>
                                <td><input name="Experiencia" id="Experiencia" type="text" tabindex="4" required maxlength="100"></td><tr>
							</table>                            
                        </form>
                    </div>

                    <br>
                    <button type="submit" class="btn btn-success">Aceptar</button>
                    <button type="submit" class="btn btn-success">Cancelar</button>
					<!-- InstanceEndEditable -->

					</section>
   
					<div id="pie"><a href="AboutGesticom.html">VersiÃ³n 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | ContÃ¡ctenos: 3133163023</a></div>
                    <div id="iconos">Siguenos tambiÃ©n en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>
 
			</div>
		<main>	
	</body>
<!-- InstanceEnd --></html>
