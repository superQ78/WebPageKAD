<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Crear Cuenta - Karate Al Doble</title>
        <link href="StyleCreateAcount.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <div class="video-background">
            <video autoplay muted loop id="myVideo">
                <source src="Videos/KataFondoCreateAcount.mp4" type="video/mp4">
            </video>
        </div>
        <div class="create-account-container">
            <h1 class="titulo-crear-cuenta">Crea tu cuenta</h1>
            <p class="subtitulo-crear-cuenta">Únete a la comunidad de Karate A  l Doble</p>
            <form action="CreateAcount_Servlet" method="POST" class="create-account-form">
                <input type="text" name="nombre" placeholder="Nombre Completo" required>
                <input type="text" name="usuario" placeholder="Nombre de Usuario" required>
                <input type="email" name="email" placeholder="Correo Electrónico" required>
                <input type="password" name="password" placeholder="Contraseña" required>
                <input type="password" name="confirm-password" placeholder="Confirmar Contraseña" required>
                <button type="submit">Crear Cuenta</button>
            </form>
            <p class="link-login">
                ¿Ya tienes una cuenta? <a href="LoginPage.jsp">Inicia sesión</a>
            </p>
        </div>
        
        <script>
            document.addEventListener('DOMContentLoaded', (event) => {
                const video = document.getElementById('myVideo');
                const startTime = 107; 
                const endTime = 114;   // 1 minuto y 54 segundos

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