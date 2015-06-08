/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import Modelo.CiudadesDTO;
import Modelo.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
public class EstadoDAO {
    
     Connection conn = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    public ArrayList<EstadoDTO>ConsultarEstado(){
        ArrayList<EstadoDTO> ListadoEstado = new ArrayList<EstadoDTO>();
        try {
            stmt=conn.prepareStatement("SELECT *FROM tb_estado");
            rs=stmt.executeQuery();
            while(rs.next()){
                EstadoDTO estnew= new EstadoDTO();
                estnew.setId_Estado(rs.getInt("Id_Estado"));
                estnew.setEstado(rs.getString("Estado"));
                ListadoEstado.add(estnew);
            }
            
            
        } catch (Exception e) {
        }
        return ListadoEstado;
    }
    
}
