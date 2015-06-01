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
public class DepartamentoDAO {
    
    Connection conn = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    public ArrayList<DepartamentoDTO>ConsultarDepartamento(){
        ArrayList<DepartamentoDTO> ListadoDepartamento = new ArrayList<DepartamentoDTO>();
        try {
            stmt=conn.prepareStatement("SELECT *FROM tb_departamento");
            rs=stmt.executeQuery();
            while(rs.next()){
                DepartamentoDTO depnew= new DepartamentoDTO();
                depnew.setId_Departamento(rs.getInt("id_Departamento"));
                depnew.setDepartamento(rs.getString("Departamento"));
                ListadoDepartamento.add(depnew);
            }
            
            
        } catch (Exception e) {
        }
        return ListadoDepartamento;
    }
    
}
