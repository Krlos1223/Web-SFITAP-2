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

@WebServlet(name = "eliminar_servlet", urlPatterns = {"/eliminar_servlet"})
public class eliminar_servlet extends HttpServlet {

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
        String nombreDeUsuario = request.getParameter("nombre_de_usuario");

        try (Session session = factory.getCurrentSession()) {
            session.beginTransaction();

            Usuarios usuario = (Usuarios) session.createQuery("from Usuarios where nombre_de_usuario = :nombreDeUsuario")
                    .setParameter("nombreDeUsuario", nombreDeUsuario)
                    .uniqueResult();

            if (usuario != null) {
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("/confirmar_eliminacion.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Usuario no encontrado.");
                request.getRequestDispatcher("/resultados_busqueda_eliminar.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Ocurrió un error al recuperar el usuario.");
            request.getRequestDispatcher("/resultados_busqueda_eliminar.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int usuarioId = Integer.parseInt(request.getParameter("usuario_id"));

        try (Session session = factory.getCurrentSession()) {
            session.beginTransaction();

            Usuarios usuario = session.get(Usuarios.class, usuarioId);
            if (usuario != null) {
                session.delete(usuario);
                session.getTransaction().commit();
                response.sendRedirect("confirmar_eliminar_usuario.html");
            } else {
                request.setAttribute("errorMessage", "Usuario no encontrado.");
                request.getRequestDispatcher("/confirmar_eliminacion.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Ocurrió un error al eliminar el usuario.");
            request.getRequestDispatcher("/confirmar_eliminacion.jsp").forward(request, response);
        }
    }

    @Override
    public void destroy() {
        factory.close();
    }
}
