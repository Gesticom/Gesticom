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

    Connection conn = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public ArrayList<SolicitudesDTO> ConsultarTodos() {

        ArrayList<SolicitudesDTO> listado = new ArrayList<SolicitudesDTO>();

        try {
            stmt = conn.prepareStatement("select sol.Id_Solicitud as idsol,cam.Campana,"+
                      "ca.Cargo, "+
                      "sol.FechaDeInicio, "+
                      "ciu.Ciudad, "+
                      "dep.Departamento, "+
                      "est.Estado "+
                      "from tb_solicitudes sol "+
                      " join tb_cargo ca on sol.Id_Cargo = ca.Id_Cargo"+
                      " join tb_departamento dep on sol.Id_Departamento = dep.Id_Departamento"+
                      " join tb_campana cam on sol.Id_Campana = cam.Id_Campana"+
                      " join tb_ciudad ciu on sol.Id_Ciudad = ciu.Id_Ciudad"+
                      " join tb_estado est on sol.Id_Estado = est.Id_Estado;");
            rs = stmt.executeQuery();

            while (rs.next()) {
                 SolicitudesDTO unsolicitudesnew = new SolicitudesDTO();
                 unsolicitudesnew.setId_Solicitud(rs.getInt("idsol"));
                 unsolicitudesnew.setCampana(rs.getString("Campana"));
                 unsolicitudesnew.setCargo(rs.getString("Cargo"));
                 unsolicitudesnew.setFechaDeInicio(rs.getString("FechaDeInicio"));
                 unsolicitudesnew.setCiudad(rs.getString("Ciudad"));
                 unsolicitudesnew.setDepartamento(rs.getString("Departamento"));
                 unsolicitudesnew.setEstado(rs.getString("Estado"));
                 listado.add(unsolicitudesnew);
            }

        } catch (SQLException sqle) {

        }
        return listado;
    }
    
    public ArrayList<SolicitudesDTO> ConsultarTodosuno() {

        ArrayList<SolicitudesDTO> listado = new ArrayList<SolicitudesDTO>();

        try {
            stmt = conn.prepareStatement("select sol.Id_Solicitud as idsol,"+
                     "sol.Vacantes, "+
                     "sol.Perfil,"+
                     "cam.Campana,"+
                      "ca.Cargo, "+
                      "sol.FechaDeInicio, "+
                      "ciu.Ciudad, "+
                      "dep.Departamento, "+
                      "est.Estado "+
                      "from tb_solicitudes sol "+
                      " join tb_cargo ca on sol.Id_Cargo = ca.Id_Cargo"+
                      " join tb_departamento dep on sol.Id_Departamento = dep.Id_Departamento"+
                      " join tb_campana cam on sol.Id_Campana = cam.Id_Campana"+
                      " join tb_ciudad ciu on sol.Id_Ciudad = ciu.Id_Ciudad"+
                      " join tb_estado est on sol.Id_Estado = est.Id_Estado;");
            rs = stmt.executeQuery();

            while (rs.next()) {
                 SolicitudesDTO unsolicitudesnew = new SolicitudesDTO();
                 unsolicitudesnew.setId_Solicitud(rs.getInt("idsol"));
                 unsolicitudesnew.setVacantes(rs.getInt("Vacantes"));
                 unsolicitudesnew.setPerfil(rs.getString("Perfil"));
                 unsolicitudesnew.setCampana(rs.getString("Campana"));
                 unsolicitudesnew.setCargo(rs.getString("Cargo"));
                 unsolicitudesnew.setFechaDeInicio(rs.getString("FechaDeInicio"));
                 unsolicitudesnew.setCiudad(rs.getString("Ciudad"));
                 unsolicitudesnew.setDepartamento(rs.getString("Departamento"));
                 unsolicitudesnew.setEstado(rs.getString("Estado"));
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
            stmt = conn.prepareStatement("INSERT INTO tb_solicitudes VALUES(?,?,?,?,?,?,?,?,?)");
            stmt.setInt(1,InsertarSolicitud.getId_Solicitud());
            stmt.setInt(2,InsertarSolicitud.getVacantes());
            stmt.setInt(3,InsertarSolicitud.getId_Cargo());
            stmt.setString(4,InsertarSolicitud.getFechaDeInicio());
            stmt.setInt(5,InsertarSolicitud.getId_Ciudad());
            stmt.setString(6,InsertarSolicitud.getPerfil());
            stmt.setInt(7,InsertarSolicitud.getId_Estado());
            stmt.setInt(8,InsertarSolicitud.getId_Departamento());
            stmt.setInt(9,InsertarSolicitud.getId_Campana());
            

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

            stmt = conn.prepareStatement("UPDATE tb_solicitudes SET Vacantes=?,Id_Cargo=?,FechaDeInicio=?,Id_Ciudad=?,Perfil=?,Id_Estado=?,Id_Departamento=?,Id_Campana=? WHERE Id_Solicitud=?;");

           
            stmt.setInt(1,ActualizarSolicitud.getVacantes());
            stmt.setInt(2,ActualizarSolicitud.getId_Cargo());
            stmt.setString(3,ActualizarSolicitud.getFechaDeInicio());
            stmt.setInt(4,ActualizarSolicitud.getId_Ciudad());
            stmt.setString(5,ActualizarSolicitud.getPerfil());
            stmt.setInt(6,ActualizarSolicitud.getId_Estado());
            stmt.setInt(7,ActualizarSolicitud.getId_Departamento());
            stmt.setInt(8,ActualizarSolicitud.getId_Campana());
            stmt.setInt(9,ActualizarSolicitud.getId_Solicitud()); 
            
            

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
            stmt = conn.prepareStatement("DELETE FROM tb_solicitudes  WHERE Id_Solicitud=?");
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
            
        SolicitudesDTO redto = null;
        stmt = conn.prepareStatement("SELECT * from tb_solicitudes where Id_Solicitud= ?");
        stmt.setInt(1, id);
//        usdto.setNombre(pstmt.toString());
        rs = stmt.executeQuery();

        if (rs != null) {
            while (rs.next()) {
                redto = new SolicitudesDTO();
                redto.setId_Solicitud(rs.getInt("Id_Solicitud"));
                redto.setVacantes(rs.getInt("Vacantes"));
                redto.setId_Cargo(rs.getInt("Id_Cargo"));
                redto.setFechaDeInicio(rs.getString("FechaDeInicio"));
                redto.setId_Ciudad(rs.getInt("Id_Ciudad"));
                redto.setPerfil(rs.getString("Perfil"));
                redto.setId_Estado(rs.getInt("Id_Estado"));
                redto.setId_Departamento(rs.getInt("Id_Departamento"));
                redto.setId_Campana(rs.getInt("Id_Campana"));
                
              
                      
            }
        } else {
            throw new MyException("error al consultar byId");
        }
        return redto;
    }



    private PreparedStatement setInt(int i, int Id_Solicitud) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
