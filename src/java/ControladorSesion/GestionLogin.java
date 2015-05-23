/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ControladorSesion;

import Modelo.UsuarioDAO;
import Modelo.UsuarioDTO;
import ModeloSesion.SesionDAO;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Washington
 */
public class GestionLogin extends HttpServlet {

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
            
            UsuarioDAO ObjDao = new UsuarioDAO();
            UsuarioDTO ObjDto = new UsuarioDTO();
            SesionDAO Sesion = new SesionDAO();
            HttpSession miSession = request.getSession();
            
          boolean existeUsuario = false;
          
          String Usuario = request.getParameter("txtusuario");
          String Contrasena = request.getParameter("txtclave");
          
          ObjDto.setUsuario(Usuario);
          ObjDto.setContrasena(Contrasena);
          ObjDto = Sesion.Login(ObjDto);
          
          if(ObjDto.getUsuario().equals("No en contrado")){
             request.setAttribute("error","<script> alert('Usuario y/o contraseña no validos'); </script>");
            request.getRequestDispatcher("index.jsp").forward(request, response);
          
          }else{
          
              miSession.setAttribute("usuario", ObjDto);
              
              if (ObjDto.getRole()==1){
                  request.getRequestDispatcher("inicioAdmin.jsp").forward(request, response);
              } else if (ObjDto.getRole()==2){
                  request.getRequestDispatcher("inicioCoordinador.jsp").forward(request, response);
              }else if (ObjDto.getRole()==3){
                  request.getRequestDispatcher("inicioPsicologo.jsp").forward(request, response);
              }else if (ObjDto.getRole()==4){
                  request.getRequestDispatcher("inicioAuxiliar.jsp").forward(request, response);
              }else if (ObjDto.getRole()==5){
                  request.getRequestDispatcher("index.jsp").forward(request, response);
              }
          
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
