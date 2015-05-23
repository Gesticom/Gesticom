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
public class CargosDAO {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public ArrayList<CargosDTO> ConsultarTodos() {

        ArrayList<CargosDTO> listado = new ArrayList<CargosDTO>();

        try {
            stmt = con.prepareStatement("SELECT * FROM tb_cargo ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                CargosDTO uncargonew = new CargosDTO();
                uncargonew.setId_Cargo(rs.getInt("Id_Cargo"));
                uncargonew.setCargo(rs.getString("Cargo"));
                listado.add(uncargonew);

            }

        } catch (SQLException sqle) {

        }
        return listado;
    }
    

    public String IngresarCargo(CargosDTO InsertarCargo){
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO tb_cargo (Id_Cargo,Cargo) VALUES(?,?)");


            stmt.setInt(1, InsertarCargo.getId_Cargo());
            stmt.setString(2, InsertarCargo.getCargo());

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

        public String ActualizarCargo(CargosDTO ActualizarCargo) {
        //boolean resul = false;
        String rta = "";
        int resultado = 0;
        try {

            stmt = con.prepareStatement("UPDATE tb_cargo SET Cargo=? WHERE Id_Cargo=?;");

            stmt.setString(1, ActualizarCargo.getCargo());
            stmt.setInt(2, ActualizarCargo.getId_Cargo());

            resultado = stmt.executeUpdate();
            if (resultado == 0) {
                //resul=false;
                rta = "Fallo la actualizacion del registro";
            } else {
                rta = "Registro actualizado exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;
    }

     public String BorrarCargo(CargosDTO BorrarCargo)
    {
       //boolean resul = false;
       String rta="";
        try 
        {
            stmt = con.prepareStatement("DELETE FROM tb_cargo  WHERE Id_Cargo=?");
            stmt.setLong(1,BorrarCargo.getId_Cargo());
            
            
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
         public CargosDTO consultarUnRegistro1(int id) {
             CargosDTO cargosdto = null;
             try{
        
        stmt = con.prepareStatement("SELECT Id_Cargo, Cargo from tb_cargo where Id_Cargo= ?");
        stmt.setInt(1, id);
//        usdto.setNombre(pstmt.toString());
        rs = stmt.executeQuery();

        if (rs != null) {
            while (rs.next()) {
                cargosdto = new CargosDTO();
                cargosdto.setId_Cargo(rs.getInt("Id_Cargo"));
                cargosdto.setCargo(rs.getString("Cargo"));
            }
        } else {
            cargosdto=null;
       //     throw new MyException("error al consultar byId");
        }
             }
             catch(Exception e){cargosdto=null;}
        return cargosdto;
    }


    private PreparedStatement setInt(int i, long id_Cargo) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
