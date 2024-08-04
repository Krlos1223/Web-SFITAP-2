package com.mycompany.sfita_web_2;

import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

// Define el servlet y mapea la URL /eliminar_servlet
@WebServlet(name = "eliminar_servlet", urlPatterns = {"/eliminar_servlet"})
public class eliminar_servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private SessionFactory factory;

    // Inicializa el SessionFactory de Hibernate cuando el servlet se carga
    @Override
    public void init() throws ServletException {
        factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Usuarios.class)
                .buildSessionFactory();
    }

    // Maneja las solicitudes GET
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtiene el nombre de usuario de la solicitud
        String nombreDeUsuario = request.getParameter("nombre_de_usuario");

        // Inicia una sesión de Hibernate
        try (Session session = factory.getCurrentSession()) {
            session.beginTransaction();

            // Consulta el usuario por nombre de usuario
            Usuarios usuario = (Usuarios) session.createQuery("from Usuarios where nombre_de_usuario = :nombreDeUsuario")
                    .setParameter("nombreDeUsuario", nombreDeUsuario)
                    .uniqueResult();

            // Si el usuario existe, lo envía a la página de confirmación
            if (usuario != null) {
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("/confirmar_eliminacion.jsp").forward(request, response);
            } else {
                // Si no se encuentra el usuario, muestra un mensaje de error
                request.setAttribute("errorMessage", "Usuario no encontrado.");
                request.getRequestDispatcher("/resultados_busqueda_eliminar.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Ocurrió un error al recuperar el usuario.");
            request.getRequestDispatcher("/resultados_busqueda_eliminar.jsp").forward(request, response);
        }
    }

    // Maneja las solicitudes POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Obtiene el ID del usuario de la solicitud
        int usuarioId = Integer.parseInt(request.getParameter("usuario_id"));

        // Inicia una sesión de Hibernate
        try (Session session = factory.getCurrentSession()) {
            session.beginTransaction();

            // Consulta el usuario por ID
            Usuarios usuario = session.get(Usuarios.class, usuarioId);
            if (usuario != null) {
                // Si el usuario existe, lo elimina y confirma la transacción
                session.delete(usuario);
                session.getTransaction().commit();
                response.sendRedirect("confirmar_eliminar_usuario.html");
            } else {
                // Si no se encuentra el usuario, muestra un mensaje de error
                request.setAttribute("errorMessage", "Usuario no encontrado.");
                request.getRequestDispatcher("/confirmar_eliminacion.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Ocurrió un error al eliminar el usuario.");
            request.getRequestDispatcher("/confirmar_eliminacion.jsp").forward(request, response);
        }
    }

    // Cierra el SessionFactory de Hibernate cuando el servlet se destruye
    @Override
    public void destroy() {
        factory.close();
    }
}
