package Servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import Persistencia.ConexionDB;
import Models.Contenido;

/**
 * 
 * @author cesar
 */

@WebServlet(name = "KataPage_Servlet", urlPatterns = {"/KataPage_Servlet"})
public class KataPage_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        List<Contenido> videosKata = new ArrayList<>();

        try (Connection conn = ConexionDB.getConnection()) {
            String sql = "SELECT titulo, descripcion, url_video FROM Contenido WHERE categoria = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "Kata"); // ❗ Cambia a "Kata"
            
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Contenido video = new Contenido();
                video.setTitulo(rs.getString("titulo"));
                video.setDescripcion(rs.getString("descripcion"));
                video.setUrlVideo(rs.getString("url_video"));
                videosKata.add(video);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }

        request.setAttribute("videos", videosKata);
        
        request.getRequestDispatcher("KataPage.jsp").forward(request, response);
    }
}