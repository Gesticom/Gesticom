/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.UsuarioDAO;
import Modelo.UsuarioDTO;
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
public class GestionUsuarios extends HttpServlet {

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
            UsuarioDTO objDto = new UsuarioDTO();
            UsuarioDAO objDao = new UsuarioDAO();

            if (request.getParameter("Boton").equals("Usuario Nuevo")) {
                objDto.setId_Usuario(Long.parseLong(request.getParameter("Id_Usuario")));
                objDto.setUsuario(request.getParameter("Usuario"));
                objDto.setTipoDocumento(Integer.parseInt(request.getParameter("TipoDocumento")));
                objDto.setNombres(request.getParameter("Nombres"));
                objDto.setApellidos(request.getParameter("Apellidos"));
                objDto.setFechaDeNacimiento(request.getParameter("FechaDeNacimiento"));
                objDto.setLugarDeNacimiento(request.getParameter("LugarDeNacimiento"));
                objDto.setDireccion(request.getParameter("Direccion"));
                objDto.setTelefonoFijo(request.getParameter("TelefonoFijo"));
                objDto.setCelular(request.getParameter("Celular"));
                objDto.setCiudad(Integer.parseInt(request.getParameter("Ciudad")));
                objDto.setCargo(Integer.parseInt(request.getParameter("Cargo")));
                objDto.setRole(Integer.parseInt(request.getParameter("Role")));
                objDto.setContrasena(request.getParameter("clave"));
                String Estado = objDao.IngresarUsuario(objDto);
                RequestDispatcher Rd = request.getRequestDispatcher("usuariosCrear.jsp?mensaje=" + Estado);
                Rd.forward(request, response);
                
            }else if (request.getParameter("Boton").equals("BorrarUsu") ){
                objDto.setId_Usuario(Long.parseLong(request.getParameter("pos")));

                String Estado = objDao.BorrarUsuario(objDto);
              
                request.setAttribute("mensaje",Estado);
                 RequestDispatcher Rd = request.getRequestDispatcher("usuariosListar.jsp?mensaje="+Estado);
                Rd.forward(request, response);
                
            }else if (request.getParameter("Boton").equals("Actualizar") ){
                objDto.setId_Usuario(Long.parseLong(request.getParameter("Id_Usuario")));
                objDto.setTipoDocumento(Integer.parseInt(request.getParameter("TipoDocumento")));
                objDto.setNombres(request.getParameter("Nombres"));
                objDto.setApellidos(request.getParameter("Apellidos"));
                objDto.setFechaDeNacimiento(request.getParameter("FechaDeNacimiento"));
                objDto.setLugarDeNacimiento(request.getParameter("LugarDeNacimiento"));
                objDto.setDireccion(request.getParameter("Direccion"));
                objDto.setTelefonoFijo(request.getParameter("TelefonoFijo"));
                objDto.setCelular(request.getParameter("Celular"));
                objDto.setCiudad(Integer.parseInt(request.getParameter("Ciudad")));
                objDto.setCargo(Integer.parseInt(request.getParameter("Cargo")));
                objDto.setRole(Integer.parseInt(request.getParameter("Role")));
                objDto.setContrasena(request.getParameter("Contrasena"));

                String Estado = objDao.ActualizarUsuario(objDto);
                
                request.setAttribute("mensaje",Estado);
                RequestDispatcher Rd = request.getRequestDispatcher("usuariosListar.jsp");
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
