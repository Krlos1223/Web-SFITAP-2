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
        
        //// Mensaje que indica el inicio del programa
        System.out.println("Funcionara");
        
        //// Creación de la fábrica de sesiones de Hibernate         
        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(usuarios.class)
                .buildSessionFactory();
        
        //// Obtención de una nueva sesión de la fábrica
        Session session = factory.getCurrentSession();

        try {

            //Inicio de una transaccion
            session.beginTransaction();

            //Recuperación de un objeto 'usuarios' con clave primaria 2
            usuarios resultado = session.get(usuarios.class, 2);
            System.out.println("Registro obtenido" + resultado);
            
            //Realización de una consulta HQL (Hibernate Query Language) para obtener todos los registros de la tabla 'usuarios'
            List<usuarios> resultados = session.createQuery("from usuarios").list();
            System.out.println("\nCOsulta general");
            
            //Iteración sobre la lista de resultados y salida de cada registro
            for(usuarios u: resultados) {
                System.out.println(u);
            }

            //Confirmación (commit) de la transacción
            session.getTransaction().commit();

            //Mensaje final indicando que todo ha salido bien
            System.out.println("TODO OKAY");

        } finally {
            //Cierre de la fábrica de sesiones
            factory.close();
        }
    }

}
