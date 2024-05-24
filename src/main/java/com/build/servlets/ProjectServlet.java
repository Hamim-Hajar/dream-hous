package com.build.servlets;

import java.io.IOException;
import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.List;

import com.build.DAO.ProjectDAO;
import com.build.DAO.ProjectDAOImpl;
import com.build.classes.Project;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProjectServlet")
public class ProjectServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ProjectDAO projectDAO;

    public ProjectServlet() {
        super();
        projectDAO = new ProjectDAOImpl();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            List<Project> projects = projectDAO.getAllProjects();
            request.setAttribute("projects", projects);
            request.getRequestDispatcher("/WEB-INF/project.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Error in doGet: " + e.getMessage());
        }
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        if (action != null) {
            try {
                switch (action) {
                    case "addProject":
                        addProject(request, response);
                        break;
                    case "delete":
                        deleteProject(request, response);
                        break;
                    case "update":
                        updateProject(request, response);
                        break;
                    default:
                        response.sendRedirect(request.getContextPath() + "/ProjectServlet");
                        break;
                }
            } catch (Exception e) {
                e.printStackTrace();
                System.err.println("Error in doPost: " + e.getMessage());
            }
        }
    }

    private void addProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String pName = request.getParameter("name");
            String pDescription = request.getParameter("description");
            String pStartDateStr = request.getParameter("startDate");
            String pEndDateStr = request.getParameter("endDate");
            double budget = Double.parseDouble(request.getParameter("budget"));

            Date pStartDate = Date.valueOf(pStartDateStr);
            Date pEndDate = Date.valueOf(pEndDateStr);

            Project project = new Project(0, pName, pDescription, pStartDate, pEndDate, budget);
            projectDAO.addProject(project);
            response.sendRedirect(request.getContextPath() + "/ProjectServlet");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Error in addProject: " + e.getMessage());
        }
    }

    private void deleteProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int projectId = Integer.parseInt(request.getParameter("projectId"));
            projectDAO.deleteProject(projectId);
            response.sendRedirect(request.getContextPath() + "/ProjectServlet");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Error in deleteProject: " + e.getMessage());
        }
    }

    private void updateProject(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            int pId = Integer.parseInt(request.getParameter("projectId"));
            String pName = request.getParameter("name");
            String pDescription = request.getParameter("description");
            String pStartDateStr = request.getParameter("startDate");
            String pEndDateStr = request.getParameter("endDate");
            double budget = Double.parseDouble(request.getParameter("budget"));

            Date pStartDate = Date.valueOf(pStartDateStr);
            Date pEndDate = Date.valueOf(pEndDateStr);

            Project project = new Project(pId, pName, pDescription, pStartDate, pEndDate, budget);
            projectDAO.updateProject(project);
            response.sendRedirect(request.getContextPath() + "/ProjectServlet");
        } catch (Exception e) {
            e.printStackTrace();
            System.err.println("Error in updateProject: " + e.getMessage());
        }
    }

    public void destroy() {
    }
}
