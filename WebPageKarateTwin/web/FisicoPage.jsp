<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Fisico -Karate Al Doble</title>
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
                        <li><a href="FisicoPage_Servlet" class="nav-link active">Físico</a></li>
                        <li><a href="NosotrosPage.jsp">Nosotros</a></li>
                        <li><a href="LogoutServlet">Cerrar Sesión</a></li>
                    </ul>
                </nav>
            </aside>

            <main class="content-area">
                <header class="content-header" data-aos="fade-down">
                    <h1>Sección de Acondicionamiento Físico</h1>
                    <p>Descubre la importancia del entrenamiento físico para maximizar tu rendimiento en el karate.</p>
                </header>

                <section class="video-list" data-aos="fade-up">
                    <c:forEach var="video" items="${videos}">
                        <div class="video-item" data-aos="fade-up">
                            <div class="video-player">
                                <iframe src="https://www.youtube.com/embed/${video.urlVideo}" frameborder="0" allowfullscreen></iframe>
                            </div>
                            <div class="video-details">
                                <h3>${video.titulo}</h3>
                                <p>${video.descripcion}</p>
                            </div>
                        </div>
                    </c:forEach>
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