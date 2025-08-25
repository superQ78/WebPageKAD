<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isELIgnored="false" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nosotros - Karate Al Doble</title>
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
                    <h1>Acerca de Nosotros</h1>
                    <p>Conoce al equipo detrás de Karate Al Doble y nuestros logros.</p>
                </header>

                <div class="message-container">
                    <c:if test="${not empty messageStatus}">
                        <div class="alert alert-${messageStatus}">
                            <p>${message}</p>
                        </div>
                    </c:if>
                </div>
                <section class="achievements-section">
                    <h2 data-aos="fade-up">Nuestros Logros</h2>
                    <p data-aos="fade-up">Aquí se muestran algunos de nuestros logros más importantes.</p>

                    <div class="achievements-grid" data-aos="fade-up">
                        <div class="achievement-card">
                            <img src="img/logro_ejemplo_1.png" alt="Logro 1">
                            <h3>Campeón Nacional</h3>
                            <p>Descripción del logro. Ganador de la medalla de oro en el campeonato nacional 2024.</p>
                        </div>

                        <div class="achievement-card">
                            <img src="img/logro_ejemplo_2.png" alt="Logro 2">
                            <h3>Cinturón Negro</h3>
                            <p>Descripción del logro. Conclusión del riguroso entrenamiento para obtener el cinturón negro.</p>
                        </div>
                    </div>
                </section>

                <section class="contact-cards" data-aos="fade-up">
                    <div class="contact-card">
                        <h3 data-aos="fade-up">Formulario de Contacto</h3>
                        <p data-aos="fade-up">¿Necesitas ayuda o tienes una consulta? Mándanos un mensaje y te responderemos lo más pronto posible.</p>
                        <a href="contact.jsp" class="button">Contactar</a>
                    </div>

                    <div class="contact-card">
                        <h3 data-aos="fade-up">Buzón de Sugerencias</h3>
                        <p data-aos="fade-up">Tu opinión es importante para nosotros. Comparte tus sugerencias o reporta un problema.</p>
                        <a href="complaint.jsp" class="button">Sugerencias</a>
                    </div>
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
              // Selecciona el elemento del mensaje de alerta
    const alertElement = document.querySelector('.alert');

    // Verifica si el elemento existe en la página
    if (alertElement) {
        // Establece un temporizador para ocultar el mensaje después de 5 segundos
        setTimeout(() => {
            // Añade una clase para iniciar la transición (desvanecimiento)
            alertElement.style.opacity = '0';
            
            // Elimina el elemento del DOM completamente después de que la transición termine
            // (1 segundo en este caso, que coincide con la duración de la transición en CSS)
            setTimeout(() => {
                alertElement.remove();
            }, 1000); // 1000 milisegundos = 1 segundo
        }, 5000); // 5000 milisegundos = 5 segundos
    }
        </script>
    </body>
</html>