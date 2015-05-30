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
public class HojasDeVidaDAO {

    Connection con = Conexion.getInstace();
    PreparedStatement stmt = null;
    ResultSet rs = null;

    public ArrayList<HojasDeVidaDTO> ConsultarTodos() {

        ArrayList<HojasDeVidaDTO> listado = new ArrayList<HojasDeVidaDTO>();

        try {
            stmt = con.prepareStatement("SELECT * FROM tb_hojadevida ");
            rs = stmt.executeQuery();

            while (rs.next()) {
                HojasDeVidaDTO unhojanew = new HojasDeVidaDTO();
                unhojanew.setId_Cedula(rs.getInt("Id_Cedula"));
                unhojanew.setNombres(rs.getString("Nombres"));
                unhojanew.setApellidos(rs.getString("Apellidos"));
                unhojanew.setDireccion(rs.getString("Direccion"));
                unhojanew.setTelefono(rs.getString("Telefono"));
                unhojanew.setCelular(rs.getString("Celular"));
                unhojanew.setFechaNacimiento(rs.getString("FechaNacimiento"));
                unhojanew.setCiudadNacimiento(rs.getInt("CiudadNacimiento"));
                unhojanew.setCiudadResidencia(rs.getInt("CiudadResidencia"));
                unhojanew.setEstadoCivil(rs.getString("EstadoCivil"));
                unhojanew.setNoHijos(rs.getInt("NoHijos"));
                listado.add(unhojanew);

            }

        } catch (SQLException sqle) {

        }
        return listado;
    }
    

    public String IngresarHoja(HojasDeVidaDTO InsertarHoja){
        String rta = "";
        try {
            stmt = con.prepareStatement("INSERT INTO tb_hojadevida VALUES(?,?,?,?,?,?,?,?,?,?,?)");


            stmt.setInt(1, InsertarHoja.getId_Cedula());
            stmt.setString(2, InsertarHoja.getNombres());
            stmt.setString(3, InsertarHoja.getApellidos());
            stmt.setString(4, InsertarHoja.getDireccion());
            stmt.setString(5, InsertarHoja.getTelefono());
            stmt.setString(6, InsertarHoja.getCelular());
            stmt.setString(7, InsertarHoja.getFechaNacimiento());
            stmt.setInt(8, InsertarHoja.getCiudadNacimiento());
            stmt.setInt(9, InsertarHoja.getCiudadResidencia());
            stmt.setString(10, InsertarHoja.getEstadoCivil());
            stmt.setInt(11, InsertarHoja.getNoHijos());

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

        public String ActualizarHojaDeVida(HojasDeVidaDTO ActualizarHojaDeVida) {
        //boolean resul = false;
        String rta = "";
        int resultado = 0;
        try {

            stmt = con.prepareStatement("UPDATE tb_hojadevida SET Nombres=?,Apellidos=?,Direccion=?,Telefono=?,Celular=?,FechaNacimiento=?,CiudadNacimiento=?,CiudadResidencia=?,EstadoCivil=?,NoHijos=?, WHERE Id_Cedula=?;");

            
            stmt.setString(1, ActualizarHojaDeVida.getNombres());
            stmt.setString(2, ActualizarHojaDeVida.getApellidos());
            stmt.setString(3, ActualizarHojaDeVida.getDireccion());
            stmt.setString(4, ActualizarHojaDeVida.getTelefono());
            stmt.setString(5, ActualizarHojaDeVida.getCelular());
            stmt.setString(6, ActualizarHojaDeVida.getFechaNacimiento());
            stmt.setInt(7, ActualizarHojaDeVida.getCiudadNacimiento());
            stmt.setInt(8, ActualizarHojaDeVida.getCiudadResidencia());
            stmt.setString(9, ActualizarHojaDeVida.getEstadoCivil());
            stmt.setInt(10, ActualizarHojaDeVida.getNoHijos());
            stmt.setInt(11, ActualizarHojaDeVida.getId_Cedula());

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

     public String BorrarHojaDeVida(HojasDeVidaDTO BorrarHojaDeVida)
    {
       //boolean resul = false;
       String rta="";
        try 
        {
            stmt = con.prepareStatement("DELETE FROM tb_hojadevida  WHERE Id_Cedula=?");
            stmt.setLong(1,BorrarHojaDeVida.getId_Cedula());
            
            
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
     
    public HojasDeVidaDTO consultarUnRegistro1(int id)throws SQLException, MyException {
        HojasDeVidaDTO hojadto = null;
        stmt = con.prepareStatement("SELECT Id_Cedula, Nombres, Apellidos, Direccion, Telefono, Celular, FechaNacimiento, CiudadNacimiento, CiudadResidencia, EstadoCivil, NoHijos From tb_hojadevida where Id_Cedula= ?");
        stmt.setInt(1, id);
        rs = stmt.executeQuery();

        if (rs != null) {
            while (rs.next()) {
                hojadto = new HojasDeVidaDTO();
                hojadto.setId_Cedula(rs.getInt("Id_Cedula"));
                hojadto.setNombres(rs.getString("Nombres"));
                hojadto.setApellidos(rs.getString("Apellidos"));
                hojadto.setDireccion(rs.getString("Direccion"));
                hojadto.setTelefono(rs.getString("Telefono"));
                hojadto.setCelular(rs.getString("Celular"));
                hojadto.setFechaNacimiento(rs.getString("FechaNacimiento"));
                hojadto.setCiudadNacimiento(rs.getInt("CiudadNacimiento"));
                hojadto.setCiudadResidencia(rs.getInt("CiudadResidencia"));
                hojadto.setEstadoCivil(rs.getString("EstadoCivil"));
                hojadto.setNoHijos(rs.getInt("NoHijos"));
            }
        } else {
            throw new MyException("error al consultar byId");
        }
        return hojadto;
    }


    private PreparedStatement setInt(int i, long Id_Cedula) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
