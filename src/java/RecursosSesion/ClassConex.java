
package RecursosSesion;

import java.sql.Connection;
import java.sql.DriverManager;


public class ClassConex {
     public String driver, urlbd,usrbd,passbd;
     public Connection conexion;
    
    public ClassConex(){
        driver="com.mysql.jdbc.Driver";
        usrbd="root";
        passbd="";
        urlbd="jdbc:mysql://localhost/gesticom";
    
      
        try {
            Class.forName(driver).newInstance();
            conexion=DriverManager.getConnection(urlbd,usrbd,passbd);
                    } catch (Exception e){}    
    }
          public Connection  obtenerConexion(){
            return conexion;
        }
        public  Connection cerrarConexion(){
            conexion=null;
            return conexion;
        } 
    }

