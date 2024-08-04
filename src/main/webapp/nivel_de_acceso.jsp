<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8"> <!-- Establece la codificación de caracteres de la página como UTF-8 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  <!-- Configura la vista para dispositivos móviles, estableciendo el ancho de la ventana de visualización al ancho del dispositivo -->
    <title>Selecciona tu Perfil - Taller Antonio Piedrahita</title> <!-- Título de la página que se muestra en la pestaña del navegador -->
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
            height: 140%; /* Altura del 100% */
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
        #seleccion-perfil {
            max-width: 600px; /* Ancho máximo del contenido */
            margin: 0 auto; /* Centra horizontalmente el contenido */
            text-align: center; /* Alinea el contenido al centro */
        }
        .perfil {
            display: inline-block; /* Hace que los elementos se muestren en línea */
            margin: 20px; /* Espacio entre los perfiles */
            vertical-align: top;    
        }        
        .perfil img {
            max-width: 150px; /* Ancho máximo de la imagen del perfil */
            height: auto; /* Hace que la altura de la imagen se ajuste automáticamente para mantener la proporción */
            display: block; /* Hace que la imagen se comporte como un bloque */
            margin-bottom: 10px; /* Espacio entre la imagen y el nombre del perfil */
        }
        .perfil a {
            text-decoration: none; /* Elimina el subrayado de los enlaces */
            font-size: 20px; /* Cambia el tamaño del texto de los enlaces */
            color: black;
        }
    </style>
</head>
<body>
    <header>
        <img src="imagenes/logo_taller.jpg" alt="Logo Taller Antonio Piedrahita">
        <!-- Imagen del encabezado con el logo del taller -->
    </header>
    
    <section id="seleccion-perfil">
        <h1>Selecciona tu Perfil</h1>
        <!-- Encabezado principal de la sección de selección de perfil -->
        
        <div class="perfil">
            <a href="Ingresar.jsp">
                <img src="imagenes/imagen_administrador.png" alt="Administrador">
                <p>Administrador</p>
            </a>
            <!-- Enlace a la página de ingreso para Administrador, con imagen y texto descriptivo -->
        </div>
        <div class="perfil">
            <a href="ingresar_vendedor.jsp">
                <img src="imagenes/imagen_vendedor.png" alt="Vendedor">
                <p>Vendedor</p>
            </a>
            <!-- Enlace a la página de ingreso para Vendedor, con imagen y texto descriptivo -->
        </div>
        <div class="perfil">
            <a href="ingresar_mecanico.jsp">
                <img src="imagenes/imagen_mecanico.png" alt="Mecánico">
                <p>Mecánico</p>
            </a>
            <!-- Enlace a la página de ingreso para Mecánico, con imagen y texto descriptivo -->
        </div>
    </section>
    
    <footer>
        <!-- Aquí va el pie de página -->
    </footer>
</body>
</html>
