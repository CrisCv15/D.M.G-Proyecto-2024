<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confeccion de ropa</title>
    <link rel="stylesheet" href="css/estilo.css">
    <script defer src="js/script.js"></script>
</head>
<body>
    <?php
    session_start();
    ?>
    <header>
        <div class="contenedor_header">
            <div class="logo">
                <a href="index.php">
                    <img src="img/logo.png" alt="logo">
                </a>
            </div>
            <div class="menu-icon" id="menu-icon">
                <img src="img/menu.png" alt="" width="30px">
            </div>
            <div class="menu" id="menu">
                <nav>
                    <ul>
                        <li><a href="index.php">Inicio</a></li>
                        <li><a href="php/productos.php">Productos</a></li>
                        <li><a href="php/mensajeria.php">Mensajes</a></li>
                        <li><a href="php/carrito.php">Carrito</a></li>
                        <li><a id="sesion" href="php/login.php">Iniciar Sesion</a></li>
                    </ul>
                </nav>
            </div>
        </div>
    </header>

    <main>
        <div class="contenedor_portada">
            <div class="portada">
                <!-- Contenido de la portada -->
                 
            </div>
        </div> 
    </main>
    <footer>
        <!-- Contenido del pie de página -->
    </footer>

    <?php if(isset($_SESSION['usuario'])){ ?>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            var cambiar_sesion = document.getElementById('sesion');

            // Función para cambiar el enlace de inicio de sesión a cierre de sesión
            function ModificacionSesion() {
                if (cambiar_sesion.textContent === 'Iniciar Sesion') {
                    cambiar_sesion.textContent = 'Cerrar Sesion';
                    cambiar_sesion.href = 'php/cerrar_sesion.php';
                } else {
                    cambiar_sesion.textContent = 'Iniciar Sesion';
                    cambiar_sesion.href = 'php/login.php';
                }
            }

            
            ModificacionSesion()

          
        });
    </script>
    <?php } ?>
</body>
</html>
