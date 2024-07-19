

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>login y registro</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="../css/estiloLogin.css">
  
</head>
<body>

    <main>
    
        <div class="contenedor_todo">

            <div class="caja_trasera">
                <div class="caja_trasera-login">
                    <h3>¿Ya tienes una cuenta?</h3>
                    <p>Inicia sesión para entrar en la página</p>
                    <button id="iniciar_sesion">Iniciar Sesión</button>
                </div>
                <div class="caja_trasera-registro">
                    <h3>¿Aún no tienes una cuenta?</h3>
                    <p>Registrate para que puedas iniciar sesión</p>
                    <button id="registrarse">Regístrarse</button>
                </div>
            </div>
            <!--Formulario de login y registro-->
            <div class="contenedor_login-registro" id="contenedor_login-registro">

                <!--login-->
                <form action="login_usuario_be.php" method="POST" class="formulario_login">
                    <h2>Iniciar Sesión</h2>
                    <input type="text" placeholder="Correo Electronico" name="correo" required >
                    <input type="password" placeholder="Contraseña" name="pass" required>
                    <button>Entrar</button>
                </form>

                <!--registro-->
                <form action="registro_usuario_be.php" method="POST" class="formulario_registro">
                    <h2>Regístrarse</h2>
                    <input type="text" placeholder="Nombre" name="nombre" required>
                    <input type="text" placeholder="Apellido" name="apellido" required>
                    <input type="text" placeholder="Correo Electronico" name="correo" required>
                    <input type="text" placeholder="Telefono" name="telefono" required>
                    <input type="password" placeholder="Contraseña" name="pass" required>
                    <button>Regístrarse</button>
                </form>

            </div>

        </div>

    </main>    
    <script src="../js/scriptLogin.js"></script>
</body>
</html>