/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Juan RigobertoZuñiga
 */
public class Publicacion {
    
         public boolean publicar(int id, String publico){
        Connection conector = null;
        PreparedStatement state=null;
        ResultSet rs=null;
        try {
            String consulta="insert into publicacion(IDUSUARIO,PUBLICACION) values (?,?)";
            state=conector.prepareStatement(consulta);
            state.setInt(1, id);
            state.setString(2, publico);
            if(state.executeUpdate()==1){
                return true;
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
        return false;
    }
}
