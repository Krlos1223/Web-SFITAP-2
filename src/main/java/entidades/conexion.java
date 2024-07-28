/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

import entidades.usuarios;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author capie
 */
public class conexion {

    public static void main(String[] args) {

        //Mensaje de inicio del programa
        System.out.println("Funcionara");

        //Creación de la fabrica de sesiones de hibernate
        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(usuarios.class)
                .buildSessionFactory();

        //Obtener nueva sesion de la fabrica
        Session session = factory.getCurrentSession();

        try {

            // Convierte la cadena de texto a Date
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            Date fecha_de_nacimiento = sdf.parse("13/07/2000");

            //Inicio de una transaccion
            session.beginTransaction();

            //Creacion de nuevo objeto usuarios con los datos del usuario
            usuarios usuario = new usuarios("PEDRO", "LOPEZ", "12345678910", fecha_de_nacimiento, "MECANICO", "MEC-007", "987654321");

            //Guardar el objeto en la BD
            session.save(usuario);

            //Confirmación (commit) de la transaccion 
            session.getTransaction().commit();

            //Mensaje final que indica que todo ha salido bien
            System.out.println("TODO OKAY");

        } catch (ParseException e) {
            //Captura y manejo de una excepcion de parseo de fecha
            System.out.println("Error al parsear la fecha: " + e.getMessage());

        } finally {
            //cierre de la fabrica de sesiones
            factory.close();
        }

    }

}
