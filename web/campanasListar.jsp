<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.CampanaDAO"%>
<%@page import="Modelo.CampanaDTO"%>
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

                   
                   <section class="">  
                      <div class="container"> 
                            <table class="table table-condensed">
                                <thead>

                                <tr><td>Id</td>
                                    <td> Campaña</td>
                                   <td> Borrar</td>
                                  <td>  Actualizar</td> 
                                </tr>
                                </thead>
                                <tbody>
                                    <%

                                        CampanaDTO ObjDtoC = new CampanaDTO();
                                        CampanaDAO ObjDaoC = new CampanaDAO();
                                        ArrayList<CampanaDTO> listado = new ArrayList<CampanaDTO>();
                                        listado = ObjDaoC.ConsultarTodos();

                                        for (int a = 0; a < listado.size(); a++) {

                                            out.print("<tr><td>" + listado.get(a).getId_Campana() + "</td>");
                                            out.print("<td>" + listado.get(a).getCampana() + "</td>");
                                    %>

                                <td>  <a href='GestionCampanas?Boton=BorrarCam&pos=<%=listado.get(a).getId_Campana()%>'   >  <img src="imagenes/eliminar.png" width="36" height="36" alt="actaul" title='Usted quiere eliminar a : <%=listado.get(a).getCampana()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getCampana()%>')"    />
                                </a>           </td>

                                <td>  <a href='campanasEditar.jsp?Boton=EditarCam&pos=<%=listado.get(a).getId_Campana()%>'>  <img src="imagenes/actualizar.png" width="36" height="36" alt="actaul" title='Usted quiere actualizar a :  <%=listado.get(a).getCampana()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getCampana()%>')"/>
                                    </a>           </td>
                                </tr>


                                <%
                                    }
                                %>

                                </tbody>
                            </table>


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
