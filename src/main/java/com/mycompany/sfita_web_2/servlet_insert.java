package com.mycompany.sfita_web_2;

import java.io.IOException;
import java.sql.Date;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/servlet_insert")
public class servlet_insert extends HttpServlet {

    private static final long serialVersionUID = 1L;
    private static final Logger LOGGER = Logger.getLogger(servlet_insert.class.getName());

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.sendRedirect("registro.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombres = request.getParameter("nombres");
        String apellidos = request.getParameter("apellidos");
        String cedula = request.getParameter("cedula");
        String fecha_nacimiento = request.getParameter("fecha_nacimiento");
        String rol = request.getParameter("rol");
        String nombre_de_usuario = request.getParameter("nombre_de_usuario");
        String contraseña = request.getParameter("contraseña");

        LOGGER.info("Datos recibidos del formulario: " + nombres + " " + apellidos + " " + cedula + " " + fecha_nacimiento + " " + rol + " " + nombre_de_usuario + " " + contraseña);

        // Creación de la fábrica de sesiones de Hibernate
        SessionFactory factory = new Configuration()
                .configure("hibernate.cfg.xml")
                .addAnnotatedClass(Usuarios.class)
                .buildSessionFactory();

        // Obtener nueva sesión de la fábrica
        Session session = factory.getCurrentSession();

        try {
            // Convierte la cadena de texto a Date
            DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
            LocalDate localDate = LocalDate.parse(fecha_nacimiento, formatter);
            Date fecha_de_nacimiento = java.sql.Date.valueOf(localDate);

            // Inicio de una transacción
            session.beginTransaction();

            // Creación de nuevo objeto usuarios con los datos del usuario
            Usuarios usuario = new Usuarios(nombres, apellidos, cedula, fecha_de_nacimiento, rol, nombre_de_usuario, contraseña);

            // Guardar el objeto en la BD
            session.save(usuario);

            // Confirmación (commit) de la transacción
            session.getTransaction().commit();

            // Mensaje final que indica que todo ha salido bien
            LOGGER.info("Usuario guardado en la base de datos");

            // Redirigir a una página de éxito
            response.sendRedirect("registro_exitoso.jsp");

        } catch (IOException e) {
            
            e.printStackTrace();
            // Captura y manejo de una excepción
            LOGGER.log(Level.SEVERE, "Error al guardar el usuario: " + e.getMessage(), e);
            response.sendRedirect("error.jsp");

        } finally {
            // Cierre de la fábrica de sesiones
            factory.close();
        }
    }
}
