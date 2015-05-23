/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Washington
 */
public class SolicitudesDAO {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public ArrayList<SolicitudesDTO> ConsultarTodos() {

        ArrayList<SolicitudesDTO> listado = new ArrayList<SolicitudesDTO>();

        try {
            stmt = con.prepareStatement("SELECT * FROM tb_solicitudes ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                SolicitudesDTO unsolicitudesnew = new SolicitudesDTO();
                unsolicitudesnew.setId_Solicitud(rs.getInt("Id_Solicitud"));
                unsolicitudesnew.setFecha(rs.getString("Fecha"));
                unsolicitudesnew.setCargo(rs.getInt("Cargo"));
                unsolicitudesnew.setPerfil(rs.getString("Perfil"));
                unsolicitudesnew.setExperiencia(rs.getString("Experiencia"));
                unsolicitudesnew.setEstudio(rs.getString("Estudio"));
                unsolicitudesnew.setDepartamento(rs.getInt("Departamento"));
                unsolicitudesnew.setCoordinadorSolicitante(rs.getInt("CoordinadorSolicitante"));
                listado.add(unsolicitudesnew);

            }

        } catch (SQLException sqle) {

        }
        return listado;
    }
    
           
    
    public String IngresarSolicitud(SolicitudesDTO InsertarSolicitud) {
        //boolean resul = false;
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO tb_solicitudes VALUES(?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1,InsertarSolicitud.getId_Solicitud());
            stmt.setString(2,InsertarSolicitud.getFecha());
            stmt.setInt(3,InsertarSolicitud.getCargo());
            stmt.setString(4,InsertarSolicitud.getPerfil());
            stmt.setString(5,InsertarSolicitud.getExperiencia());
            stmt.setString(6,InsertarSolicitud.getConocimiento());
            stmt.setString(7,InsertarSolicitud.getEstudio());
            stmt.setInt(8,InsertarSolicitud.getDepartamento());
            stmt.setInt(9,InsertarSolicitud.getCoordinadorSolicitante());

            int resultado = stmt.executeUpdate();
            if (resultado == 0) {
                //resul=false;
                rta = "Fallo el ingreso del registro";
            } else {
                rta = "Registro ingresado exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;
    }

        public String ActualizarSolicitud(SolicitudesDTO ActualizarSolicitud) {
        //boolean resul = false;
        String rta = "";
        int resultado = 0;
        try {

            stmt = con.prepareStatement("UPDATE tb_solicitudes SET Fecha=?,Cargo=?,Perfil=?,Experiencia=?,Conocimiento=?,Estudio=?,Departamento=?,CoordinadorSolicitante=? WHERE Id_Solicitud=?;");

            stmt.setString(1, ActualizarSolicitud.getFecha());
            stmt.setInt(2, ActualizarSolicitud.getCargo());
            stmt.setString(3, ActualizarSolicitud.getPerfil());
            stmt.setString(4, ActualizarSolicitud.getExperiencia());
            stmt.setString(5, ActualizarSolicitud.getConocimiento());
            stmt.setString(6, ActualizarSolicitud.getEstudio());
            stmt.setInt(7, ActualizarSolicitud.getDepartamento());
            stmt.setInt(8, ActualizarSolicitud.getCoordinadorSolicitante());
            stmt.setInt(9, ActualizarSolicitud.getId_Solicitud());
            
            
            

            resultado = stmt.executeUpdate();
            if (resultado == 0) {
                //resul=false;
                rta = "Fallo el actualizacion del registro";
            } else {
                rta = "Registro actualizado exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;
    }

     public String BorrarSolicitud(SolicitudesDTO BorrarSol)
    {
       //boolean resul = false;
       String rta="";
        try 
        {
            stmt = con.prepareStatement("DELETE FROM tb_solicitudes  WHERE Id_Solicitud=?");
            stmt.setLong(1,BorrarSol.getId_Solicitud());
            
            
                int resultado = stmt.executeUpdate();
                    if(resultado==0)
                    {
                        //resul=false;
                        rta="Fallo al eliminar";
                    }
                    else
                        {
                         rta="Registro eliminado Exitosamente";
                        }   
        }
        catch (SQLException sqle) 
            { 
                rta=sqle.getMessage();
            }
    return rta;
    }
         public SolicitudesDTO consultarUnRegistro1(int id)throws SQLException, MyException {
        SolicitudesDTO sodto = null;
        stmt = con.prepareStatement("SELECT Id_Solicitud,Fecha,Cargo,Perfil,Experiencia,Conocimiento,Estudio,Departamento,CoordinadorSolicitante from tb_solicitudes where Id_Solicitud= ?");
        stmt.setInt(1, id);
//        usdto.setNombre(pstmt.toString());
        rs = stmt.executeQuery();

        if (rs != null) {
            while (rs.next()) {
                sodto = new SolicitudesDTO();
                sodto.setId_Solicitud(rs.getInt("Id_Solicitud"));
                sodto.setFecha(rs.getString("Fecha"));
                sodto.setCargo(rs.getInt("Cargo"));
                sodto.setPerfil(rs.getString("Perfil"));
                sodto.setExperiencia(rs.getString("Experiencia"));
                sodto.setConocimiento(rs.getString("Conocimiento"));
                sodto.setEstudio(rs.getString("Estudio"));
                sodto.setDepartamento(rs.getInt("Departamento"));
                sodto.setCoordinadorSolicitante(rs.getInt("CoordinadorSolicitante"));
            }
        } else {
            throw new MyException("error al consultar byId");
        }
        return sodto;
    }


    private PreparedStatement setInt(int i, long id_Solicitud) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
