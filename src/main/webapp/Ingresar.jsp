<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Iniciar Sesión - Taller Antonio Piedrahita</title>
    <link rel="stylesheet" href="styles.css"> <!-- Estilos CSS -->
    <style>
        body {
            position: relative; /* Establece el cuerpo como relativo */
            margin: 0; /* Elimina el margen predeterminado del body */
            padding: 0; /* Elimina el relleno predeterminado del body */
            background-color: #E6DDDD;
        }
        body::before {
            content: ''; /* Contenido vacío */
            position: absolute; /* Posicionamiento fijo */
            top: 5%; /* Ajuste superior a 0 */
            left: 2%; /* Ajuste izquierdo a 0 */
            width: 96%; /* Ancho del 100% */
            height: 105%; /* Altura del 100% */
            background-color: #DFDEDE; /* Color de la segunda capa */
            border: 3px solid #707070; /* Borde sólido de 5px de ancho con color #707070 */
            z-index: -1; /* Coloca la capa detrás de todo */
        }      
    </style>
    <style>
        header {
            text-align: center;
        }
        header img {
            max-width: 30%; /* Ajusta el ancho máximo de la imagen al tamaño del contenedor */
            height: auto; /* Hace que la altura de la imagen se ajuste automáticamente para mantener la proporción */
            margin: 0 auto; /* Centra horizontalmente la imagen */
            display: block; /* Hace que la imagen se comporte como un bloque */
            border-radius: 60px;
        }
        #inicio-sesion {
            max-width: 400px; /* Ancho máximo del formulario */
            margin: 0 auto; /* Centra horizontalmente el formulario */
            text-align: center; /* Alinea el contenido al centro */
        }
        #inicio-sesion label {
            display: block; /* Convierte las etiquetas en bloques para mostrarlas en líneas separadas */
            margin-bottom: 10px; /* Espacio entre las etiquetas y los campos de entrada */
        }
        #inicio-sesion input {
            width: 100%; /* Ocupa todo el ancho disponible */
            padding: 8px; /* Espacio interno del campo de entrada */
            margin-bottom: 15px; /* Espacio entre los campos de entrada */
            box-sizing: border-box; /* Incluye el ancho del borde y el relleno en la anchura total */
        }
        #inicio-sesion button {
            padding: 10px 10px; /* Espacio interno del botón */
            background-color: #44D257; /* Color de fondo del botón */
            color: white; /* Color del texto del botón */
            border: none; /* Sin borde */
            border-radius: 5px; /* Borde redondeado */
            cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
        }
        #inicio-sesion button:hover {
            background-color: #44D257; /* Cambia el color de fondo al pasar sobre el botón */
        }
    </style>
</head>
<body>
    <header>
        <img src="imagenes\logo_taller.jpg" alt="Logo Taller Antonio Piedrahita">
    </header>
    
    <section id="inicio-sesion">
        <h1>Iniciar Sesión</h1>
        <form action="modulo_admin.jsp" method="post">
            <label for="usuario">Usuario:</label>
            <input type="text" id="usuario" name="usuario" required>
            
            <label for="contrasena">Contraseña:</label>
            <input type="password" id="contrasena" name="contrasena" required>

            <a href="recuperar_contrasena.jsp">¿Olvidaste tu contraseña?</a><br>
            <a href="recuperar_usuario.jsp">¿Olvidaste tu usuario?</a><br>
            
            <a href="admin.jsp"><button type="submit">Ingresar</button></a>
        </form>
        <p><a href="index.jsp">Volver al inicio</a></p>
    </section>
    
    <footer>
        <!-- Aquí va el pie de página -->
    </footer>
</body>
</html>