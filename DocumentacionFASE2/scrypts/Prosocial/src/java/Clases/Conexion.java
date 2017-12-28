/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

/**
 *
 * @author Juan RigobertoZuñiga
 */
import java.sql.Connection;
import java.sql.DriverManager;

public class Conexion {
    private String USERNAME="root";
    private String PASSWORD="53989995rigo";
    private String HOST = "localhost";
    private String PORT = "3306";
    private String DATABASE = "redproyectos";
    private String CLASSNAME = "org.mariadb.jdbc.Driver";
    private String URL = "jdbc:mariadb://"+HOST+":"+PORT+"/"+DATABASE;


    public Connection getConexion(){
        Connection con=null;
        try {
            //aqui se instancia el driver de la base de datos
            Class.forName(CLASSNAME).newInstance();
            //en esta clase se realiza la coneccion a la base de datos
            con= DriverManager.getConnection(URL,USERNAME,PASSWORD);
            
        } catch (Exception e) {
             System.out.println("ERROR"+e);
        }     
       return con; 
    }/*
    public static void main(String[] args){
        Conexion conectar= new Conexion();
        conectar.getConexion();
        
    }*/
}
