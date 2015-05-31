/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;


import Modelo.HojasDeVidaDAO;
import Modelo.HojasDeVidaDTO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Washington
 */
public class GestionHojasDeVida extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            HojasDeVidaDTO objDto = new HojasDeVidaDTO();
            HojasDeVidaDAO objDao = new HojasDeVidaDAO();

            if (request.getParameter("Boton").equals("Nueva")) {
                objDto.setId_Cedula(Integer.parseInt(request.getParameter("Id_Cedula")));
                objDto.setNombres(request.getParameter("Nombres"));
                objDto.setApellidos(request.getParameter("Apellidos"));
                objDto.setDireccion(request.getParameter("Direccion"));
                objDto.setTelefono(request.getParameter("Telefono"));
                objDto.setCelular(request.getParameter("Celular"));
                objDto.setFechaNacimiento(request.getParameter("FechaNacimiento"));
                objDto.setCiudadNacimiento(Integer.parseInt(request.getParameter("CiudadNacimiento")));
                objDto.setCiudadResidencia(Integer.parseInt(request.getParameter("CiudadResidencia")));
                objDto.setEstadoCivil(request.getParameter("EstadoCivil"));
                objDto.setNoHijos(Integer.parseInt(request.getParameter("NoHijos")));
                String Estado = objDao.IngresarHoja(objDto);
                RequestDispatcher Rd = request.getRequestDispatcher("hojasDeVidaListar.jsp?mensaje=" + Estado);
                Rd.forward(request, response);
                
            }else if (request.getParameter("Boton").equals("BorrarHojaDeVida") ){
                objDto.setId_Cedula(Integer.parseInt(request.getParameter("pos")));


                String Estado = objDao.BorrarHojaDeVida(objDto);
              
                request.setAttribute("mensaje",Estado);
                 RequestDispatcher Rd = request.getRequestDispatcher("hojasDeVidaListar.jsp?mensaje="+Estado);
                Rd.forward(request, response);
                
            }else if (request.getParameter("Boton").equals("Actualizar") ){
                objDto.setId_Cedula(Long.parseLong(request.getParameter("Id_Cedula")));

                objDto.setNombres(request.getParameter("Nombres"));
                objDto.setApellidos(request.getParameter("Apellidos"));
                objDto.setDireccion(request.getParameter("Direccion"));
                objDto.setTelefono(request.getParameter("Telefono"));
                objDto.setCelular(request.getParameter("Celular"));
                objDto.setFechaNacimiento(request.getParameter("FechaNacimiento"));
                objDto.setCiudadNacimiento(Integer.parseInt(request.getParameter("CiudadNacimiento")));
                objDto.setCiudadResidencia(Integer.parseInt(request.getParameter("CiudadResidencia")));
                objDto.setEstadoCivil(request.getParameter("EstadoCivil"));
                objDto.setNoHijos(Integer.parseInt(request.getParameter("NoHijos")));

                String Estado = objDao.ActualizarHojaDeVida(objDto);
                
                request.setAttribute("mensaje",Estado);
                RequestDispatcher Rd = request.getRequestDispatcher("hojasDeVidaListar.jsp");
                Rd.forward(request, response);
                
//                RequestDispatcher Rd = request.getRequestDispatcher("usuariosBorrar.jsp?mensaje=" + Estado);
//                Rd.forward(request, response);
            }
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
