<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contacto - Karate Al Doble</title>
        <link href="styleMenuPage.css" rel="stylesheet" type="text/css">
        <link href="https://unpkg.com/aos@2.3.1/dist/aos.css" rel="stylesheet">
    </head>
    <body>
        <div class="main-container">
            <aside class="sidebar">
                <h2 class="logo">KarateAlDoble</h2>
                <nav class="main-nav">
                    <ul>
                        <li><a href="MenuPage_Servlet">Inicio</a></li>
                        <li><a href="CombatePage_Servlet">Combate</a></li>
                        <li><a href="KataPage_Servlet">Kata</a></li>
                        <li><a href="FisicoPage_Servlet">Fisico</a></li>
                        <li><a href="NosotrosPage.jsp" class="nav-link active">Nosotros</a></li>
                        <li><a href="LogoutServlet">Cerrar Sesión</a></li>
                    </ul>
                </nav>
            </aside>
            <main class="content-area">
                <header class="content-header" data-aos="fade-down">
                    <h1>Formulario de Contacto</h1>
                    <p>Envía tu consulta y te responderemos pronto.</p>
                </header>

                <section class="form-container" data-aos="fade-up">
                    <form action="ContactServlet" method="POST">
                        <div class="form-group">
                            <label for="nombre">Nombre Completo:</label>
                            <input type="text" id="nombre" name="nombre" required>
                        </div>
                        <div class="form-group">
                            <label for="email">Correo Electrónico:</label>
                            <input type="email" id="email" name="email" required>
                        </div>
                        <div class="form-group">
                            <label for="mensaje">Tu Mensaje:</label>
                            <textarea id="mensaje" name="mensaje" rows="6" required></textarea>
                        </div>
                        <button type="submit" class="button">Enviar Mensaje</button>
                    </form>
                </section>
                
                <footer class="social-media" data-aos="fade-up">
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
        <script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
        <script>
            AOS.init();
        </script>
    </body>
</html>