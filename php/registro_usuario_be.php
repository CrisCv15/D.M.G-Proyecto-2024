<?php

    include 'conexion_be.php';

    $nombre_completo = $_POST['nombre_completo'];
    $correo = $_POST['correo'];
    $telefono = $_POST['telefono'];
    $password = $_POST['pass'];
    
    $password = hash('sha512', $password);

    $queryUser = "INSERT INTO usuario(correo, nombre_completo, telefono, pass) VALUES('$correo', '$nombre_completo', '$telefono', '$password')";
    
    $queryCorreo = "SELECT * FROM usuario WHERE correo='$correo'";

    $verificar_correo = mysqli_query($conexion, $queryCorreo);

    if(mysqli_num_rows($verificar_correo) > 0){
        echo '
        <script>
            alert("Este correo ya está registrado, intenta con otro diferente");
            window.location = "login.php";
       </script>
        ';
        exit();
    }

   if(filter_var($correo, FILTER_VALIDATE_EMAIL)){

    $ejecutar = mysqli_query($conexion, $queryUser);
    
   }
   else{
    echo '
    <script>
     alert("Correo incorrecto");
     window.location = "login.php";
    </script>
   ';
}

    if($ejecutar){
        echo '
         <script>
          alert("Usuario creado exitosamente");
          window.location = "login.php";
         </script>
        ';
    }
    else{
        echo '
        <script>
         alert("Intentalo de nuevo, Usuario no creado");
         window.location = "login.php";
        </script>
       ';
    }
    mysqli_close($conexion);
?>