<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gesti�n de Usuarios</title>
    <link rel="stylesheet" href="styles.css"> <!-- Estilos CSS -->
    <style>
        body {
            position: relative; /* Establece el cuerpo como relativo */
            margin: 0; /* Elimina el margen predeterminado del body */
            padding: 0; /* Elimina el relleno predeterminado del body */
            background-color: #E6DDDD;
        }
        body::before {
            content: ''; /* Contenido vac�o */
            position: absolute; /* Posicionamiento fijo */
            top: -30%; /* Ajuste superior a 0 */
            left: 2%; /* Ajuste izquierdo a 0 */
            width: 96%; /* Ancho del 100% */
            height: 200%; /* Altura del 100% */
            background-color: #DFDEDE; /* Color de la segunda capa */
            border: 3px solid #707070; /* Borde s�lido de 5px de ancho con color #707070 */
            z-index: -1; /* Coloca la capa detr�s de todo */
        }      
    </style>
    <style>
        header {
            text-align: center;
            margin-bottom: 20px; /* Espacio debajo del encabezado */
        }
        #titulo {
            font-size: 50px; /* Tama�o del t�tulo */
            text-align: center; /* Centrar el t�tulo */
            margin-bottom: 100px; /* Espacio debajo del t�tulo */
            margin-top: 100px;
        }
        .opciones {
            display: flex; /* Mostrar las opciones en l�nea */
            justify-content: space-between; /* Espaciar uniformemente las opciones */
            margin-bottom: 20px; /* Espacio debajo de las opciones */
        }
        .opcion {
            flex-basis: 30%; /* Ancho de cada opci�n */
            text-align: center; /* Alinear el texto al centro */
        }
        .opcion p {
            margin: 0; /* Eliminar el margen del p�rrafo */
        }
        .opcion img {
            max-width: 100px; /* Ancho m�ximo de la imagen */
            height: auto; /* Altura autom�tica para mantener la proporci�n */
            display: block; /* Hacer que la imagen sea un bloque */
            margin: 0 auto 10px; /* Margen inferior y centralizaci�n horizontal */
        }
        .opcion a{
            text-decoration: none; /* Elimina el subrayado de los enlaces */
            font-size: 20px; /* Cambia el tama�o del texto de los enlaces */
            color: black;
        }
    </style>
</head>
<body>
    <header>
        <h1 id="titulo">Gesti�n de Usuarios</h1>
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
        <!-- Aqu� va el pie de p�gina -->
    </footer>
</body>
</html>




