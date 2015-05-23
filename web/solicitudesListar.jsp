<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.SolicitudesDAO"%>
<%@page import="Modelo.SolicitudesDTO"%>
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
                                <li><a href="solicitudesCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
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
                        <div id="Usuario"><a class="well-sm">ADMINISTRADOR </a></div>
                        <li class="active">Login</li> 
                    </ol>

                   
                   <section class="">  
                      <div class="container"> 
                            <%

                                SolicitudesDTO ObjDtoC = new SolicitudesDTO();
                                SolicitudesDAO ObjDaoC = new SolicitudesDAO();
                                ArrayList<SolicitudesDTO> listado = new ArrayList<SolicitudesDTO>();
                                listado = ObjDaoC.ConsultarTodos();
                                int registrosporpagina = 4;
                                int registrostotales = listado.size();
                                int paginastotales = (registrostotales / registrosporpagina);
                                int paginaactual = 0;
                                int cantidad = 0;
                                if (request.getParameter("pagina") != null) {
                                    paginaactual = Integer.parseInt(request.getParameter("pagina")) * registrosporpagina;
                                } else {
                                    paginaactual = 0;
                                    cantidad = registrosporpagina;
                                }
                                

                                if (listado.size() !=0) {
                            %>
                            <table class="table table-condensed">
                                <thead>

                                <tr><td>Numero</td>
                                    <td> Fecha</td>
                                   <td> Cargo</td>
                                   <td> Perfil</td>
                                   <td> Experiencia</td>
                                   <td> Conocimiento</td>
                                  <td>  Estudio</td>
                                  <td>  Departamento</td>
                                  <td>  Coordinador</td>
                                   <td> Borrar</td>
                                  <td>  Actualizar</td> 
                                </tr>
                                </thead>
                                <tbody>
                                    <%
                                        for (int a = (paginaactual); a <= (cantidad); a++) {

                                            out.print("<tr><td>" + listado.get(a).getId_Solicitud() + "</td>");
                                            out.print("<td>" + listado.get(a).getFecha() + "</td>");
                                            out.print("<td>" + listado.get(a).getCargo() + "</td>");
                                            out.print("<td>" + listado.get(a).getPerfil() + "</td>");
                                            out.print("<td>" + listado.get(a).getExperiencia() + "</td>");
                                            out.print("<td>" + listado.get(a).getConocimiento() + "</td>");
                                            out.print("<td>" + listado.get(a).getEstudio() + "</td>");
                                            out.print("<td>" + listado.get(a).getDepartamento() + "</td>");
                                            out.print("<td>" + listado.get(a).getCoordinadorSolicitante() + "</td>");
                                            if (a == listado.size() - 1) {
                                                break;
                                            }
                                    %>

                                <td>  <a href='GestionSolicitudes?Boton=BorrarSol&pos=<%=listado.get(a).getId_Solicitud()%>'   >  <img src="imagenes/eliminar.png" width="36" height="36" alt="actaul" title='Usted quiere eliminar a : <%=listado.get(a).getId_Solicitud()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getId_Solicitud()%>')"    />
                                    </a>           </td>

                                <td>  <a href='solicitudesEditar.jsp?Boton=EditarSol&pos=<%=listado.get(a).getId_Solicitud()%>'>  <img src="imagenes/actualizar.png" width="36" height="36" alt="actaul" title='Usted quiere actualizar a :  <%=listado.get(a).getId_Solicitud()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getId_Solicitud()%>')"/>
                                    </a>           </td>
                                </tr>


                                <%
                                    }
                                %>

                                </tbody>
                            </table>
                            <%
                                for (int a = 1; a <= paginastotales; a++) {
                            
                                %>
                                    <ul class="pagination pagination-sm">
                                    <li><a href="solicitudesListar.jsp?pagina=<%= a%>"><%="Pág-" + a%></a>
                                    </ul>
                                <%
                                }
                                %>
                            <%
                                }else {
                                    out.println("No Existen Registros");
                                }
                            %>


                        </div> 
                      </section> 



                  <!-- InstanceEndEditable -->
                  
                 
                      <%

                    if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Solicitud Borrado exitosamente")</script>

                    <%         }
                    %>     

                </section>

                <div id="pie"><a href="AboutGesticom.jsp">Versión 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Contáctenos: 3133163023</a></div>
                <div id="iconos">Siguenos también en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>

            </div>

        </main>
    </body>
</html>
<!-- InstanceEnd -->
