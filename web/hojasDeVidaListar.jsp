
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.HojasDeVidaDAO"%>
<%@page import="Modelo.HojasDeVidaDTO"%>
<html><!-- InstanceBegin template="../Templates/Gesticom.dwt" codeOutsideHTMLIsLocked="false" -->
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1" >


        <link rel="stylesheet" type="text/css" href="css/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="css/font-awesome.css">
        <link rel="stylesheet" type="text/css" href="css/estilos.css">
        <link rel="icon" type="image/x-icon" href="imagenes/favicon.ico">

        <link href="media/css/jquery.dataTables.css" rel="stylesheet" type="text/css"/>
        <link href="resources/syntax/shCore.css" rel="stylesheet" type="text/css"/>

        <!-- InstanceBeginEditable name="doctitle" -->
        <title>Bienvenido AUXILIAR</title>
        <!-- InstanceEndEditable -->

        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/jquery.validate.js"></script>
        <script type="text/javascript" src="js/additional-methods.js"></script>
        <!-- InstanceBeginEditable name="head" -->
        <!-- InstanceEndEditable -->
        <script>
            function PreguntaValida(nombre)
            {
             if(confirm("Realmente desea Eliminar a : " + nombre  )== true){
               return true;
             }else{
               return false; 
             }
            }   
        </script>
 
    </head>
    <body>
        <main>
            <div id="logo"><h1> <IMG SRC="imagenes/gesticom.png" height="80" width="100"></h1></div>
            <div id="baner"><h1> <IMG SRC="imagenes/baner.png" height="100" width="800"></h1></div>
            <div id="contenido">	
                <div id="header">
                    <ul class="nav">
                        <!--  <a class="btn btn-primary" href="#"><i class="fa fa-user fa-fw"></i> User</a> -->
                        <li><a class="btn btn-primary" href="hojasDeVidaListar.jsp"><i class="fa fa-user fa-fw"></i> Solicitudes</a>
                            <ul>
                                <li><a href="hojasDeVidaCrear.jsp"><i class="fa fa-file-o fa-fw"></i> Crear</a></li>
                                <li><a href="hojasDeVidaListar.jsp"><i class="fa fa-file-text-o fa-fw"></i> Listar</a></li>
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
                        <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    Español</a><a href="indexIngles.jsp"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">AUXILIAR </a><a href="LogOut">Cerrar Sesión</a></div>
                        <li><a href="index.jsp">Inicio</a></li>
                        <li><a href="inicioAuxiliar.jsp">Hojas de Vida</a></li>
                        <li href="HojasDeVidaListar.jsp" class="active">Listar</li>
                    </ol>

                   
                   <section class="">  
                      <div class="container"> 
                            <%

                            // Llamado DTO y DAO - Bdatos                              
                                HojasDeVidaDTO ObjDtoC = new HojasDeVidaDTO();
                                HojasDeVidaDAO ObjDaoC = new HojasDeVidaDAO();
                                ArrayList<HojasDeVidaDTO> listado = new ArrayList<HojasDeVidaDTO>();
                                listado = ObjDaoC.ConsultarTodos();
                                //se inicializan los parametros para paginacion
                                int registrosporpagina = 4;
                                int registrostotales = listado.size();
                                int paginastotales = (registrostotales / registrosporpagina);
                                int paginaactual = 0;
                                int cantidad = 0;
                                if (request.getParameter("pagina") != null) {
                                    paginaactual = Integer.parseInt(request.getParameter("pagina")) * registrosporpagina;
                                     cantidad = paginaactual+registrosporpagina;
                                } else {
                                    paginaactual = 0;
                                    cantidad = registrosporpagina;
                                }
                                

                                if (listado.size() !=0) {
                            %>
                            <div class="table-responsive">
                            <table class="table table-condensed">
                                <thead>

                                <tr><td>Documento</td>
                                    <td> Nombres</td>
                                   <td> Apellidos</td>
                                   <td> Direccion</td>
                                   <td> Celular</td>
                                  <td>  Fecha Nacimiento</td>
                                  <td>  Ciudad Nacimiento</td>
                                  <td>  Estado Civil</td>
                                   <td> Borrar</td>
                                  <td>  Actualizar</td> 
                                </tr>
                                </thead>
                                <tbody>
                                    <%
                                    out.println(paginaactual+">"+cantidad);
                                        for (int a = (paginaactual); a <= (cantidad); a++) {
                                            if (a == listado.size()) {
                                                break;
                                            }

                                            out.print("<tr><td>" + listado.get(a).getId_Cedula() + "</td>");
                                            out.print("<td>" + listado.get(a).getNombres() + "</td>");
                                            out.print("<td>" + listado.get(a).getApellidos() + "</td>");
                                            out.print("<td>" + listado.get(a).getDireccion() + "</td>");
                                            out.print("<td>" + listado.get(a).getCelular() + "</td>");
                                            out.print("<td>" + listado.get(a).getFechaNacimiento() + "</td>");
                                            out.print("<td>" + listado.get(a).getCiudadNacimiento()+ "</td>");
                                            out.print("<td>" + listado.get(a).getEstadoCivil()+ "</td>");
                                            
                                    %>

                                <td>  <a href='GestionHojasDeVida?Boton=BorrarHojaDeVida&pos=<%=listado.get(a).getId_Cedula()%>'   >  <img src="imagenes/eliminar.png" width="36" height="36" alt="actaul" title='Usted quiere eliminar a : <%=listado.get(a).getNombres()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getNombres()%>')"    />
                                    </a>           </td>

                                <td>  <a href='hojasDeVidaEditar.jsp?Boton=EditarHojas&pos=<%=listado.get(a).getId_Cedula()%>'>  <img src="imagenes/actualizar.png" width="36" height="36" alt="actaul" title='Usted quiere actualizar a :  <%=listado.get(a).getNombres()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getNombres()%>')"/>
                                    </a>           </td>
                                </tr>


                                <%
                                    }
                                %>

                                </tbody>
                            </table>
                                </div>
                            <%
                                for (int a = 0; a <= paginastotales-1; a++) {
                            
                                %>
                                    <ul class="pagination pagination-sm">
                                    <li><a href="hojasDeVidaListar.jsp?pagina=<%= a%>"><%="Pág-" + (a+1)%></a>
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
                    <script type="text/javascript"> alert("Usuario Borrado exitosamente")</script>

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
