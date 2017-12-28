/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author Juan RigobertoZuñiga
 */
public class Clientes {

    public boolean agregarUsuario(String nombre,String apellido,String correo,String contra,String nomusuario,String nick) throws SQLException {
        Connection dbConnection = null;
        //ES PARA DECLARAR SENTENCIAS SQL
        PreparedStatement preparedStatement = null;
        //SQL -- 
        String insertTableSQL = "INSERT INTO usuario(NOMBRE,APELLIDO,CORREO,CONTRA,NOMUSUARIO,NICK)"  + "VALUES (?,?,?,?,?,?)";
        //String instruccionsql="INSERT INTO CLIENTE(nombre,vip)VALUES ('"+nick+"','"+pass+"','"+vipi+"')";
            dbConnection = new Conexion().getConexion();
            preparedStatement = dbConnection.prepareStatement(insertTableSQL);
            /* ? */preparedStatement.setString(1, nick);
            /* ? */preparedStatement.setString(2, apellido) ;
            /* ? */preparedStatement.setString(3, correo) ;
            /* ? */preparedStatement.setString(4, contra);
            /* ? */preparedStatement.setString(5, nomusuario);
            /* ? */preparedStatement.setString(6, nick);
            //execute insert SQL stetement
            try {
                preparedStatement.executeUpdate();
                dbConnection.close();
                return true;
            } catch (SQLException e) {
                System.out.println(e.getMessage());
                return false;
            }/*
            finally {
                 if (preparedStatement != null) {
                preparedStatement.close();
                }
                if (dbConnection != null) {
                dbConnection.close();
                }
            }*/
    }
    
 public boolean lookUser(String correo,String contra ){
    Connection conector = null;
    PreparedStatement state=null;
    ResultSet rs=null;
     
     try {
        conector=new Conexion().getConexion();
        String consulta="SELECT * FROM usuario WHERE NOMUSUARIO=? AND CONTRA=?";
        state = conector.prepareStatement(consulta);
        state.setString(1, correo);
        state.setString(2, contra);
        rs=state.executeQuery();
        if(rs.absolute(1)){
            return true;
        }
     } catch (Exception e) {
         System.err.println("error!!!!!"+e);
     } finally{
         try{
             if(conector!=null){
                 conector.close();
             }
             if(state!=null){
                 state.close();
             }
             if(rs !=null){
                 rs.close();
             }
         }catch(Exception e){
             System.err.println("error!!!!!"+e);
         }
     }
     return false;
  }
 
    public int getid(String user){
        Connection conector = null;
        PreparedStatement state=null;
        ResultSet rs=null;
        try {
            String consulta ="SELECT * FROM usuario WHERE NOMUSUARIO=?";
            state=conector.prepareStatement(consulta);
            state.setString(1, user);
            rs=state.executeQuery();
            int id=0;
            if(rs.absolute(1)){
                id=rs.getInt("IDUSUARIO");
                return id;
            }
        } catch (Exception e) {
            System.err.println("error!!!!!"+e);
        }finally{
         try{
             if(conector!=null){
                 conector.close();
             }
             if(state!=null){
                 state.close();
             }
             if(rs !=null){
                 rs.close();
             }
         }catch(Exception e){
             System.err.println("error!!!!!"+e);
         }
     }
        return 0;
    }
    
    
}

