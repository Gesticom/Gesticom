<%@page import="Modelo.SolicitudesDAO"%>
<%@page import="Modelo.SolicitudesDTO"%>
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
        <title>Bienvenido PSICOLOGO</title>
        <!-- InstanceEndEditable -->

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>
        <!-- InstanceBeginEditable name="head" -->
        <!-- InstanceEndEditable -->
    </head>
    <body>
        <main>
            <div id="logo"><h1> <IMG SRC="imagenes/gesticom.png" height="80" width="100"></h1></div>
            <div id="baner"><h1> <IMG SRC="imagenes/baner.png" height="100" width="800"></h1></div>
            <div id="contenido">	
                <div id="header">
                    <ul class="nav">
                        <!--  <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw"></i> User</a> -->
                        <li><a class="btn btn-primary" href="solicitudesListar1.jsp"><i class="fa fa-user fa-fw"></i> Solicitudes</a>
                            <ul>
                                <li><a href="solicitudesListar1.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
                            </ul>
                        </li>
                        <li><a class="btn btn-primary" href="hojaDeVidaListar.jsp"><i class="fa fa-globe fa-fw"></i> Hojas de Vida</a>
                            <ul>                            
                                <li><a href=""><i class="fa fa-file-text-o fa-fw"></i>Listar</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
                <section>
                    <!-- InstanceBeginEditable name="EditRegionSection" -->
                    <ol class="breadcrumb">
                        <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Español</a><a href="indexIngles.jsp"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">PSICOLOGO </a><a href="LogOut">Cerrar Sesión</a></div>
                        <li><a href="index.jsp">Inicio</a></li>

                        <li class="active">Login</li> 
                    </ol>




                    <!-- InstanceEndEditable -->

                </section>
                <section>
                    <table class="table table-condensed" border=3 style=" margin:-270px auto;width:80%;">
                                
                        <tbody>
                            <%
                                        SolicitudesDTO ObjDtoC = new SolicitudesDTO();
                                        SolicitudesDAO ObjDaoC = new SolicitudesDAO();
                                        ObjDtoC= ObjDaoC.ConsultarTodosuno(Integer.parseInt(request.getParameter("pos")));
                                        
                                        

                                        
                                            out.print("<tr><td>No Solicitud</td><td>" + ObjDtoC.getId_Solicitud()+ "</td></tr>");
                                            out.print("<tr><td>Vacantes</td><td>" + ObjDtoC.getVacantes()+ "</td></tr>");
                                            out.print("<tr><td>Cargo</td><td>" + ObjDtoC.getCargo()+ "</td></tr>");
                                            out.print("<tr><td>Fecha</td><td>"+ ObjDtoC.getFechaDeInicio()+ "</td></tr>");
                                            out.print("<tr><td>Ciudad</td><td>"+ ObjDtoC.getCiudad()+"</td></tr>");
                                            out.print("<tr><td>Perfil</td><td>"+ ObjDtoC.getPerfil()+"</td></tr>");
                                            out.print("<tr><td>Estado</td><td>"+ ObjDtoC.getEstado()+"</td></tr>");
                                            out.print("<tr><td>Departamento</td><td>"+ ObjDtoC.getDepartamento()+ "</td></tr>");
                                            out.print("<tr><td>Campana</td><td>" + ObjDtoC.getCampana()+ "</td></tr>");                                        
                                    %>
                                    
                       
                                <%
                                    
                                %>
                                <%

                    if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Usuario Borrado exitosamente")</script>

                    <%         }
                    %> 
                        </tbody>


                    </table> 
                </section>
                <div id="pie"><a href="AboutGesticom.jsp">Versión 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Contáctenos: 3133163023</a></div>
                <div id="iconos">Siguenos también en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>

            </div>
            <main>	
                </body>
                <!-- InstanceEnd --></html>
