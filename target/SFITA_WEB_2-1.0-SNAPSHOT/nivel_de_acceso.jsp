<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Selecciona tu Perfil - Taller Antonio Piedrahita</title>
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
            top: 5%; /* Ajuste superior a 0 */
            left: 2%; /* Ajuste izquierdo a 0 */
            width: 96%; /* Ancho del 100% */
            height: 140%; /* Altura del 100% */
            background-color: #DFDEDE; /* Color de la segunda capa */
            border: 3px solid #707070; /* Borde s�lido de 5px de ancho con color #707070 */
            z-index: -1; /* Coloca la capa detr�s de todo */
        }      
    </style>
    <style>
        header {
            text-align: center;
        }
        header img {
            max-width: 30%; /* Ajusta el ancho m�ximo de la imagen al tama�o del contenedor */
            height: auto; /* Hace que la altura de la imagen se ajuste autom�ticamente para mantener la proporci�n */
            margin: 0 auto; /* Centra horizontalmente la imagen */
            display: block; /* Hace que la imagen se comporte como un bloque */
            border-radius: 60px;
        }
        #seleccion-perfil {
            max-width: 600px; /* Ancho m�ximo del contenido */
            margin: 0 auto; /* Centra horizontalmente el contenido */
            text-align: center; /* Alinea el contenido al centro */
        }
        .perfil {
            display: inline-block; /* Hace que los elementos se muestren en l�nea */
            margin: 20px; /* Espacio entre los perfiles */
            vertical-align: top;    
        }        
        .perfil img {
            max-width: 150px; /* Ancho m�ximo de la imagen del perfil */
            height: auto; /* Hace que la altura de la imagen se ajuste autom�ticamente para mantener la proporci�n */
            display: block; /* Hace que la imagen se comporte como un bloque */
            margin-bottom: 10px; /* Espacio entre la imagen y el nombre del perfil */
        }
        .perfil a {
            text-decoration: none; /* Elimina el subrayado de los enlaces */
            font-size: 20px; /* Cambia el tama�o del texto de los enlaces */
            color: black;
        }
    </style>
</head>
<body>
    <header>
        <img src="imagenes\logo_taller.jpg" alt="Logo Taller Antonio Piedrahita">
    </header>
    
    <section id="seleccion-perfil">
        <h1>Selecciona tu Perfil</h1>
        <div class="perfil">
            <a href="Ingresar.jsp">
                <img src="imagenes\imagen_administrador.png" alt="Administrador">
                <p>Administrador</p>
            </a>
        </div>
        <div class="perfil">
            <a href="ingresar_vendedor.jsp">
                <img src="imagenes\imagen_vendedor.png" alt="Vendedor">
                <p>Vendedor</p>
            </a>
        </div>
        <div class="perfil">
            <a href="ingresar_mecanico.jsp">
                <img src="imagenes\imagen_mecanico.png" alt="Mec�nico">
                <p>Mec�nico</p>
            </a>
        </div>
    </section>
    
    <footer>
        <!-- Aqu� va el pie de p�gina -->
    </footer>
</body>
</html>
