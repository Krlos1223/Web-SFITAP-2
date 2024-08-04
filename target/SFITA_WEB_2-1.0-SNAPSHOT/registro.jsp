<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Taller Antonio Piedrahita</title>
    <link rel="stylesheet" href="styles.css"> <!-- Enlace al archivo CSS para estilos -->
    <style>
        /* Estilos CSS en l�nea */
        body {
            position: relative;
            margin: 0;
            padding: 0;
            background-color: #E6DDDD; /* Color de fondo */
        }
        body::before {
            /* Elemento decorativo detr�s del cuerpo */
            content: '';
            position: absolute;
            top: -2%;
            left: 2%;
            width: 96%;
            height: 102%;
            background-color: #DFDEDE;
            border: 3px solid #707070;
            z-index: -1;
        }
        #registro {
            max-width: 400px; /* Ancho m�ximo del formulario */
            margin: 30px auto 0; /* Centrado del formulario */
            text-align: center; /* Texto centrado */
        }
        #registro label {
            display: block; /* Cada etiqueta en una nueva l�nea */
            margin-bottom: 10px; /* Espacio debajo de cada etiqueta */
        }
        #registro input, #registro select {
            width: 100%; /* Los campos ocupan el ancho completo */
            padding: 8px; /* Espaciado interno */
            margin-bottom: 15px; /* Espacio debajo de cada campo */
            box-sizing: border-box; /* Incluye el padding en el ancho */
        }
        #registro button {
            padding: 10px 20px; /* Espaciado interno del bot�n */
            background-color: #44D257; /* Color de fondo del bot�n */
            color: black; /* Color del texto del bot�n */
            border: #707070; /* Borde del bot�n */
            border-radius: 5px; /* Esquinas redondeadas */
            cursor: pointer; /* Cambia el cursor al pasar sobre el bot�n */
        }
        #registro button:hover {
            background-color: #44D257; /* Color de fondo al pasar el rat�n */
        }
        #registro p {
            margin-top: 1px; /* Espacio encima del p�rrafo */
        }
    </style>
</head>
<body>
    <!-- Secci�n del formulario de registro -->
    <section id="registro">
        <h1>Registro</h1> <!-- T�tulo de la p�gina -->
        <form action="servlet_insert" method="post"> <!-- Formulario que env�a datos al servlet -->
            <label for="nombre">Nombre:</label> <!-- Etiqueta para el campo nombre -->
            <input type="text" id="nombres" name="nombres" required> <!-- Campo de entrada para el nombre -->

            <label for="apellido">Apellido:</label> <!-- Etiqueta para el campo apellido -->
            <input type="text" id="apellidos" name="apellidos" required> <!-- Campo de entrada para el apellido -->

            <label for="cedula">C�dula:</label> <!-- Etiqueta para el campo c�dula -->
            <input type="text" id="cedula" name="cedula" required> <!-- Campo de entrada para la c�dula -->

            <label for="fecha_nacimiento">Fecha de Nacimiento:</label> <!-- Etiqueta para el campo fecha de nacimiento -->
            <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required> <!-- Campo de entrada para la fecha de nacimiento -->

            <label for="rol">Rol:</label> <!-- Etiqueta para el campo rol -->
            <select id="rol" name="rol" required> <!-- Men� desplegable para seleccionar el rol -->
                <option value="administrador">Administrador</option>
                <option value="mecanico">Mec�nico</option>
                <option value="vendedor">Vendedor</option>
            </select>

            <label for="nombre de usuario">Nombre de usuario:</label> <!-- Etiqueta para el campo nombre de usuario -->
            <input type="text" id="nombre_de_usuario" name="nombre_de_usuario" required> <!-- Campo de entrada para el nombre de usuario -->

            <label for="password">Contrase�a:</label> <!-- Etiqueta para el campo contrase�a -->
            <input type="password" id="contrase�a" name="contrase�a" required> <!-- Campo de entrada para la contrase�a -->

            <button type="submit">Registrarse</button> <!-- Bot�n para enviar el formulario -->
        </form>
        <p><a href="index.html">Salir</a></p> <!-- Enlace para volver al panel de administrador -->
    </section>
    
    <footer>
        <!-- Aqu� va el pie de p�gina -->
    </footer>
</body>
</html>
