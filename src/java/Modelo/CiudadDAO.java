/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Modelo.CiudadDTO;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class CiudadDAO {
    
     Connection conn = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    public ArrayList<CiudadDTO>ConsultarCiudad(){
        ArrayList<CiudadDTO> ListadoDepartamento = new ArrayList<CiudadDTO>();
        try {
            stmt=conn.prepareStatement("SELECT *FROM tb_ciudad");
            rs=stmt.executeQuery();
            while(rs.next()){
                CiudadDTO ciunew= new CiudadDTO();
                ciunew.setId_Ciudad(rs.getInt("Id_Ciudad"));
                ciunew.setCiudad(rs.getString("Ciudad"));
                ListadoDepartamento.add(ciunew);
            }
            
            
        } catch (Exception e) {
        }
        return ListadoDepartamento;
    }
    
}
