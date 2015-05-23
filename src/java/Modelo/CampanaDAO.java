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

/**
 *
 * @author Washington
 */
public class CampanaDAO {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public ArrayList<CampanaDTO> ConsultarTodos() {

        ArrayList<CampanaDTO> listado = new ArrayList<CampanaDTO>();

        try {
            stmt = con.prepareStatement("SELECT * FROM tb_campana ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                CampanaDTO uncampananew = new CampanaDTO();
                uncampananew.setId_Campana(rs.getInt("Id_Campana"));
                uncampananew.setCampana(rs.getString("Campana"));
                listado.add(uncampananew);

            }

        } catch (SQLException sqle) {

        }
        return listado;
    }
    

    public String IngresarCampana(CampanaDTO InsertarCampana){
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO tb_campana VALUES(?,?)");


            stmt.setInt(1, InsertarCampana.getId_Campana());
            stmt.setString(2, InsertarCampana.getCampana());

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

        public String ActualizarCampana(CampanaDTO ActualizarCampana) {
        //boolean resul = false;
        String rta = "";
        int resultado = 0;
        try {

            stmt = con.prepareStatement("UPDATE tb_campana SET Campana=? WHERE Id_Campana=?;");

            stmt.setString(1, ActualizarCampana.getCampana());
            stmt.setInt(2, ActualizarCampana.getId_Campana());

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

     public String BorrarCampana(CampanaDTO BorrarCam)
    {
       //boolean resul = false;
       String rta="";
        try 
        {
            stmt = con.prepareStatement("DELETE FROM tb_campana  WHERE Id_Campana=?");
            stmt.setLong(1,BorrarCam.getId_Campana());
            
            
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
         public CampanaDTO consultarUnRegistro1(int id)throws SQLException, MyException {
        CampanaDTO camdto = null;
        stmt = con.prepareStatement("SELECT Id_Campana, Campana from tb_Campana where Id_Campana= ?");
        stmt.setInt(1, id);
//        usdto.setNombre(pstmt.toString());
        rs = stmt.executeQuery();

        if (rs != null) {
            while (rs.next()) {
                camdto = new CampanaDTO();
                camdto.setId_Campana(rs.getInt("Id_Campana"));
                camdto.setCampana(rs.getString("Campana"));
            }
        } else {
            throw new MyException("error al consultar byId");
        }
        return camdto;
    }


    private PreparedStatement setInt(int i, long id_Usuario) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
