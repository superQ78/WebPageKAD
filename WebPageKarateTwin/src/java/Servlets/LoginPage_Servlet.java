package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession; // ❗ Importa la clase HttpSession
import java.io.IOException;
import Persistencia.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
/**
 * 
 * @author cesar
 */

@WebServlet(name = "LoginPage_Servlet", urlPatterns = {"/LoginPage_Servlet"})
public class LoginPage_Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String usuario = request.getParameter("usuario");
        String password = request.getParameter("password");
        
        try (Connection conn = ConexionDB.getConnection()) {
            String sql = "SELECT nombre FROM Usuarios WHERE usuario = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, usuario);
            pstmt.setString(2, password);
            
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                String nombreUsuario = rs.getString("nombre");

                HttpSession session = request.getSession();
                session.setAttribute("nombreUsuario", nombreUsuario);
                
                response.sendRedirect("MenuPage.jsp");
            } else {
                response.sendRedirect("LoginPage.jsp?error=invalid_credentials");
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.sendRedirect("LoginPage.jsp?error=db_error");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("LoginPage.jsp").forward(request, response);
    }
}