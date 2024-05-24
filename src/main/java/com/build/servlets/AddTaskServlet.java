package com.build.servlets;




import com.build.DAO.ProjectDAOImpl;
import com.build.DAO.TaskDaoImp;
import com.build.classes.Task;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/AddTaskServlet")
public class  AddTaskServlet extends HttpServlet {
    private TaskDaoImp taskDao;
    private ProjectDAOImpl projectDao;

    @Override
    public void init() {
        taskDao = new TaskDaoImp();
        projectDao = new ProjectDAOImpl();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String projectIdParam = request.getParameter("projectId");
        if (projectIdParam != null && !projectIdParam.isEmpty()) {
            int projectId = Integer.parseInt(projectIdParam);
            request.setAttribute("projectId", projectId);
            request.getRequestDispatcher("/WEB-INF/addTask.jsp").forward(request, response);
        } else {

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String tDescription = request.getParameter("tDescription");
        String tStartDate = request.getParameter("tStartdate");
        String tEndDate = request.getParameter("tEndDate");
        String statut = request.getParameter("statut");
        String resources = request.getParameter("resources");
        int projectId = Integer.parseInt(request.getParameter("projectId"));

        Task task = new Task();
        task.settDescription(tDescription);
        task.settStartdate(tStartDate);
        task.settEndDate(tEndDate);
        task.setStatut(statut);
        task.setResources(resources);
        task.setpId(projectId);

        try {
            taskDao.addTask(task);
            response.sendRedirect(request.getContextPath() + "/ListTasksServlet?projectId=" + projectId);
        } catch (SQLException e) {
            throw new ServletException("Error adding task", e);
        }
    }
}
