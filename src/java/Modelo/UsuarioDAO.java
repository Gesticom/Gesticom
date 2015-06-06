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
public class UsuarioDAO {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public ArrayList<UsuarioDTO> ConsultarTodos() {

        ArrayList<UsuarioDTO> listado = new ArrayList<UsuarioDTO>();

        try {
            stmt = con.prepareStatement("SELECT * FROM tb_Usuarios ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                UsuarioDTO unusuariosnew = new UsuarioDTO();
                unusuariosnew.setId_Usuario(rs.getInt("Id_Usuario"));
                unusuariosnew.setUsuario(rs.getString("Usuario"));
                unusuariosnew.setNombres(rs.getString("Nombres"));
                unusuariosnew.setApellidos(rs.getString("Apellidos"));
                unusuariosnew.setFechaDeNacimiento(rs.getString("FechaDeNacimiento"));
                unusuariosnew.setLugarDeNacimiento(rs.getString("LugarDeNacimiento"));
                unusuariosnew.setRole(rs.getInt("Role"));
                unusuariosnew.setCiudad(rs.getInt("Ciudad"));
                listado.add(unusuariosnew);

            }

        } catch (SQLException sqle) {

        }
        return listado;
    }

    public ArrayList<UsuarioDTO> consultarRegistroRole(int id) {

        ArrayList<UsuarioDTO> listado = new ArrayList<UsuarioDTO>();

        try {
            stmt = con.prepareStatement("SELECT U.Nombres, U.Apellidos, UR.Id_Role, R.Role FROM login as L,tb_usuarios as U, tb_usuario_role as UR,tb_role as R Where UR.Id_Usuario=U.Id_Usuario and L.IdLogin=U.Id_Usuario and R.Id_Role=UR.Id_Role and Id_usuario=?");
            stmt.setInt(1, id);
            rs = stmt.executeQuery();

            while (rs.next()) {
                UsuarioDTO unusuariosnew = new UsuarioDTO();
                unusuariosnew.setId_Usuario(rs.getInt("Id_Usuario"));
                unusuariosnew.setNombres(rs.getString("Nombres"));
                unusuariosnew.setApellidos(rs.getString("Apellidos"));
                listado.add(unusuariosnew);

            }

        } catch (SQLException sqle) {

        }
        return listado;
    }

    public String IngresarUsuario(UsuarioDTO InsertarUsuario) {
        //boolean resul = false;
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO tb_usuarios VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");

            stmt.setLong(1, InsertarUsuario.getId_Usuario());
            stmt.setString(2, InsertarUsuario.getUsuario());
            stmt.setInt(3, InsertarUsuario.getTipoDocumento());
            stmt.setString(4, InsertarUsuario.getNombres());
            stmt.setString(5, InsertarUsuario.getApellidos());
            stmt.setString(6, InsertarUsuario.getFechaDeNacimiento());
            stmt.setString(7, InsertarUsuario.getLugarDeNacimiento());
            stmt.setString(8, InsertarUsuario.getDireccion());
            stmt.setString(9, InsertarUsuario.getTelefonoFijo());
            stmt.setString(10, InsertarUsuario.getCelular());
            stmt.setInt(11, InsertarUsuario.getCiudad());
            stmt.setInt(12, InsertarUsuario.getCargo());
            stmt.setInt(13, InsertarUsuario.getRole());
            stmt.setString(14, InsertarUsuario.getContrasena());
            stmt.setString(14, InsertarUsuario.getEmail());

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

    public String ActualizarUsuario(UsuarioDTO ActualizarUsuario) {
        //boolean resul = false;
        String rta = "";
        int resultado = 0;
        try {

            stmt = con.prepareStatement("UPDATE tb_usuarios SET Contrasena=? WHERE Id_Usuario=?;");
            
        
            stmt.setString(1, ActualizarUsuario.getContrasena());
            stmt.setLong(2, ActualizarUsuario.getId_Usuario());

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

    public String BorrarUsuario(UsuarioDTO BorrarUsu) {
        //boolean resul = false;
        String rta = "";
        try {
            stmt = con.prepareStatement("DELETE FROM tb_usuarios  WHERE Id_Usuario=?");
            stmt.setLong(1, BorrarUsu.getId_Usuario());

            int resultado = stmt.executeUpdate();
            if (resultado == 0) {
                //resul=false;
                rta = "Fallo al eliminar";
            } else {
                rta = "Registro eliminado Exitosamente";
            }
        } catch (SQLException sqle) {
            rta = sqle.getMessage();
        }
        return rta;
    }

    public UsuarioDTO consultarUnRegistro1(int id) throws SQLException, MyException {
        UsuarioDTO usdto = null;
        stmt = con.prepareStatement("SELECT Id_usuario, TipoDocumento, Usuario, Nombres, Apellidos,FechaDeNacimiento, LugarDeNacimiento, Direccion, TelefonoFijo, Celular, Ciudad,Cargo, Role, Contrasena, Email user from tb_usuarios where Id_usuario= ?");
        stmt.setInt(1, id);
//        usdto.setNombre(pstmt.toString());
        rs = stmt.executeQuery();

        if (rs != null) {
            while (rs.next()) {
                usdto = new UsuarioDTO();
                usdto.setId_Usuario(rs.getInt("Id_usuario"));
                usdto.setUsuario(rs.getString("Usuario"));
                usdto.setTipoDocumento(rs.getInt("TipoDocumento"));
                usdto.setNombres(rs.getString("Nombres"));
                usdto.setApellidos(rs.getString("Apellidos"));
                usdto.setFechaDeNacimiento(rs.getString("FechaDeNacimiento"));
                usdto.setLugarDeNacimiento(rs.getString("LugarDeNacimiento"));
                usdto.setDireccion(rs.getString("Direccion"));
                usdto.setTelefonoFijo(rs.getString("TelefonoFijo"));
                usdto.setCelular(rs.getString("Celular"));
                usdto.setCiudad(rs.getInt("Ciudad"));
                usdto.setCargo(rs.getInt("Cargo"));
                usdto.setRole(rs.getInt("Role"));
                usdto.setEmail(rs.getString("Email"));
            }
        } else {
            throw new MyException("error al consultar byId");
        }
        return usdto;
    }

    public UsuarioDTO ConsultarUnUsuario(String num1) {

        String DocUsu = (num1);
        UsuarioDTO usuario = new UsuarioDTO();
        try {
            stmt = con.prepareStatement("SELECT * FROM tb_usuarios where Nombres =? ");
            stmt.setString(1, DocUsu);
            rs = stmt.executeQuery();
            usuario.setNombres("noExiste");
            while (rs.next()) {

                usuario.setId_Usuario(rs.getLong("Id_Usuario"));
                usuario.setTipoDocumento(rs.getInt("TipoDocumento"));
                usuario.setNombres(rs.getString("Nombres"));
                usuario.setApellidos(rs.getString("Apellidos"));
                usuario.setContrasena(rs.getString("Contrasena"));
                usuario.setEmail(rs.getString("Email"));
                usuario.setRole(rs.getInt("Role"));

            }
        } catch (SQLException sql) {
        }
        return usuario;
    }
}
