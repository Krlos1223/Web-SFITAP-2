<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> <!-- Importa la biblioteca JSTL core para uso de etiquetas como c:forEach y c:if -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> <!-- Importa la biblioteca JSTL fmt para formateo de fechas y n�meros -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"> <!-- Establece la codificaci�n de caracteres para la p�gina -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0"> <!-- Configura la vista para dispositivos m�viles -->
    <title>Resultados de B�squeda</title> <!-- T�tulo de la p�gina que se muestra en la pesta�a del navegador -->
    <link rel="stylesheet" href="styles.css"> <!-- Vincula la hoja de estilos externa -->
    <style>
        body {
            position: relative; /* Define la posici�n relativa del cuerpo del documento para el uso de pseudo-elementos */
            margin: 0; /* Elimina el margen predeterminado del navegador */
            padding: 0; /* Elimina el relleno predeterminado del navegador */
            background-color: #E6DDDD; /* Establece el color de fondo de la p�gina */
        }
        body::before {
            content: ''; /* Agrega un pseudo-elemento antes del contenido del cuerpo */
            position: absolute; /* Posiciona el pseudo-elemento de forma absoluta en relaci�n con el cuerpo */
            top: 5%; /* Posiciona el pseudo-elemento 5% desde el borde superior del cuerpo */
            left: 2%; /* Posiciona el pseudo-elemento 2% desde el borde izquierdo del cuerpo */
            width: 96%; /* Establece el ancho del pseudo-elemento */
            height: 97%; /* Establece la altura del pseudo-elemento */
            background-color: #DFDEDE; /* Establece el color de fondo del pseudo-elemento */
            border: 3px solid #707070; /* Agrega un borde s�lido al pseudo-elemento */
            z-index: -1; /* Coloca el pseudo-elemento detr�s del contenido principal */
        }
        header {
            text-align: center; /* Centra el contenido dentro del encabezado */
        }
        header img {
            max-width: 30%; /* Establece el ancho m�ximo de la imagen en el encabezado */
            height: auto; /* Mantiene la relaci�n de aspecto de la imagen */
            margin: 0 auto; /* Centra la imagen horizontalmente */
            display: block; /* Asegura que la imagen se muestre como un bloque */
            border-radius: 60px; /* Aplica un radio de borde para redondear las esquinas de la imagen */
        }
        #formulario-eliminar {
            max-width: 300px; /* Establece el ancho m�ximo del formulario de eliminaci�n */
            margin: 0 auto; /* Centra el formulario horizontalmente */
            text-align: left; /* Alinea el texto del formulario a la izquierda */
            position: relative; /* Define la posici�n relativa del formulario */
        }
        #formulario-eliminar label {
            display: block; /* Hace que las etiquetas se comporten como bloques */
            margin-bottom: 10px; /* Establece el margen inferior entre las etiquetas */
            text-align: center; /* Centra el texto de las etiquetas */
            position: relative; /* Define la posici�n relativa de las etiquetas para permitir el posicionamiento absoluto de los elementos hijos */
        }
        #formulario-eliminar img {
            width: 20px; /* Establece el ancho de las im�genes dentro del formulario */
            height: 20px; /* Establece la altura de las im�genes dentro del formulario */
            position: absolute; /* Posiciona la imagen de forma absoluta dentro de la etiqueta */
            left: -10px; /* Posiciona la imagen 10px a la izquierda del borde de la etiqueta */
            top: 50%; /* Posiciona la imagen en el centro vertical de la etiqueta */
            transform: translateY(-50%); /* Ajusta la imagen para centrarla verticalmente */
        }
        #formulario-eliminar input, #formulario-eliminar select {
            width: calc(100% - 30px); /* Establece el ancho de los campos de entrada y selecci�n, teniendo en cuenta el relleno */
            padding: 5px; /* Establece el relleno interno de los campos */
            margin-bottom: 15px; /* Establece el margen inferior entre los campos */
            box-sizing: border-box; /* Incluye el relleno y el borde en el c�lculo del ancho y la altura del campo */
            vertical-align: middle; /* Alinea verticalmente el contenido dentro del campo */
            padding-left: 20px; /* Establece el relleno izquierdo de los campos */
        }
        #formulario-eliminar button {
            padding: 10px 20px; /* Establece el relleno del bot�n */
            background-color: #44D257; /* Establece el color de fondo del bot�n */
            color: black; /* Establece el color del texto del bot�n */
            border: #707070; /* Establece el color del borde del bot�n */
            border-radius: 5px; /* Aplica un radio de borde para redondear las esquinas del bot�n */
            cursor: pointer; /* Cambia el cursor a una mano cuando se pasa sobre el bot�n */
            display: block; /* Hace que el bot�n se muestre como un bloque */
            margin: 0 auto; /* Centra el bot�n horizontalmente */
            margin-top: -60px; /* Ajusta el margen superior del bot�n para posicionarlo correctamente */
        }
        #formulario-eliminar button:hover {
            background-color: #44D257; /* Establece el color de fondo del bot�n cuando se pasa el rat�n sobre �l */
        }
        .campo-usuario {
            position: absolute; /* Posiciona el campo de usuario de forma absoluta dentro del formulario */
            right: -210px; /* Posiciona el campo 210px a la derecha del borde del formulario */
            top: -72px; /* Posiciona el campo 72px por encima del borde superior del formulario */
            margin-left: 150px; /* Establece el margen izquierdo del campo */
        }
        .campo-fecha_de_nacimiento {
            position: relative; /* Define la posici�n relativa del campo de fecha de nacimiento */
            right: inherit; /* Hereda la posici�n derecha de los elementos padres */
            top: -65px; /* Posiciona el campo 65px por encima del borde superior del formulario */
            margin-left: auto; /* Establece el margen izquierdo autom�tico para centrar el campo */
        }
        #volver-panel-administrador {
            text-align: center; /* Centra el texto del enlace para volver al panel administrador */
        }
    </style>
