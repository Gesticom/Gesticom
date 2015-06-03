
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
        <title>Bienvenido PSICOLOGO</title>
        <!-- InstanceEndEditable -->
        
        <script>
            function PreguntaValidaDetallado(Campana)
            {
             if(confirm("Realmente desea Detallar a : " + Campana  )== true){
               return true;
             }else{
               return false; 
             }
            }
             function PreguntaValidaActualizar(Campana)
            {
             if(confirm("Realmente desea Actulizar a : " + Campana  )== true){
               return true;
             }else{
               return false; 
             }
            }
            
        </script>

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
                        <thead>
                            <tr><td>Empresa</td>
                                <td>Cargo</td>
                                <td>Fecha Publicacion</td>
                                <td>Ciudad</td>
                                <td>Departamento</td>
                                <td>Estado</td>
                                <td>Opciones</td>
                        </thead>        
                        <tbody>
                            <tr>
                            <%
                                        SolicitudesDTO ObjDtoC = new SolicitudesDTO();
                                        SolicitudesDAO ObjDaoC = new SolicitudesDAO();
                                        ArrayList<SolicitudesDTO> listado = new ArrayList<SolicitudesDTO>();
                                        listado = ObjDaoC.ConsultarTodos();

                                        for (int a = 0; a < listado.size(); a++) {
                                            out.print("<td>" + listado.get(a).getCampana()+ "</td>");
                                            out.print("<td>" + listado.get(a).getCargo()+ "</td>");
                                            out.print("<td>"+ listado.get(a).getFechaDeInicio()+ "</td>");
                                            out.print("<td>"+ listado.get(a).getCiudad()+"</td>");
                                            out.print("<td>"+ listado.get(a).getDepartamento()+ "</td>");
                                            out.print("<td>"+ listado.get(a).getEstado()+"</td>");
                                                                                    
                                    %>
                               

                        <td><a href='solicitudesDetallar.jsp?Boton=DetallarSol&pos=<%=listado.get(a).getId_Solicitud()%>'  >  <center><img src="imagenes/Detallar.png" width="24" height="24" alt="actaul" title='Usted quiere ver detalladamente  a : <%=listado.get(a).getCampana()%> ' onclick="return  PreguntaValidaDetallado('<%=listado.get(a).getCampana()%>')"/>
                            </a>
                             <a href='solicitudesEditar1.jsp?Boton=EditarSol&pos=<%=listado.get(a).getId_Solicitud()%>'>  <img src="imagenes/actualizar.png" width="24" height="24" alt="actaul" title='Usted quiere actualizar a :  <%=listado.get(a).getCampana()%> ' onclick="return  PreguntaValidaActualizar('<%=listado.get(a).getCampana()%>')"/></center>
                                        </a>
                        </td>
                        </tr>
                                <%
                                    }
                                %>
                                <%

                    if (request.getParameter("mensaje") != null) {


                    %>
                    <script type="text/javascript"> alert("Solicitud Actualizado exitosamente")</script>

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
