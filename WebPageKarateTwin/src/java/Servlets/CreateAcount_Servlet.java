/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import Persistencia.Usuarios;
import Persistencia.ConexionDB;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;


/**
 *
 * @author cesar
 */
@WebServlet(name = "CreateAcount_Servlet", urlPatterns = {"/CreateAcount_Servlet"})
public class CreateAcount_Servlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        String nombre = request.getParameter("nombre");
        String usuario = request.getParameter("usuario");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("confirm-password");
        
        if (!password.equals(confirmPassword)) {
            response.sendRedirect("CreateAcount.jsp?error=passwords_no_coinciden");
            return;
        }

        Usuarios nuevoUsuario = new Usuarios();
        nuevoUsuario.setNombre(nombre);
        nuevoUsuario.setUsuario(usuario);
        nuevoUsuario.setEmail(email);
        nuevoUsuario.setPassword(password);

        try (Connection conn = ConexionDB.getConnection()) {
            String sql = "INSERT INTO Usuarios (nombre, usuario, email, password) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, nuevoUsuario.getNombre());
            pstmt.setString(2, nuevoUsuario.getUsuario());
            pstmt.setString(3, nuevoUsuario.getEmail());
            pstmt.setString(4, nuevoUsuario.getPassword());
            
            int rowsAffected = pstmt.executeUpdate();
            
            if (rowsAffected > 0) {
                response.sendRedirect("LoginPage.jsp?success=registro_exitoso");
            } else {
                response.sendRedirect("CreateAcount.jsp?error=error_registro");
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            response.sendRedirect("CreateAcount.jsp?error=db_error");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("CreateAcount.jsp").forward(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Servlet para crear una cuenta de usuario";
    }
}