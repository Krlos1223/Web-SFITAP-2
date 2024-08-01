package com.mycompany.sfita_web_2;

import java.util.Date;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

//Define que esta clase es una entidad que se mapea a una tabla en la base de datos
@Entity
@Table(name = "usuarios")
public class Usuarios {

    //Define el identificador único para la entidad
    @Id
    //Define las columnas de la tabla y sus nombres
    @Column(name = "usuario_id")
    private int usuario_id;

    @Column(name = "nombre")
    private String nombre;

    @Column(name = "apellido")
    private String apellido;

    @Column(name = "cedula")
    private String cedula;

    @Column(name = "fecha_de_nacimiento")
    private Date fecha_de_nacimiento;

    @Column(name = "rol")
    private String rol;

    @Column(name = "nombre_de_usuario")
    private String nombre_de_usuario;

    @Column(name = "contraseña")
    private String contraseña;

    // Constructor necesario para Hibernate
    public Usuarios() {
    }

    // Constructor con parámetros para crear objetos Usuarios fácilmente
    public Usuarios(String nombres, String apellidos, String cedula, Date fecha_de_nacimiento, String rol, String nombre_de_usuario, String contraseña) {
        this.nombre = nombres;
        this.apellido = apellidos;
        this.cedula = cedula;
        this.fecha_de_nacimiento = fecha_de_nacimiento;
        this.rol = rol;
        this.nombre_de_usuario = nombre_de_usuario;
        this.contraseña = contraseña;
    }

    // Métodos getter y setter para acceder y modificar los campos
    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombres(String nombres) {
        this.nombre = nombres;
    }

    public String getApellidos() {
        return apellido;
    }

    public void setApellidos(String apellidos) {
        this.apellido = apellidos;
    }

    public String getCedula() {
        return cedula;
    }

    public void setCedula(String cedula) {
        this.cedula = cedula;
    }

    public Date getFecha_de_nacimiento() {
        return fecha_de_nacimiento;
    }

    public void setFecha_de_nacimiento(Date fecha_de_nacimiento) {
        this.fecha_de_nacimiento = fecha_de_nacimiento;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getNombre_de_usuario() {
        return nombre_de_usuario;
    }

    public void setNombre_de_usuario(String nombre_de_usuario) {
        this.nombre_de_usuario = nombre_de_usuario;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    //Método para representar el objeto como una cadena de texto
    @Override
    public String toString() {
        return "Usuarios{" + "usuario_id=" + usuario_id + ", nombres=" + nombre + ", apellidos=" + apellido + ", cedula=" + cedula + ", fecha_de_nacimiento=" + fecha_de_nacimiento + ", rol=" + rol + ", nombre_de_usuario=" + nombre_de_usuario + ", contraseña=" + contraseña + '}';
    }
}
