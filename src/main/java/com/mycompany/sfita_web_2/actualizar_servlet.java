package com.mycompany.sfita_web_2;

import java.io.IOException;
import java.text.SimpleDateFormat;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

// Define el servlet y mapea la URL /actualizar_servlet
@WebServlet(name = "actualizar_servlet", urlPatterns = {"/actualizar_servlet"})
public class actualizar_servlet extends HttpServlet {

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
        String nombreDeUsuario = request.getParameter("nombre_de_usuario");

        try (Session session = factory.getCurrentSession()) {
            session.beginTransaction();

            // Realizar la consulta HQL para encontrar el usuario
            Usuarios usuario = (Usuarios) session.createQuery("from Usuarios where nombre_de_usuario = :nombreDeUsuario")
                    .setParameter("nombreDeUsuario", nombreDeUsuario)
                    .uniqueResult();

            if (usuario != null) {
                request.setAttribute("usuario", usuario);
                request.getRequestDispatcher("/resultados_busqueda.jsp").forward(request, response);
            } else {
                request.setAttribute("errorMessage", "Usuario no encontrado.");
                request.getRequestDispatcher("/resultados_busqueda.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Ocurrió un error al recuperar el usuario.");
            request.getRequestDispatcher("/resultados_busqueda.jsp").forward(request, response);
        }
    }

    // Maneja las solicitudes POST
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int usuarioId = Integer.parseInt(request.getParameter("usuario_id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String cedula = request.getParameter("cedula");
        String fechaDeNacimiento = request.getParameter("fecha_de_nacimiento");
        String rol = request.getParameter("rol");
        String nombreDeUsuario = request.getParameter("nombre_de_usuario");

        try (Session session = factory.getCurrentSession()) {
            session.beginTransaction();

            // Obtener el usuario por ID
            Usuarios usuario = session.get(Usuarios.class, usuarioId);
            if (usuario != null) {
                // Actualizar los datos del usuario
                usuario.setNombre(nombre);
                usuario.setApellido(apellido);
                usuario.setCedula(cedula);
                usuario.setFecha_de_nacimiento(new SimpleDateFormat("yyyy-MM-dd").parse(fechaDeNacimiento));
                usuario.setRol(rol);
                usuario.setNombre_de_usuario(nombreDeUsuario);

                // Actualizar el usuario en la base de datos
                session.update(usuario);
                session.getTransaction().commit();

                // Redirigir a la página de confirmación
                System.out.println("Redirigiendo a confirmar_editar_usuario.html");
                response.sendRedirect("confirmar_editar_usuario.html");
                return;

            } else {
                request.setAttribute("errorMessage", "Usuario no encontrado.");
                request.getRequestDispatcher("/resultados_busqueda.jsp").forward(request, response);
            }
        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("errorMessage", "Ocurrió un error al actualizar el usuario.");
            request.getRequestDispatcher("/resultados_busqueda.jsp").forward(request, response);
        }
    }

    // Cierra el SessionFactory de Hibernate cuando el servlet se destruye
    @Override
    public void destroy() {
        factory.close();
    }
}
