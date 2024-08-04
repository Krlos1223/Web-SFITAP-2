package com.mycompany.sfita_web_2;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

@WebServlet(name = "consulta_eliminar_servlet", urlPatterns = {"/consulta_eliminar_servlet"})
public class consulta_eliminar_servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private SessionFactory factory;

    @Override
    public void init() throws ServletException {
        factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Usuarios.class)
                .buildSessionFactory();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Obtener el parámetro de nombre de usuario
        String nombreDeUsuario = request.getParameter("nombre_de_usuario");

        if (nombreDeUsuario == null || nombreDeUsuario.isEmpty()) {
            request.setAttribute("errorMessage", "Debe proporcionar un nombre de usuario.");
            request.getRequestDispatcher("/resultados_busqueda_eliminar.jsp").forward(request, response);
            return;
        }

        try ( // Realizar la consulta con Hibernate
                Session session = factory.getCurrentSession()) {
            // Iniciar la transacción
            session.beginTransaction();

            // Realizar la consulta HQL
            List<Usuarios> resultados = session.createQuery("from Usuarios where nombre_de_usuario = :nombreDeUsuario")
                    .setParameter("nombreDeUsuario", nombreDeUsuario)
                    .list();

            // Confirmar la transacción
            session.getTransaction().commit();

            // Establecer los resultados como atributo de solicitud           
            request.setAttribute("usuarios", resultados);

            // Mostrar los resultados
            if (resultados.isEmpty()) {
                request.setAttribute("errorMessage", "No se encontró ningún usuario con el nombre de usuario proporcionado.");
            }

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Ocurrió un error al consultar el usuario.");
        }

        request
                .getRequestDispatcher("/resultados_busqueda_eliminar.jsp")
                .forward(request, response);
    }

    @Override
    public void destroy() {
        factory.close();
    }

}
