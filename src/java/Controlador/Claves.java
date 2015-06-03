/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.Mailer;
import Modelo.UsuarioDAO;
import Modelo.UsuarioDTO;
import ModeloSesion.SesionDAO;
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
public class Claves extends HttpServlet {

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

            String Usuario = request.getParameter("txtusuario");
            UsuarioDAO ObjDao = new UsuarioDAO();
            UsuarioDTO ObjDto = new UsuarioDTO();
            ObjDto = ObjDao.ConsultarUnUsuario(Usuario);

              if(!ObjDto.getNombres().equals("noExiste")){
            
            String correo = ObjDto.getEmail();
            Long cedula = ObjDto.getId_Usuario();
            String clave1 = ""+((int) (Math.random()*100000));
            ObjDto.setContrasena(clave1);
            ObjDao.ActualizarUsuario(ObjDto);
            String para = ObjDto.getEmail();
            String sujeto = "Recordar Clave";
            String mensaje = "En su solicitud, su contraseña se ha restablecido a : "+clave1;
            Mailer.send(para, sujeto, mensaje);   
            RequestDispatcher Rd = request.getRequestDispatcher("index.jsp");
            Rd.forward(request, response);  
            
            }
            else{
            request.setAttribute("mensaje", "Usuario No encontrado");
            RequestDispatcher Rd = request.getRequestDispatcher("index.jsp");
            Rd.forward(request, response);  
            
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
