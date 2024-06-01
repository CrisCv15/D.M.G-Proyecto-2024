<?php 

    session_start();

    include 'conexion_be.php';

    $correo = $_POST['correo'];
    $password = $_POST['pass'];
    $password = hash('sha512', $password);

    $validar_login = mysqli_query($conexion, "SELECT * FROM usuario WHERE correo='$correo' and pass='$password'");

    if(mysqli_num_rows($validar_login) > 0){
        $_SESSION['usuario'] = $correo;
        header("location: ../index.php");
        exit();
    }
    else{
     echo '
        <script>
        alert("El usuario no existe, verifique los datos introducidos");
        window.location = "login.php";
        </script>
         ';
         exit();
    }

?>