/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author capie
 */
public class eliminar_y_actualizar {

    public static void main(String[] args) {

        //Creacion de la fabrica de sesiones de hibernate
        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(usuarios.class)
                .buildSessionFactory();

        Session session = factory.getCurrentSession();

        try {

            // Convierte la cadena de texto a Date
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            Date fecha_de_nacimiento = sdf.parse("24/04/2005");

            //inicio de transaccion
            session.beginTransaction();

            //Actualizacion de usuario            
            usuarios per = session.get(usuarios.class, 6);
            per.setNombre("Manuela");
            per.setApellido("Cardenas");
            per.setCedula("103065897");
            per.setFecha_de_nacimiento(fecha_de_nacimiento);
            per.setRol("ADMIN");
            per.setNombre_de_usuario("ADM-005");
            per.setContraseña("7894561230");

            //eliminacion de usuario
            session.createQuery("delete from usuarios u where u.usuario_id = 1").executeUpdate();
            
            //fin de transaccion
            session.getTransaction().commit();

            System.out.println("TODO OKAY");

        } catch (ParseException e) {
            System.out.println("Error al parsear la fecha: " + e.getMessage());

            //cierre de la fabrica  
        } finally {
            factory.close();
        }
    }

}
