<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login - KarateTwin</title>
        <link href="StyleLoginPage.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="video-background">
            <video autoplay muted loop id="myVideo">
                <source src="Videos/KarateVideoFondo.mp4" type="video/mp4">
            </video>
        </div>
        <div class="login-container">
            <h1 class="titulo-login">Karate Al Doble</h1>
            <p class="subtitulo-login">Inicia sesión para ver nuestro contenido</p>
            <form action="LoginPage_Servlet" method="POST" class="login-form">
                <input type="text" name="usuario" placeholder="Usuario" required>
                    <input type="password" name="password" placeholder="Contraseña" required>
                    <button type="submit">Iniciar Sesión</button>
            </form>
            <p class="link-crear-cuenta">
                ¿No tienes cuenta? <a href="CreateAcount.jsp">Crea una aquí</a>
            </p>
        </div>

        <script>
            document.addEventListener('DOMContentLoaded', (event) => {
                const video = document.getElementById('myVideo');
                const startTime = 330; // Inicio del bucle en segundos (ej. 10 segundos)
                const endTime = 338; // Fin del bucle en segundos (ej. 25 segundos)

                video.addEventListener('timeupdate', () => {
                    if (video.currentTime >= endTime) {
                        video.currentTime = startTime; 
                    }
                });

                video.currentTime = startTime;
            });
        </script>
    </body>
</html>