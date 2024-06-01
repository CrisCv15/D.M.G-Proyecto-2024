document.getElementById("registrarse").addEventListener("click", registro);
document.getElementById("iniciar_sesion").addEventListener("click", iniciarSesion);
window,addEventListener("resize", anchoPagina);

var contenedor_login_registro = document.querySelector(".contenedor_login-registro");
var formulario__login = document.querySelector(".formulario_login");
var formulario__registro = document.querySelector(".formulario_registro");
var caja_trasera_login = document.querySelector(".caja_trasera-login");
var caja_trasera_registro = document.querySelector(".caja_trasera-registro");

function anchoPagina(){
    if(window.innerWidth > 850){
        caja_trasera_login.style.display = "block";
        caja_trasera_registro.style.display = "block";
    }else{
        caja_trasera_registro.style.display = "block";
        caja_trasera_registro.style.opacity = "1";
        caja_trasera_login.style.display = "none";
        formulario__login.style.display = "block";
        formulario__registro.style.display = "none";
        contenedor_login_registro.style.left = "0px";
    }
}

anchoPagina();

function iniciarSesion(){

    if(window.innerWidth > 850){
        formulario__registro.style.display = "none";
        contenedor_login_registro.style.left = "10px";
        formulario__login.style.display = "block";
        caja_trasera_registro.style.opacity = "1";
        caja_trasera_login.style.opacity = "0";
    }else{
        formulario__registro.style.display = "none";
        contenedor_login_registro.style.left = "0px";
        formulario__login.style.display = "block";
        caja_trasera_registro.style.display = "block";
        caja_trasera_login.style.display = "none";  
    }
}

function registro(){

    if(window.innerWidth > 850){
        formulario__registro.style.display = "block";
        contenedor_login_registro.style.left = "410px";
        formulario__login.style.display = "none";
        caja_trasera_registro.style.opacity = "0";
        caja_trasera_login.style.opacity = "1";
    }else{
        formulario__registro.style.display = "block";
        contenedor_login_registro.style.left = "0px";
        formulario__login.style.display = "none";
        caja_trasera_registro.style.display = "none";
        caja_trasera_login.style.display = "block";
        caja_trasera_login.style.opacity = "1";  
    }
}