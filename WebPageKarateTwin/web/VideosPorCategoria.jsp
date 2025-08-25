<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List, Models.Contenido"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Videos de <%=(String)request.getAttribute("tituloCategoria")%> - Karate Al Doble</title>
    <link href="styleMenuPage.css" rel="stylesheet" type="text/css">
</head>
<body>
    <div class="main-container">
        <aside class="sidebar">
            <h2 class="logo">Karate Al Doble</h2>
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
            <header class="content-header">
                <h1>Videos de <%=(String)request.getAttribute("tituloCategoria")%></h1>
                <p>Explora la categoría de <%=(String)request.getAttribute("tituloCategoria")%> para aprender más sobre estas técnicas.</p>
            </header>

            <section class="video-list">
                <% 
                    List<Contenido> videos = (List<Contenido>) request.getAttribute("videos");
                    if (videos != null && !videos.isEmpty()) {
                        for (Contenido video : videos) {
                %>
                <div class="video-item">
                    <div class="video-player">
                        <% if (video.getUrlVideo().length() > 15) { %>
                            <iframe src="https://drive.google.com/file/d/<%= video.getUrlVideo() %>/preview" frameborder="0" allowfullscreen></iframe>
                        <% } else { %>
                            <iframe src="https://www.youtube.com/embed/<%= video.getUrlVideo() %>" frameborder="0" allowfullscreen></iframe>
                        <% } %>
                    </div>
                    <div class="video-details">
                        <h3><%= video.getTitulo() %></h3>
                        <p><%= video.getDescripcion() %></p>
                    </div>
                </div>
                <% 
                        }
                    } else {
                %>
                <p>No se encontraron videos para esta categoría.</p>
                <%
                    }
                %>
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
</body>
</html>