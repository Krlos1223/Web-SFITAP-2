/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package insert;

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

        System.out.println("Funcionara");

        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(usuarios.class)
                .buildSessionFactory();

        Session session = factory.getCurrentSession();

        try {

            // Convierte la cadena de texto a Date
            SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
            Date fecha_de_nacimiento = sdf.parse("13/07/2000");

            session.beginTransaction();

            usuarios usuario = new usuarios("PEDRO", "LOPEZ", "12345678910", fecha_de_nacimiento, "MECANICO", "MEC-007", "987654321");

            session.save(usuario);

            session.getTransaction().commit();

            System.out.println("TODO OKAY");

        } catch (ParseException e) {
            System.out.println("Error al parsear la fecha: " + e.getMessage());

        } finally {
            factory.close();
        }

    }

}
