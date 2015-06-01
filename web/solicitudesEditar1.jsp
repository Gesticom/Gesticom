<%@page import="Modelo.EstadoDTO"%>
<%@page import="Modelo.EstadoDAO"%>
<%@page import="Modelo.CiudadDTO"%>
<%@page import="Modelo.CiudadDAO"%>
<%@page import="Modelo.SolicitudesDTO"%>
<%@page import="Modelo.SolicitudesDAO"%>
<%@page import="Modelo.Campana1DTO"%>
<%@page import="Modelo.Campana1DAO"%>
<%@page import="Modelo.CargosDTO"%>
<%@page import="Modelo.CargosDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.DepartamentoDTO"%>
<%@page import="Modelo.DepartamentoDAO"%>

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
                        <div id="idioma"> <span class="fa fa-flag"><a href="index.jsp">    EspaÒol</a><a href="indexIngles.jsp"> / English</a> </div>
                        <div id="Usuario"><a class="well-sm">PSICOLOGO </a><a href="LogOut">Cerrar SesiÛn</a></div>
                        <li><a href="index.jsp">Inicio</a></li>

                        <li class="active">Login</li> 
                    </ol>




                    <!-- InstanceEndEditable -->

                </section>

                <section>

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
                        int non = (Integer.parseInt(request.getParameter("pos")));
                        SolicitudesDAO soldao = new SolicitudesDAO();
                        SolicitudesDTO soldto = new SolicitudesDTO();
                        soldto = soldao.consultarUnRegistro1(non);
                    %>
                    <form  action="GestionSolicitudes" method="post">
                        <div>
                            <table class="table table-condensed" border=3 style=" margin: -270px auto; width: 80%;">
                                <td><label for="Id_Solicitud">No solicitud:</label></td>
                                <td><input type="text" name="Id_Solicitud" id="Id_Solicitud"  maxlength="15" required tabindex="2" value="<%if(soldto!=null){out.print(soldto.getId_Solicitud());}%>"></td>
                                <td><label for="Vacantes">Vacantes</label>
                                <td><input name="Vacantes" id="Vacantes" type="text"  required tabindex="7"value="<%if(soldto!=null){out.print(soldto.getVacantes());}%>" >
                                <tr><td><label for="Cargo">Cargo:</label> 
                                <td><select name="Id_Cargo"  tabindex="11">
                                        <option>selecione un Cargo</option>
                                        <%
                                            CargosDAO OBJDAOS = new CargosDAO();
                                            ArrayList<CargosDTO> listadoCargo = new ArrayList<CargosDTO>();
                                            listadoCargo = OBJDAOS.ConsultarTodos();
                                            for (int a = 0; a < listadoCargo.size(); a++) {

                                        %>
                                        <option value="<%=listadoCargo.get(a).getId_Cargo()%>"
                                            <% if(listadoCargo.get(a).getId_Cargo()==soldto.getId_Cargo())
                                                 { out.print("selected");}%>>
                                            <%=listadoCargo.get(a).getCargo()%></option>
                                            <%}%>
                                    </select>

                                <td><label for="Fecha">Fecha</label>
                                <td><input name="FechaDeInicio" id="Fecha" type="date"  required maxlength="45" tabindex="3" value="<%if(soldto!=null){out.print(soldto.getFechaDeInicio());}%>"></td>
                                <tr><td><label for="Ciudad">Ciudad:</label> 
                                <td><select name="Id_Ciudad"  tabindex="11">
                                        <option>selecione una Ciudad</option>
                                        <%
                                            CiudadDAO OBJDAOa = new CiudadDAO();
                                            ArrayList<CiudadDTO> listadoCiudad = new ArrayList<CiudadDTO>();
                                            listadoCiudad = OBJDAOa.ConsultarCiudad();
                                            for (int a = 0; a < listadoCiudad.size(); a++) {

                                        %>
                                        <option value="<%=listadoCiudad.get(a).getId_Ciudad()%>"
                                            <% if(listadoCiudad.get(a).getId_Ciudad()==soldto.getId_Ciudad())
                                                 { out.print("selected");}%>>
                                            <%=listadoCiudad.get(a).getCiudad()%></option>
                                            <%}%>
                                    </select>
                                <td><label for="Campana">Campana:</label> 
                                <td><select name="Id_Campana"  tabindex="11">
                                        <option>selecione una Ciudad</option>
                                        <%
                                            Campana1DAO OBJDAOf = new Campana1DAO();
                                            ArrayList<Campana1DTO> listadoCampana = new ArrayList<Campana1DTO>();
                                            listadoCampana = OBJDAOf.ConsultarCampana();
                                            for (int a = 0; a < listadoCampana.size(); a++) {

                                        %>
                                        <option value="<%=listadoCampana.get(a).getId_Campana()%>"
                                            <% if(listadoCampana.get(a).getId_Campana()==soldto.getId_Campana())
                                                 { out.print("selected");}%>>
                                            <%=listadoCampana.get(a).getCampana()%></option>
                                            <%}%> 
                                    
                                    </select></tr>
     
                                    
                   
                                    <td style="height:50px; "><label for="Estado">Estado</label>
                                    <td style=" height:50px;"><select name="Id_Estado" tabindex="11">
                                            <option>selecione un Estado</option>
                                            <%
                                                EstadoDAO OBJDAOs = new EstadoDAO();
                                                ArrayList<EstadoDTO> listadoEstado = new ArrayList<EstadoDTO>();
                                                listadoEstado = OBJDAOs.ConsultarEstado();
                                                for (int a = 0; a < listadoEstado.size(); a++) {
                                            %>
                                            <option value="<%=listadoEstado.get(a).getId_Estado()%>"
                                                <% if(listadoEstado.get(a).getId_Estado()==soldto.getId_Estado())
                                                      { out.print("selected");}%>>
                                                <%=listadoEstado.get(a).getEstado()%></option>
                                                <%}%>
                                        </select>
                                    <td><label for="Departamento">Departamento</label>
                                    <td><select name="Id_Departamento" tabindex="11">
                                            <option>selecione un Departamento</option>
                                            <%
                                                DepartamentoDAO OBJDAO = new DepartamentoDAO();
                                                ArrayList<DepartamentoDTO> listadoDepartamento = new ArrayList<DepartamentoDTO>();
                                                listadoDepartamento = OBJDAO.ConsultarDepartamento();
                                                for (int a = 0; a < listadoDepartamento.size(); a++) {
                                            %>
                                            <option value="<%=listadoDepartamento.get(a).getId_Departamento()%>"
                                                <% if(listadoDepartamento.get(a).getId_Departamento()==soldto.getId_Departamento())
                                                      { out.print("selected");}%>>
                                                <%=listadoDepartamento.get(a).getDepartamento()%></option>
                                                <%}%>
                                        </select>
                                <tr><td><label for="Perfil">Perfil:</label>
                                <td colspan="3"><input name="Perfil" id="Perfil" type="text" tabindex="5" style="height:50px; width:70%; " value="<%if(soldto!=null){out.print(soldto.getPerfil());}%>"></td>
                                </tr>
                                <tr><td colspan="4" style="padding-left: 350px;"><input type="submit" class="btn btn-success" name="Boton" value="Actualizar" />
                                   <input type="submit" class="btn btn-success" name="Boton" value="Cancelar" /></td></tr>   

                            </table>
                                  

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


                <div id="pie"><a href="AboutGesticom.jsp">VersiÛn 1.0 | COPYRIGHT  	&copy;2014 GESTICOM | Cont·ctenos: 3133163023</a></div>
                <div id="iconos">Siguenos tambiÈn en  <IMG SRC="imagenes/iconos.png" height="30" width="116"></div>

            </div>
            <main>	
                </body>
                <!-- InstanceEnd --></html>
