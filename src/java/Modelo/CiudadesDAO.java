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
public class CiudadesDAO {
    
    Connection conn = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;
    
    public ArrayList<CiudadesDTO>ConsultarCiudad(){
        ArrayList<CiudadesDTO> ListadoDepartamento = new ArrayList<CiudadesDTO>();
        try {
            stmt=conn.prepareStatement("SELECT *FROM tb_ciudad");
            rs=stmt.executeQuery();
            while(rs.next()){
                CiudadesDTO ciunew= new CiudadesDTO();
                ciunew.setId_Ciudad(rs.getInt("Id_Ciudad"));
                ciunew.setCiudad(rs.getString("Ciudad"));
                ListadoDepartamento.add(ciunew);
            }
            
            
        } catch (Exception e) {
        }
        return ListadoDepartamento;
    }
    public String IngresarCiudad(CiudadesDTO InsertarCiudad){
        String rta = "";
        try {
            stmt = conn.prepareStatement("INSERT INTO tb_ciudad VALUES(?,?)");


            stmt.setInt(1, InsertarCiudad.getId_Ciudad());
            stmt.setString(2, InsertarCiudad.getCiudad());

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
    
}
