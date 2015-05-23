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
public class RoleDAO {
    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public ArrayList<RoleDTO> ConsultarTodos() {

        ArrayList<RoleDTO> listado = new ArrayList<RoleDTO>();

        try {
            stmt = con.prepareStatement("SELECT * FROM tb_role ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                RoleDTO unrolenew = new RoleDTO();
                unrolenew.setId_Role(rs.getInt("Id_Role"));
                unrolenew.setRole(rs.getString("Role"));
                listado.add(unrolenew);

            }

        } catch (SQLException sqle) {

        }
        return listado;
    }

}
