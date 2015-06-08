<%-- 
    Document   : result.jsp
    Created on : 22/05/2015, 03:10:14 PM
    Author     : Josarta
--%>


<%@page import="Modelo.CiudadesDTO"%>
<%@page import="Modelo.CiudadesDAO"%>
<%@page import="jxl.Cell"%>
<%@page import="jxl.Sheet"%>
<%@page import="jxl.Workbook"%>
<%@page import="java.io.File"%>
<html>
<head>
<title>Carga archivos Hojas de vida - GESTICOM -</title></head>
<body>
        <h4>${requestScope["libro"]}</h4>
        
    <%
        String Libro =  (String) request.getAttribute("libro");
        Workbook archivoExcel = Workbook.getWorkbook(new File(Libro)); 
        System.out.println("Número de Hojas\t" + archivoExcel.getNumberOfSheets()); 
        Sheet hoja1 = archivoExcel.getSheet(0);

                 //Para obtener la hoja de la primera posición del libro
                //??????????????????????????
                //Se crea la celda que se va a leer de la hoja posición (0, 0)

        %>
        
        <table border="1">
            <thead>
                <tr>
                <%
        
                CiudadesDAO ciudadesdao = new CiudadesDAO();
                CiudadesDTO ciudadesdto = new CiudadesDTO();

                for(int a1 = 0; a1<hoja1.getColumns() ;a1++){
                Cell actual = hoja1.getCell(a1,0);
                out.print("<th>"+actual.getContents()+"</th>");    
                }
                %>
                <th>Estado.</th>    
                </tr>
            </thead>
            <tbody>
               <%
                String[] celdas = new String[hoja1.getColumns()];
                
                for(int a1 = 1; a1 < hoja1.getRows() ;a1++){
                out.print("<tr>");
                            for(int a2 = 0; a2<hoja1.getColumns() ;a2++){
                              Cell actual = hoja1.getCell(a2,a1);
                              celdas[a2]= "" + actual.getContents() ;
                              out.print("<td>"+actual.getContents()+"</td>");  
                            }
                 ciudadesdto.setId_Ciudad(Integer.parseInt(celdas[0]));
                 ciudadesdto.setCiudad(celdas[1]);
                 String Salida = ciudadesdao.IngresarCiudad(ciudadesdto);
                 
                 if(Salida.equals("Usuario Registrado")){
                 %>
                 
            <td> <img src="Imagenes/checkround.png" width="16" height="16" alt="checkround" title='<%= Salida %>' /> </td>
         
                 <%
                 }else{
                  %>
                 
                <td> <img src="Imagenes/cross-24.png" width="16" height="16" alt="checkround" title='<%= Salida %>'  /> </td>
         
                 <%
                 }
               
                            
                out.print("</tr>");
                }
                %>
                
               
              
                
            </tbody>
        </table>

       
</body>
</html>