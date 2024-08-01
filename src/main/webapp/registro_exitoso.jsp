<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="refresh" content="3; URL=index.html"> <!-- Redirige a index.html después de 3 segundos -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro Exitoso - Taller Antonio Piedrahita</title>
    <style>
        /* Estilos CSS en línea */
        body {
            position: relative; /* Establece el cuerpo como relativo */
            margin: 0; /* Elimina el margen predeterminado del body */
            padding: 0; /* Elimina el relleno predeterminado del body */
            background-color: #E6DDDD; /* Color de fondo */
            text-align: center; /* Alinea el contenido al centro horizontalmente */
        }
        body::before {
            content: ''; /* Contenido vacío */
            position: absolute; /* Posicionamiento absoluto */
            top: -125px; /* Ajuste superior */
            left: 20px; /* Ajuste izquierdo */
            width: 96.5%; /* Ancho */
            height: 190%; /* Altura */
            background-color: #DFDEDE; /* Color de fondo */
            border: 3px solid #707070; /* Borde */
            z-index: -1; /* Coloca la capa detrás de todo */
        }      
        h1, #mensajeRegistroExitoso {
            font-size: 70px; /* Tamaño de la fuente */
            margin-top: 150px; /* Ajusta el margen superior para centrarlo verticalmente */
        }
    </style>
</head>
<body>
    <h1>Registro Exitoso</h1>
    <div id="mensajeRegistroExitoso">¡Tu registro ha sido exitoso!</div>
</body>
</html>
