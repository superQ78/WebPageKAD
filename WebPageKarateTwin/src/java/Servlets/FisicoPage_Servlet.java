package Servlets;

import Models.Contenido;
import Persistencia.ConexionDB;
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

@WebServlet(name = "FisicoPage_Servlet", urlPatterns = {"/FisicoPage_Servlet"})
public class FisicoPage_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        List<Contenido> videosFisico = new ArrayList<>();
        
        try (Connection conn = ConexionDB.getConnection()) {
            String sql = "SELECT titulo, descripcion, url_video FROM Contenido WHERE categoria = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            
            // Establece la categoría "Fisico" en la consulta
            pstmt.setString(1, "Fisico");
            
            ResultSet rs = pstmt.executeQuery();
            while (rs.next()) {
                Contenido video = new Contenido();
                video.setTitulo(rs.getString("titulo"));
                video.setDescripcion(rs.getString("descripcion"));
                video.setUrlVideo(rs.getString("url_video"));
                videosFisico.add(video);
            }
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        
        request.setAttribute("videos", videosFisico);
        
        request.getRequestDispatcher("FisicoPage.jsp").forward(request, response);
    }
}