package com.build.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.build.DAO.ProjectDAO;
import com.build.DAO.ProjectDAOImpl;

@WebServlet("/DeleteServlet")
public class DeleteServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private final ProjectDAO projectDAO;

    public DeleteServlet() {
        super();
        projectDAO = new ProjectDAOImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int projectId = Integer.parseInt(request.getParameter("projectId"));
        try {
            projectDAO.deleteProject(projectId);
            response.sendRedirect(request.getContextPath() + "/ProjectServlet");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Error in doGet: " + e.getMessage());
            request.setAttribute("errorMessage", "Une erreur s'est produite lors de la suppression du projet.");
            request.getRequestDispatcher("/WEB-INF/project.jsp").forward(request, response);
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int projectId = Integer.parseInt(request.getParameter("projectId"));
            projectDAO.deleteProject(projectId);
            response.sendRedirect(request.getContextPath() + "/ProjectServlet");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Error in doPost: " + e.getMessage());
            request.setAttribute("errorMessage", "Une erreur s'est produite lors de la suppression du projet.");
            request.getRequestDispatcher("/WEB-INF/project.jsp").forward(request, response);
        }
    }
}
