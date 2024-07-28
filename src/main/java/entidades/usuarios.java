/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entidades;

import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

//Esta clase es una entidad que se mapeara en una tabla de una BD
@Entity
//Especifica el nombre de la tabla de la BD 
@Table(name = "usuarios")
public class usuarios {
    
    //Clave primaria de la tabla
    @Id
    //Especifica el nombre de la columna en la tabla de la BD que corresponde a este campo
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
    
    //Constructor necesario para hibernate
    public usuarios(){
    
    }

    //Constructor con parámetros para crear instancias de la clase con todos los campos inicializados
    public usuarios(String nombre, String apellido, String cedula, Date fecha_de_nacimiento, String rol, String nombre_de_usuario, String contraseña) {
        this.nombre = nombre;
        this.apellido = apellido;
        this.cedula = cedula;
        this.fecha_de_nacimiento = fecha_de_nacimiento;
        this.rol = rol;
        this.nombre_de_usuario = nombre_de_usuario;
        this.contraseña = contraseña;
    }

    //Métodos getter y setter para acceder y modificar los campos privados de la clase
    public int getUsuario_id() {
        return usuario_id;
    }

    public void setUsuario_id(int usuario_id) {
        this.usuario_id = usuario_id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
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

    //// Método toString para representar la entidad en forma de cadena de texto
    @Override
    public String toString() {
        return "Usuario{" + "usuario_id=" + usuario_id + ", nombre=" + nombre + ", apellido=" + apellido + ", cedula=" + cedula + ", fecha_de_nacimiento=" + fecha_de_nacimiento + ", rol=" + rol + ", nombre_de_usuario=" + nombre_de_usuario + ", contrase\u00f1a=" + contraseña + '}';
    }

}
