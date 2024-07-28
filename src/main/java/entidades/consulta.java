/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author capie
 */
public class consulta {

    public static void main(String[] args) {

        System.out.println("Funcionara");

        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(usuarios.class)
                .buildSessionFactory();

        Session session = factory.getCurrentSession();

        try {

            session.beginTransaction();

            usuarios resultado = session.get(usuarios.class, 2);
            System.out.println("Registro obtenido" + resultado);
            
            List<usuarios> resultados = session.createQuery("from usuarios").list();
            System.out.println("\nCOsulta general");
            for(usuarios u: resultados) {
                System.out.println(u);
            }

            session.getTransaction().commit();

            System.out.println("TODO OKAY");

        } finally {
            factory.close();
        }
    }

}
