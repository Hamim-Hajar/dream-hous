package com.build.servlets;

import java.io.IOException;
import java.sql.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.build.DAO.ProjectDAO;
import com.build.DAO.ProjectDAOImpl;
import com.build.classes.Project;

@WebServlet("/EditProjectServlet")
public class EditProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectDAO projectDAO;

    public EditProjectServlet() {
        super();
        projectDAO = new ProjectDAOImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       int id = Integer.parseInt(request.getParameter("id"));
       Project project =projectDAO.getProjectById(id);
       request.setAttribute("project", project);
       request.getRequestDispatcher("/WEB-INF/editProject.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Récupérer les paramètres du formulaire
            int projectId = Integer.parseInt(request.getParameter("project_Id"));
            String name = request.getParameter("name");
            String description = request.getParameter("description");
            String startDateStr = request.getParameter("startDate");
            String endDateStr = request.getParameter("endDate");
            double budget = Double.parseDouble(request.getParameter("budget"));


            Project updatedProject = new Project(projectId, name, description,
                    Date.valueOf(startDateStr),
                    Date.valueOf(endDateStr),
                    budget);
            projectDAO.updateProject(updatedProject);


            response.sendRedirect(request.getContextPath() + "/ProjectServlet");
        } catch (Exception e) {
            e.printStackTrace();

        }

    }
}
