<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Búsqueda de Usuario - Taller Antonio Piedrahita</title>
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
            top: -10%; /* Ajuste superior a 0 */
            left: 2%; /* Ajuste izquierdo a 0 */
            width: 96%; /* Ancho del 100% */
            height: 130%; /* Altura del 100% */
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
            max-width: 30%; 
            height: auto; 
            margin: 0 auto; 
            display: block; 
        }
        #busqueda-usuario {
            max-width: 400px; 
            margin: 85px auto 0; 
            text-align: center;
        }
        #busqueda-usuario label {
            display: block; 
            margin-bottom: 10px; 
        }
        #busqueda-usuario input {
            width: 100%; 
            padding: 8px; 
            margin-bottom: 10px; 
            box-sizing: border-box; 
        }
        #busqueda-usuario button {
            padding: 10px 20px; 
            background-color: #44D257; 
            color: black; /* Color del texto del botón */
            border: #707070; /* Sin borde */
            border-radius: 5px; /* Borde redondeado */
            cursor: pointer; /* Cambia el cursor al pasar sobre el botón */
        }
        #busqueda-usuario button:hover {
            background-color: #44D257; /* Cambia el color de fondo al pasar sobre el botón */
        }
        #titulo-busqueda {
            font-size: 24px;
            margin-top: 10px;
        }
        #busqueda-usuario img {
            max-width: 250px;
        }
    </style>
</head>
<body>
        
    <section id="busqueda-usuario">
        <img src="imagenes\imagen_busqueda_usuario.png" alt="Búsqueda de Usuario">
        <h2 id="titulo-busqueda">Usuario empleado</h2>
        <form action="/SFITA_WEB_2/consulta_servlet" method="get">
            <input type="text" id="nombre_de_usuario" name="nombre_de_usuario" required>
            <button type="submit">Buscar</button>
        </form>
        <p><a href="modulo_admin.jsp">Volver al Panel de Administrador</a></p> <!-- Enlace para regresar al panel de administrador -->
    </section>
    
    <footer>
        <!-- Aquí va el pie de página -->
    </footer>
</body>
</html>

