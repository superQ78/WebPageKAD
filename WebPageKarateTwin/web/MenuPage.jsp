<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menú Principal - Karate Al Doble</title>
        <link href="styleMenuPage.css" rel="stylesheet" type="text/css">
        <meta http-equiv="Cache-Control" content="no-cache, no-store, must-revalidate"/>
        <meta http-equiv="Pragma" content="no-cache"/>
        <meta http-equiv="Expires" content="0"/>

        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>

    </head>
    <body>
        <div class="main-container">
            <aside class="sidebar">
                <h2 class="logo">KarateAlDoble</h2>
                <nav class="main-nav">
                    <ul>
                        <li><a href="#" class="nav-link active">Inicio</a></li>
                        <li><a href="CombatePage_Servlet">Combate</a></li>
                        <li><a href="KataPage_Servlet">Kata</a></li>
                        <li><a href="FisicoPage_Servlet">Fisico</a></li>
                        <li><a href="NosotrosPage.jsp" >Nosotros</a></li>
                        <li><a href="LogoutServlet">Cerrar Sesión</a></li>
                    </ul>
                </nav>
            </aside>
            <main class="content-area">
                <header class="content-header" data-aos="fade-down">
                    <h1>Bienvenido ${sessionScope.nombreUsuario}</h1>
                    <p>Explora el mejor contenido de karate</p>
                </header>

                <section class="content-video" data-aos="fade-up">
                    <h2>¿Estás listo para introducirte en esta aventura?</h2>
                    <p class="descripcion-video">
                        Esta página tiene como objetivo mostrarte desde las técnicas más básicas hasta algunas muy complejas,
                        con el paso del tiempo podrás ir mejorando y consultando contenido de diferente nivel, así como
                        contenido actualizado y nuevo, esto con el fin de brindar el mejor de los entrenamientos y ser parte
                        de tu crecimiento como deportista de alto rendimiento.
                    </p>
                    <div class="video-container">
                        <video width="38%" height="auto" autoplay muted loop>
                            <source src="Videos/LogoVideoKAD (1).mp4" type="video/mp4">
                            Your browser does not support the video tag.
                        </video>
                    </div>
                </section>

                <section class="content-grid">
                </section>

                <footer class="social-media">
                    <h3>Síguenos en nuestras redes sociales</h3>
                    <div class="social-icons">
                        <a href="https://www.facebook.com/KarateAlDoble" target="_blank">
                            <img src="img/facebookLogo.png" alt="Facebook">
                        </a>
                        <a href="https://www.instagram.com/KarateAlDoble" target="_blank">
                            <img src="img/instagram_logo.png" alt="Instagram">
                        </a>
                        <a href="https://twitter.com/KarateAlDoble" target="_blank">
                            <img src="img/x_logo.png" alt="X (Twitter)">
                        </a>
                    </div>
                </footer>
            </main>
        </div>

        <script>
            AOS.init();
        </script>
    </body>
</html>