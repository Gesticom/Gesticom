<%@page import="java.util.ArrayList"%>
<%@page import="Modelo.UsuarioDAO"%>
<%@page import="Modelo.UsuarioDTO"%>

<head>
    <link href="media/css/jquery.dataTables.css" rel="stylesheet" type="text/css"/>
    <link href="resources/syntax/shCore.css" rel="stylesheet" type="text/css"/>


    <style type="text/css" class="init">

        tfoot input {
            width: 80%;
            padding: 3px;
            box-sizing: border-box;

        }

    </style>
    <script src="media/js/jquery.js" type="text/javascript"></script>
    <script src="media/js/jquery.dataTables.min.js" type="text/javascript"></script>
    <script src="resources/syntax/shCore.js" type="text/javascript"></script>
    <script src="resources/demo.js" type="text/javascript"></script>
    <script type="text/javascript" language="javascript" class="init"></script>

    <script>
        $(document).ready(function () {
            // Setup - add a text input to each footer cell
            $('#example tfoot th').each(function () {
                var title = $('#example thead th').eq($(this).index()).text();
                $(this).html('<input type="text" placeholder="Search ' + title + '" />');
            });

            // DataTable
            var table = $('#example').DataTable();

            // Apply the search
            table.columns().every(function () {
                var that = this;

                $('input', this.footer()).on('keyup change', function () {
                    that
                            .search(this.value)
                            .draw();
                });
            });
        });


    </script>
</head>

<%

    // Llamado DTO y DAO - Bdatos                              
    UsuarioDTO ObjDtoC = new UsuarioDTO();
    UsuarioDAO ObjDaoC = new UsuarioDAO();
    ArrayList<UsuarioDTO> listado = new ArrayList<UsuarioDTO>();
    listado = ObjDaoC.ConsultarTodos();
    //se inicializan los parametros para paginacion

%>

<table id="example" class="display" cellspacing="0" width="100%">
    <thead>
        <tr>
            <th>Documento</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Direccion</th>
            <th>Ciudad</th>
            <th>Acciones</th>

        </tr>
    </thead>

    <tfoot>
        <tr>
            <th>Documento</th>
            <th>Nombres</th>
            <th>Apellidos</th>
            <th>Direccion</th>
            <th>Ciudad</th>
            <th>Acciones</th> 
        </tr>
    </tfoot>

    <tbody>
        <%  
            for (int a = 0; a < listado.size(); a++) {

                out.print("<tr><td>" + listado.get(a).getId_Usuario() + "</td>");
                out.print("<td>" + listado.get(a).getNombres() + "</td>");
                out.print("<td>" + listado.get(a).getApellidos() + "</td>");
                out.print("<td>" + listado.get(a).getDireccion() + "</td>");
                out.print("<td>" + listado.get(a).getCiudad() + "</td>");

        %>

        <td>  <a href='GestionUsuarios?Boton=BorrarUsu&pos=<%=listado.get(a).getId_Usuario()%>'   >  <img src="imagenes/eliminar.png" width="24" height="24" alt="actaul" title='Usted quiere eliminar a : <%=listado.get(a).getNombres()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getNombres()%>')"    />
        </a>          
        <a href='usuariosEditar.jsp?Boton=EditarUsu&pos=<%=listado.get(a).getId_Usuario()%>'>  <img src="imagenes/actualizar.png" width="24" height="24" alt="actaul" title='Usted quiere actualizar a :  <%=listado.get(a).getNombres()%> ' onclick="return  PreguntaValida('<%=listado.get(a).getNombres()%>')"/>
        </a>
        </td>
</tr>


<%
    }
%>

</tbody>
</table>














































