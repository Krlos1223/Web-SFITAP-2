<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de Búsqueda</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            position: relative;
            margin: 0;
            padding: 0;
            background-color: #E6DDDD;
        }
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
        header {
            text-align: center;
        }
        header img {
            max-width: 30%;
            height: auto;
            margin: 0 auto;
            display: block;
            border-radius: 60px;
        }
        #formulario-eliminar {
            max-width: 300px;
            margin: 0 auto;
            text-align: left;
            position: relative;
        }
        #formulario-eliminar label {
            display: block;
            margin-bottom: 10px;
            text-align: center;
            position: relative;
        }
        #formulario-eliminar img {
            width: 20px;
            height: 20px;
            position: absolute;
            left: -10px;
            top: 50%;
            transform: translateY(-50%);
        }
        #formulario-eliminar input, #formulario-eliminar select {
            width: calc(100% - 30px);
            padding: 5px;
            margin-bottom: 15px;
            box-sizing: border-box;
            vertical-align: middle;
            padding-left: 20px;
        }
        #formulario-eliminar button {
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
        #formulario-eliminar button:hover {
            background-color: #44D257;
        }
        .campo-usuario {
            position: absolute;
            right: -210px;
            top: -72px;
            margin-left: 150px;
        }
        .campo-fecha_de_nacimiento {
            position: relative;
            right: inherit;
            top: -65px;
            margin-left: auto;
        }
        #volver-panel-administrador {
            text-align: center;
        }
    </style>
</head>
<body>
    <header>
        <img src="imagenes/logo_taller.jpg" alt="Logo Taller Antonio Piedrahita">
    </header>

    <section id="formulario-eliminar">
        <c:forEach var="usuario" items="${usuarios}">
            <form action="eliminar_servlet?nombre_de_usuario=${usuario.nombre_de_usuario}" method="post">
                <input type="hidden" name="usuario_id" value="${usuario.usuario_id}">
                <label>
                    Nombre del empleado:
                    <input type="text" name="nombre" value="${usuario.nombre}" required>
                </label>
                <label>
                    Apellido del empleado:
                    <input type="text" name="apellido" value="${usuario.apellido}" required>
                </label>
                <label>
                    Rol:
                    <select name="rol" required>
                        <option value="Administrador" <c:if test="${usuario.rol == 'Administrador'}">selected</c:if>>Administrador</option>
                        <option value="Vendedor" <c:if test="${usuario.rol == 'Vendedor'}">selected</c:if>>Vendedor</option>
                        <option value="Mecanico" <c:if test="${usuario.rol == 'Mecanico'}">selected</c:if>>Mecánico</option>
                    </select>
                </label>
                <label>
                    Cédula:
                    <input type="text" name="cedula" value="${usuario.cedula}" required>
                </label>
                <label class="campo-usuario">
                    Usuario:
                    <input type="text" name="nombre_de_usuario" value="${usuario.nombre_de_usuario}" required>
                </label>
                <label class="campo-fecha_de_nacimiento">
                    Fecha de nacimiento:
                    <input type="text" name="fecha_de_nacimiento" value="<fmt:formatDate value='${usuario.fecha_de_nacimiento}' pattern='yyyy-MM-dd' />" required>
                </label>
                <button type="submit">Eliminar información</button>
            </form>
        </c:forEach>
        <p id="volver-panel-administrador"><a href="modulo_admin.jsp">Volver al Panel de Administrador</a></p>
    </section>

    <footer>
        <!-- Aquí va el pie de página -->
    </footer>
</body>
</html>
