
package ModeloSesion;

import Modelo.Conexion;
import Modelo.UsuarioDTO;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import RecursosSesion.ClassConex;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SesionDAO {
    
    Connection con = Conexion.getInstace();
    PreparedStatement stmt=null;
    ResultSet rs=null;
    
    UsuarioDTO unusuarionew=new UsuarioDTO();
    
      public UsuarioDTO Login(UsuarioDTO inusu){
  
            boolean existeUsuario = false;
            try 
        {
            stmt = con.prepareStatement("SELECT * from tb_usuarios where Usuario=? && Contrasena=?;");
            stmt.setString(1, inusu.getUsuario());
            stmt.setString(2, inusu.getContrasena());
            
            rs = stmt.executeQuery();

            if (rs.next())
            {
                unusuarionew.setId_Usuario(rs.getInt("Id_Usuario"));
                unusuarionew.setUsuario(rs.getString("Usuario"));
                unusuarionew.setNombres(rs.getString("Nombres"));
                unusuarionew.setApellidos(rs.getString("Apellidos"));
                unusuarionew.setTipoDocumento(rs.getInt("TipoDocumento"));
                unusuarionew.setLugarDeNacimiento(rs.getString("LugarDeNacimiento"));
                unusuarionew.setDireccion(rs.getString("Direccion"));
                unusuarionew.setTelefonoFijo(rs.getString("TelefonoFijo"));
                unusuarionew.setCelular(rs.getString("Celular"));
                unusuarionew.setCiudad(rs.getInt("Ciudad"));
                unusuarionew.setCargo(rs.getInt("Cargo"));
                unusuarionew.setRole(rs.getInt("Role"));
                unusuarionew.setContrasena(rs.getString("Contrasena"));
                
                
            }else {
                unusuarionew.setUsuario("No en contrado");
            }
            
        }catch (SQLException sqle){ 
              
        } 
           return unusuarionew;     
        } 
      public boolean validarUsuario(String nom, String clave){
//        public validarUsuario(nom,clave){
//      public boolean validarUsuario(ObjDto){
          boolean encontrado= false;
//          
          try {
            stmt = con.prepareStatement("select * from tb_usuarios where Usuario='"+nom+"' and Contrasena='"+clave+"';");
//            stmt = con.prepareStatement("select * from tb_usuarios where Usuario='"+nom+"';");
            rs = stmt.executeQuery();
//
              if(rs.next()){
                  
                  encontrado=true;
              }
 //             this.cerrarConexion();
          } catch (Exception e) {
          }
          return encontrado; 
     }
//      public boolean traerRole(String nom, String clave){
//          boolean encontrado= false;
//          
//          try {
//             conn=this.obtenerConexion();
//              st=conn.createStatement();
//              rs=st.executeQuery("select * from tb_usuarios where Usuario='"+nom+"' and Contrasena='"+clave+"';");
//                                                                                                                                                                                                                                         
//              if(rs.next()){
//
//                  encontrado=true;
//              }
//              this.cerrarConexion();
//          } catch (Exception e) {
//          }
//          return encontrado; 
//     }

}
