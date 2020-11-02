package config;
import java.sql.*;

public class Conexion {
     Connection con = null;
    private final String url ="jdbc:mysql://localhost:3306/bd_prueba";
    private final String user ="root" ;
    private final String pass ="";
 
    public Connection Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
//            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection(url,user,pass);
                    
        }catch(ClassNotFoundException | SQLException e){
                System.out.println("Error"+e.getMessage());
    }
    return con;
}
}