</head>
<body>
    <header>
        <img src="imagenes/logo_taller.jpg" alt="Logo Taller Antonio Piedrahita"> <!-- Muestra el logotipo del taller -->
    </header>

    <section id="formulario-eliminar">
        <!-- Itera sobre la lista de usuarios y genera un formulario para cada uno -->
        <c:forEach var="usuario" items="${usuarios}">
            <form action="eliminar_servlet?nombre_de_usuario=${usuario.nombre_de_usuario}" method="post">
                <input type="hidden" name="usuario_id" value="${usuario.usuario_id}"> <!-- Campo oculto para almacenar el ID del usuario -->
                <label>
                    Nombre del empleado:
                    <input type="text" name="nombre" value="${usuario.nombre}" required> <!-- Campo de entrada para el nombre del empleado -->
                </label>
                <label>
                    Apellido del empleado:
                    <input type="text" name="apellido" value="${usuario.apellido}" required> <!-- Campo de entrada para el apellido del empleado -->
                </label>
                <label>
                    Rol:
                    <select name="rol" required> <!-- Lista desplegable para seleccionar el rol del usuario -->
                        <option value="Administrador" <c:if test="${usuario.rol == 'Administrador'}">selected</c:if>>Administrador</option> <!-- Opci�n para Administrador -->
                        <option value="Vendedor" <c:if test="${usuario.rol == 'Vendedor'}">selected</c:if>>Vendedor</option> <!-- Opci�n para Vendedor -->
                        <option value="Mecanico" <c:if test="${usuario.rol == 'Mecanico'}">selected</c:if>>Mec�nico</option> <!-- Opci�n para Mec�nico -->
                    </select>
                </label>
                <label>
                    C�dula:
                    <input type="text" name="cedula" value="${usuario.cedula}" required> <!-- Campo de entrada para la c�dula del usuario -->
                </label>
                <label class="campo-usuario">
                    Usuario:
                    <input type="text" name="nombre_de_usuario" value="${usuario.nombre_de_usuario}" required> <!-- Campo de entrada para el nombre de usuario -->
                </label>
                <label class="campo-fecha_de_nacimiento">
                    Fecha de nacimiento:
                    <input type="text" name="fecha_de_nacimiento" value="<fmt:formatDate value='${usuario.fecha_de_nacimiento}' pattern='yyyy-MM-dd' />" required> <!-- Campo de entrada para la fecha de nacimiento, formateado a 'yyyy-MM-dd' -->
                </label>
                <button type="submit">Eliminar informaci�n</button> <!-- Bot�n para enviar el formulario -->
            </form>
        </c:forEach>
        <p id="volver-panel-administrador"><a href="modulo_admin.jsp">Volver al Panel de Administrador</a></p> <!-- Enlace para regresar al panel de administraci�n -->
    </section>

    <footer>
        <!-- Aqu� va el pie de p�gina -->
    </footer>
</body>
</html>
