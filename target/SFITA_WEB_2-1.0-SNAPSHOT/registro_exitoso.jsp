<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Configura el lenguaje de la página como Java, establece el tipo de contenido como HTML con codificación UTF-8 -->

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <!-- Establece la codificación de caracteres de la página como UTF-8 -->

    <meta http-equiv="refresh" content="3; URL=index.html">
    <!-- Redirige a index.html después de 3 segundos -->
    
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Configura la vista para dispositivos móviles, estableciendo el ancho de la ventana de visualización al ancho del dispositivo -->

    <title>Registro Exitoso - Taller Antonio Piedrahita</title>
    <!-- Título de la página que se muestra en la pestaña del navegador -->

    <style>
        /* Estilos CSS en línea */
        body {
            position: relative; /* Define la posición relativa del cuerpo del documento */
            margin: 0; /* Elimina el margen predeterminado del cuerpo */
            padding: 0; /* Elimina el relleno predeterminado del cuerpo */
            background-color: #E6DDDD; /* Establece el color de fondo del cuerpo */
            text-align: center; /* Alinea el contenido del cuerpo al centro horizontalmente */
        }
        body::before {
            content: ''; /* Agrega un pseudo-elemento vacío antes del contenido del cuerpo */
            position: absolute; /* Posiciona el pseudo-elemento de forma absoluta */
            top: -125px; /* Posiciona el pseudo-elemento 125px por encima del borde superior del cuerpo */
            left: 20px; /* Posiciona el pseudo-elemento 20px a la izquierda del borde del cuerpo */
            width: 96.5%; /* Establece el ancho del pseudo-elemento */
            height: 190%; /* Establece la altura del pseudo-elemento */
            background-color: #DFDEDE; /* Establece el color de fondo del pseudo-elemento */
            border: 3px solid #707070; /* Agrega un borde sólido al pseudo-elemento */
            z-index: -1; /* Coloca el pseudo-elemento detrás del contenido principal */
        }      
        h1, #mensajeRegistroExitoso {
            font-size: 70px; /* Establece el tamaño de la fuente para h1 y el div con id mensajeRegistroExitoso */
            margin-top: 150px; /* Establece un margen superior de 150px para centrar verticalmente el contenido */
        }
    </style>
</head>
<body>
    <h1>Registro Exitoso</h1> 
    <!-- Encabezado principal que indica que el registro fue exitoso -->
    
    <div id="mensajeRegistroExitoso">¡Tu registro ha sido exitoso!</div>
    <!-- Mensaje adicional que confirma el éxito del registro -->
</body>
</html>
