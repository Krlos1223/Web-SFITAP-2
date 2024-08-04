<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Usuarios</title>
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
            top: -30%; /* Ajuste superior a 0 */
            left: 2%; /* Ajuste izquierdo a 0 */
            width: 96%; /* Ancho del 100% */
            height: 200%; /* Altura del 100% */
            background-color: #DFDEDE; /* Color de la segunda capa */
            border: 3px solid #707070; /* Borde sólido de 5px de ancho con color #707070 */
            z-index: -1; /* Coloca la capa detrás de todo */
        }      
    </style>
    <style>
        header {
            text-align: center;
            margin-bottom: 20px; /* Espacio debajo del encabezado */
        }
        #titulo {
            font-size: 50px; /* Tamaño del título */
            text-align: center; /* Centrar el título */
            margin-bottom: 100px; /* Espacio debajo del título */
            margin-top: 100px;
        }
        .opciones {
            display: flex; /* Mostrar las opciones en línea */
            justify-content: space-between; /* Espaciar uniformemente las opciones */
            margin-bottom: 20px; /* Espacio debajo de las opciones */
        }
        .opcion {
            flex-basis: 30%; /* Ancho de cada opción */
            text-align: center; /* Alinear el texto al centro */
        }
        .opcion p {
            margin: 0; /* Eliminar el margen del párrafo */
        }
        .opcion img {
            max-width: 100px; /* Ancho máximo de la imagen */
            height: auto; /* Altura automática para mantener la proporción */
            display: block; /* Hacer que la imagen sea un bloque */
            margin: 0 auto 10px; /* Margen inferior y centralización horizontal */
        }
        .opcion a{
            text-decoration: none; /* Elimina el subrayado de los enlaces */
            font-size: 20px; /* Cambia el tamaño del texto de los enlaces */
            color: black;
        }
    </style>
</head>
<body>
    <header>
        <h1 id="titulo">Gestión de Usuarios</h1>
    </header>
    
    <section id="panel-administrador">
        <div class="opciones">
            <div class="opcion">
                <a href="registro.jsp">
                    <img src="imagenes\imagen_agregar_usuario.png" alt="Agregar Usuario">
                    <p>Agregar Usuario</p>
                </a>
            </div>
            <div class="opcion">
                <a href="buscar_editar_usuario.jsp">
                    <img src="imagenes\imagen_editar_usuario.png" alt="Editar Usuario">
                    <p>Editar Usuario</p>
                </a>
            </div>
            <div class="opcion">
                <a href="buscar_eliminar_usuario.jsp">
                    <img src="imagenes\imagen_eliminar_usuario.png" alt="Eliminar Usuario">
                    <p>Eliminar Usuario</p>
                </a>
            </div>
        </div>
    </section>
    
    <footer>
        <!-- Aquí va el pie de página -->
    </footer>
</body>
</html>




