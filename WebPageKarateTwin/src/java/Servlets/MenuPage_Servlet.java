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

/**
 *
 * @author cesar
 */
@WebServlet(name = "MenuPage_Servlet", urlPatterns = {"/MenuPage_Servlet"})
public class MenuPage_Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // En este ejemplo, simplemente redirigimos al JSP
        // En un proyecto real, aquí cargarías datos de la base de datos
        // y los pasarías al JSP.
        request.getRequestDispatcher("MenuPage.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // El método POST se podría usar para otras acciones del menú
        // Por ahora, redirige a la misma página
        doGet(request, response);
    }
    
    @Override
    public String getServletInfo() {
        return "Servlet para la página del menú principal";
    }
}