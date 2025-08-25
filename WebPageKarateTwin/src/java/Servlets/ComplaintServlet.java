package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.mail.*;
import jakarta.mail.internet.InternetAddress;
import jakarta.mail.internet.MimeMessage;
import java.io.IOException;
import java.util.Properties;

@WebServlet("/ComplaintServlet")
public class ComplaintServlet extends HttpServlet {

    private static final String SENDER_EMAIL = "cesarduranavalos5@gmail.com";
    private static final String SENDER_PASSWORD = "uinn hkis njfv vion"; // Tu contraseña de aplicación

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String sugerencia = request.getParameter("sugerencia");
// 2. Configurar las propiedades de la sesión de correo
        Properties props = new Properties();
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.starttls.enable", "true");
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.port", "587");

        Session session = Session.getInstance(props, new Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(SENDER_EMAIL, SENDER_PASSWORD);
            }
        });
        try {
            // 3. Crear el mensaje de correo
            MimeMessage mailMessage = new MimeMessage(session);
            mailMessage.setFrom(new InternetAddress(SENDER_EMAIL));
            mailMessage.addRecipient(Message.RecipientType.TO, new InternetAddress(SENDER_EMAIL));
            mailMessage.setSubject("Nueva Sugerencia o Comentario - Karate Al Doble");
            mailMessage.setText("Nombre: " + (nombre != null && !nombre.isEmpty() ? nombre : "Anónimo") + "\n"
                    + "Email: " + (email != null && !email.isEmpty() ? email : "No proporcionado") + "\n"
                    + "Sugerencia: " + sugerencia);
            // 4. Enviar el mensaje
            Transport.send(mailMessage);

            // Si el correo se envía con éxito, establece un atributo de éxito
            request.setAttribute("messageStatus", "success");
            request.setAttribute("message", "¡Tu sugerencia ha sido enviada con éxito!");
        } catch (MessagingException e) {
            e.printStackTrace();
// Si hay un error, establece un atributo de error
            request.setAttribute("messageStatus", "error");
            request.setAttribute("message", "Hubo un error al enviar tu sugerencia. Inténtalo de nuevo más tarde.");
        }

        // Reenvía la petición a la página de Nosotros para mostrar el mensaje
        RequestDispatcher dispatcher = request.getRequestDispatcher("NosotrosPage.jsp");
        dispatcher.forward(request, response);
    }
}
