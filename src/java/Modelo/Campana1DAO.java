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
public class Campana1DAO {
    Connection conn = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    public ArrayList<Campana1DTO>ConsultarCampana(){
        ArrayList<Campana1DTO> ListadoCargo = new ArrayList<Campana1DTO>();
        try {
            stmt=conn.prepareStatement("SELECT *FROM tb_campana");
            rs=stmt.executeQuery();
            while(rs.next()){
                Campana1DTO campnew= new Campana1DTO();
                campnew.setId_Campana(rs.getInt("Id_Campana"));
                campnew.setCampana(rs.getString("Campana"));
                ListadoCargo.add(campnew);
            }
            
            
        } catch (Exception e) {
        }
        return ListadoCargo;
    }
    
}
