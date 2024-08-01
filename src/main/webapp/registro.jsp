<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Taller Antonio Piedrahita</title>
    <link rel="stylesheet" href="styles.css"> <!-- Estilos CSS -->
    <style>
        body {
            position: relative;
            margin: 0;
            padding: 0;
            background-color: #E6DDDD;
        }
        body::before {
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
            max-width: 400px;
            margin: 30px auto 0;
            text-align: center;
        }
        #registro label {
            display: block;
            margin-bottom: 10px;
        }
        #registro input, #registro select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }
        #registro button {
            padding: 10px 20px;
            background-color: #44D257;
            color: black;
            border: #707070;
            border-radius: 5px;
            cursor: pointer;
        }
        #registro button:hover {
            background-color: #44D257;
        }
        #registro p {
            margin-top: 1px;
        }
    </style>
</head>
<body>
    <section id="registro">
        <h1>Registro</h1>
        <form action="servlet_insert" method="post">
            <label for="nombre">Nombre:</label>
            <input type="text" id="nombres" name="nombres" required>
            
            <label for="apellido">Apellido:</label>
            <input type="text" id="apellidos" name="apellidos" required>
            
            <label for="cedula">C�dula:</label>
            <input type="text" id="cedula" name="cedula" required>
            
            <label for="fecha_nacimiento">Fecha de Nacimiento:</label>
            <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required>
            
            <label for="rol">Rol:</label>
            <select id="rol" name="rol" required>
                <option value="administrador">Administrador</option>
                <option value="mecanico">Mec�nico</option>
                <option value="vendedor">Vendedor</option>
            </select>

            <label for="nombre de usuario">Nombre de usuario:</label>
            <input type="text" id="nombre_de_usuario" name="nombre_de_usuario" required>

            <label for="password">Contrase�a:</label>
            <input type="password" id="contrase�a" name="contrase�a" required>
            
            <button type="submit">Registrarse</button>
        </form>
        <p><a href="registro_exitoso.jsp">Volver al panel de Administrador</a></p>
    </section>
    
    <footer>
        <!-- Aqu� va el pie de p�gina -->
    </footer>
</body>
</html>