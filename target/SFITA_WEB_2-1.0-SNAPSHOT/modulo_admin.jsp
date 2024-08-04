<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel de Administrador - Taller Antonio Piedrahita</title>
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
            top: 3%; /* Ajuste superior a 0 */
            left: 2%; /* Ajuste izquierdo a 0 */
            width: 96%; /* Ancho del 100% */
            height: 85%; /* Altura del 100% */
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
            max-width: 40%; /* Ajusta el ancho máximo de la imagen al tamaño del contenedor */
            height: auto; /* Hace que la altura de la imagen se ajuste automáticamente para mantener la proporción */
            position: absolute; /* Establece la posición absoluta */
            top: 130px; /* Mueve la imagen 50px hacia abajo */
            right: 322px; /* Mueve la imagen 50px hacia la derecha */
            border-radius: 90px;
        }
        header h1 {
            position: absolute; /* Establece la posición absoluta */
            top: -10px; /* Ajusta la posición vertical */
            left: 56%; /* Centra horizontalmente */
            transform: translateX(-50%); /* Centra horizontalmente */
            font-size: 4em; /* Ajusta el tamaño del texto */
            /* Puedes ajustar el tamaño y posición vertical según tus necesidades */
        }
        #panel-administrador {
            max-width: 800px; /* Ancho máximo del contenido */
            margin: 0 auto; /* Centra horizontalmente el contenido */
            text-align: center; /* Alinea el contenido al centro */
        }
        #panel-administrador h1 {
            margin-bottom: 20px; /* Espacio debajo del título */
        }
        .opcion {
            margin-bottom: -30px; /* Espacio entre las opciones */
            text-align: left; /* Alinea el texto a la izquierda */
        }
        .opcion img {
            max-width: 70px; /* Ancho máximo de la imagen */
            height: auto; /* Hace que la altura de la imagen se ajuste automáticamente para mantener la proporción */
            display: block; /* Hace que la imagen se comporte como un bloque */
            margin-bottom: 10px; /* Espacio entre la imagen y el texto */   
            margin-left: 10px; /* Ajusta el margen izquierdo */
            margin-top: 20px; /* Ajusta el margen superior */                 
        }
        .opcion a {
            text-decoration: none; /* Quita el subrayado del enlace */
            color: black; /* Color del texto */
            display: inline-block; /* Hace que el enlace se comporte como un bloque en línea */
            margin-left: -200px; /* Ajusta el margen izquierdo */
            margin-top: 30px; /* Ajusta el margen superior */
            vertical-align: top;
        }
        #enlaces-inferiores {
            display: flex; /* Establece el contenedor como flexible */
            justify-content: flex-end; /* Centra los elementos horizontalmente */
        }
        #enlaces-inferiores .opcion:first-child {
            margin-right: 350px; /* Espacio entre el primer enlace y los otros */
        }
        #enlaces-inferiores .opcion:last-child {
            margin-right: -200px; /* Elimina el margen derecho del último enlace */
        }
        #enlaces-inferiores .opcion:not(:last-child) a {
            margin-right: 20px; /* Espacio entre los enlaces */
        }
        #enlaces-inferiores .opcion:last-child p {
            margin-left: 4px; /* Ajusta el margen izquierdo solo para el texto del enlace de Reportes */            
        }
        #enlaces-inferiores .opcion:nth-last-child(2) p {
            margin-left: 20px; /* Ajusta el margen izquierdo solo para el texto del enlace de Configuración */
        }
        #enlaces-inferiores .opcion:last-child img {
            margin-top: -259px; /* Ajusta el margen superior solo para la imagen del enlace de Reportes */            
        }
        #enlaces-inferiores .opcion:nth-last-child(2) img {
            margin-top: -259px; /* Ajusta el margen superior solo para la imagen del enlace de Configuración */
        }   
    </style>    
</head>
<body>
    <!-- Cabecera del documento -->
    <header>
        <!-- Imagen del logo del Taller Antonio Piedrahita -->
        <img src="imagenes\logo_taller.jpg" alt="Logo Taller Antonio Piedrahita">
        <!-- Título de la página, centrado en la cabecera -->
        <h1>Administrador</h1>
    </header>
    
    <!-- Sección principal del panel de administrador -->
    <section id="panel-administrador">
        <!-- Opción para gestionar usuarios -->
        <div class="opcion">
            <a href="gestion_usuarios.jsp">
                <img src="imagenes\imagen_gestion_usuarios.png" alt="Gestión de Usuarios">
                <p>Gestión de Usuarios</p>
            </a>
        </div>
        <!-- Opción para gestionar clientes -->
        <div class="opcion">
            <a href="gestion_clientes.jsp">
                <img src="imagenes\imagen_gestion_clientes.png" alt="Gestión de Clientes">
                <p>Gestión de Clientes</p>
            </a>
        </div>
        <!-- Opción para gestionar productos -->
        <div class="opcion">
            <a href="gestion_productos.jsp">
                <img src="imagenes\imagen_gestion_productos.png" alt="Gestión de Productos">
                <p>Gestión de Productos</p>
            </a>
        </div>
        <!-- Opción para gestionar servicios -->
        <div class="opcion">
            <a href="gestion_servicios.jsp">
                <img src="imagenes\imagen_gestion_servicios.png" alt="Gestión de Servicios">
                <p>Gestión de Servicios</p>
            </a>
        </div>
        <!-- Opción para gestionar ventas -->
        <div class="opcion">
            <a href="gestion_ventas.jsp">
                <img src="imagenes\imagen_gestion_ventas.png" alt="Gestión de Ventas">
                <p>Gestión de Ventas</p>
            </a>
        </div>
        <!-- Sección para enlaces inferiores con reportes y configuración -->
        <div id="enlaces-inferiores">
            <!-- Opción para ver reportes -->
            <div class="opcion">
                <a href="reportes.jsp">
                    <img src="imagenes\imagen_reportes.png" alt="Reportes">
                    <p>Reportes</p>
                </a>
            </div>
            <!-- Opción para configuración -->
            <div class="opcion">
                <a href="configuracion_2.jsp">
                    <img src="imagenes\boton_configuracion.png" alt="Configuración">
                    <p>Configuración</p>
                </a>
            </div>
        </div>
    </section>
    
    <!-- Pie de página, actualmente vacío -->
    <footer>
        <!-- Aquí va el pie de página -->
    </footer>
    
    <!-- Script para ajustar la posición del enlace de "Gestión de Ventas" -->
    <script>
        // Selecciona el enlace de "Gestión de Ventas"
        var gestionVentas = document.querySelector('a[href="gestion_ventas.jsp"]');
        // Mueve el enlace hacia arriba y hacia la derecha
        gestionVentas.style.position = 'relative';
        gestionVentas.style.top = '-140px';
        gestionVentas.style.left = '300px';
    </script>
</body>