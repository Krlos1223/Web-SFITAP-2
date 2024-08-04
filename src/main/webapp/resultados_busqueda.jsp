<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- Importa la biblioteca JSTL core para uso de etiquetas como c:forEach y c:if -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- Importa la biblioteca JSTL fmt para formateo de fechas y números -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de Búsqueda</title>
    <link rel="stylesheet" href="styles.css"> <!-- Enlaza la hoja de estilos CSS externa -->
    <style>
        /* Estilos para el cuerpo de la página */
        body {
            position: relative;
            margin: 0;
            padding: 0;
            background-color: #E6DDDD;
        }

        /* Estilos para el fondo del cuerpo */
        body::before {
            content: '';
            position: absolute;
            top: 5%;
            left: 2%;
            width: 96%;
            height: 97%;
            background-color: #DFDEDE;
            border: 3px solid #707070;
            z-index: -1;
        }

        /* Estilos para el encabezado */
        header {
            text-align: center;
        }

        /* Estilos para la imagen del encabezado */
        header img {
            max-width: 30%;
            height: auto;
            margin: 0 auto;
            display: block;
            border-radius: 60px;
        }

        /* Estilos para el formulario de edición */
        #formulario-editar {
            max-width: 300px;
            margin: 0 auto;
            text-align: left;
            position: relative;
        }

        /* Estilos para las etiquetas del formulario */
        #formulario-editar label {
            display: block;
            margin-bottom: 10px;
            text-align: center;
            position: relative;
        }

        /* Estilos para las imágenes dentro del formulario (si las hubiera) */
        #formulario-editar img {
            width: 20px;
            height: 20px;
            position: absolute;
            left: -10px;
            top: 50%;
            transform: translateY(-50%);
        }

        /* Estilos para los campos de entrada y selección en el formulario */
        #formulario-editar input, #formulario-editar select {
            width: calc(100% - 30px);
            padding: 5px;
            margin-bottom: 15px;
            box-sizing: border-box;
            vertical-align: middle;
            padding-left: 20px;
        }

        /* Estilos para el botón del formulario */
        #formulario-editar button {
            padding: 10px 20px;
            background-color: #44D257;
            color: black;
            border: #707070;
            border-radius: 5px;
            cursor: pointer;
            display: block;
            margin: 0 auto;
            margin-top: -60px;
        }

        /* Estilos para el botón del formulario al pasar el cursor sobre él */
        #formulario-editar button:hover {
            background-color: #44D257;
        }

        /* Estilos para el campo de usuario (posición específica) */
        .campo-usuario {
            position: absolute;
            right: -210px;
            top: -72px;
            margin-left: 150px;
        }

        /* Estilos para el campo de fecha de nacimiento (posición específica) */
        .campo-fecha_de_nacimiento {
            position: relative;
            right: inherit;
            top: -65px;
            margin-left: auto;
        }

        /* Estilos para el enlace de volver al panel de administrador */
        #volver-panel-administrador {
            text-align: center;
        }
    </style>
</head>
<body>
    <!-- Encabezado con el logo del taller -->
    <header>
        <img src="imagenes/logo_taller.jpg" alt="Logo Taller Antonio Piedrahita">
    </header>

    <!-- Sección del formulario de edición de usuario -->
    <section id="formulario-editar">
        <!-- Itera sobre la lista de usuarios y genera un formulario para cada uno -->
        <c:forEach var="usuario" items="${usuarios}">
            <form action="actualizar_servlet?nombre_de_usuario=${usuario.nombre_de_usuario}" method="post">
                <!-- Campo oculto para el ID del usuario -->
                <input type="hidden" name="usuario_id" value="${usuario.usuario_id}">
                
                <!-- Campo para el nombre del empleado -->
                <label>
                    Nombre del empleado:
                    <input type="text" name="nombre" value="${usuario.nombre}" required>
                </label>
                
                <!-- Campo para el apellido del empleado -->
                <label>
                    Apellido del empleado:
                    <input type="text" name="apellido" value="${usuario.apellido}" required>
                </label>
                
                <!-- Campo para seleccionar el rol del empleado -->
                <label>
                    Rol:
                    <select name="rol" required>
                        <option value="Administrador" <c:if test="${usuario.rol == 'Administrador'}">selected</c:if>>Administrador</option>
                        <option value="Vendedor" <c:if test="${usuario.rol == 'Vendedor'}">selected</c:if>>Vendedor</option>
                        <option value="Mecanico" <c:if test="${usuario.rol == 'Mecanico'}">selected</c:if>>Mecánico</option>
                    </select>
                </label>
                
                <!-- Campo para la cédula del empleado -->
                <label>
                    Cédula:
                    <input type="text" name="cedula" value="${usuario.cedula}" required>
                </label>
                
                <!-- Campo para el nombre de usuario -->
                <label class="campo-usuario">
                    Usuario:
                    <input type="text" name="nombre_de_usuario" value="${usuario.nombre_de_usuario}" required>
                </label>
                
                <!-- Campo para la fecha de nacimiento -->
                <label class="campo-fecha_de_nacimiento">
                    Fecha de nacimiento:
                    <input type="date" name="fecha_de_nacimiento" value="<fmt:formatDate value='${usuario.fecha_de_nacimiento}' pattern='yyyy-MM-dd' />" required>
                </label>
                
                <!-- Botón para enviar el formulario -->
                <button type="submit">Editar información</button>
            </form>
        </c:forEach>
        
        <!-- Enlace para volver al panel de administrador -->
        <p id="volver-panel-administrador"><a href="modulo_admin.jsp">Volver al Panel de Administrador</a></p>
    </section>

    <footer>
        <!-- Aquí va el pie de página -->
    </footer>
</body>
</html>
