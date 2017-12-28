/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Service;
import Clases.*;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author Juan RigobertoZuñiga
 */
@WebService(serviceName = "Servicio")
public class Servicio {

    /**
     * This is a sample web service operation
     */
    @WebMethod(operationName = "Agregarusuario")
    public boolean Agregarusuario(@WebParam(name = "nombre") String nombre,
            @WebParam(name = "apellido") String apellido,
            @WebParam(name = "correo") String correo,
            @WebParam(name = "contra") String contra,
            @WebParam(name = "nomusuario") String nomusuario,
            @WebParam(name = "nick") String nick) {
        Clientes user=new Clientes();
        try {
            return user.agregarUsuario(nombre, apellido, correo, contra, nomusuario, nick);
        } catch (SQLException ex) {
            return false;
        }
    }
    
    
   @WebMethod(operationName = "Login")
    public boolean Login(@WebParam(name = "correo") String correo,
            @WebParam(name = "contra") String contra) {
        Clientes user=new Clientes();
        return user.lookUser(correo, contra);
    }
    //metodo para encontrar el id del usuario logueado
    @WebMethod(operationName = "Buscarid")
    public int Buscarid(@WebParam(name = "id") String id) {
        Clientes user=new Clientes();
        return user.getid(id);
    }
    //metodo para guardar una publicacion
    @WebMethod(operationName = "Publicar")
    public boolean Publicar(@WebParam(name = "idusuario") int idusuario,
            @WebParam(name = "publicacion") String publica) {
        Publicacion pub=new Publicacion();
        return pub.publicar(idusuario, publica);
    }
}
