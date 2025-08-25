<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Combate - Karate Al Doble</title>
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
                        <li><a href="CombatePage_Servlet" class="nav-link active">Combate</a></li>
                        <li><a href="KataPage_Servlet">Kata</a></li>
                        <li><a href="FisicoPage_Servlet">Fisico</a></li>
                        <li><a href="NosotrosPage.jsp">Nosotros</a></li>
                        <li><a href="LogoutServlet">Cerrar Sesión</a></li>
                    </ul>
                </nav>
            </aside>

            <main class="content-area">
                <header class="content-header" data-aos="fade-down">
                    <h1>Sección de Combate</h1>
                    <p>Selecciona una categoría para ver los videos detallados.</p>
                </header>

                <section class="category-cards" data-aos="fade-up">
                    <a href="VideosCombateServlet?categoria=Golpes" class="category-card" data-aos="fade-up" data-aos-duration="1000">
                        <h3>Golpes</h3>
                        <p>Técnicas de puño y golpes de mano abierta.</p>
                    </a>

                    <a href="VideosCombateServlet?categoria=Patadas" class="category-card" data-aos="fade-up" data-aos-duration="1200">
                        <h3>Patadas</h3>
                        <p>Técnicas de patadas básicas y avanzadas.</p>
                    </a>

                    <a href="VideosCombateServlet?categoria=Combates" class="category-card" data-aos="fade-up" data-aos-duration="1400">
                        <h3>Combates</h3>
                        <p>Videos de combate y sparrings.</p>
                    </a>
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