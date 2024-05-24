package com.build.servlets;
import com.build.DAO.ResourceDaoImp;
import com.build.classes.Resource;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/UpdateResourceServlet")
public class UpdateResourceServlet extends HttpServlet {
    private ResourceDaoImp resourceDao;

    @Override
    public void init() {
        resourceDao = new ResourceDaoImp();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("taskId"));
        int resourceId = Integer.parseInt(request.getParameter("resourceId"));
        try {
            Resource existingResource = resourceDao.selectResourceById(resourceId);
            request.setAttribute("resource", existingResource); // Corrected attribute name
            request.setAttribute("resourceId", resourceId);
            request.setAttribute("taskId", taskId);
            request.getRequestDispatcher("/WEB-INF/updateResource.jsp").forward(request, response);
        } catch (SQLException e) {
            throw new ServletException("Error retrieving resource", e);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int taskId = Integer.parseInt(request.getParameter("taskId"));
        int resourceId = Integer.parseInt(request.getParameter("resourceId"));
        String rName = request.getParameter("rName");
        String rType = request.getParameter("rType");
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        String provider = request.getParameter("provider");

        // Log received parameters
        System.out.println("taskId: " + taskId);
        System.out.println("resourceId: " + resourceId);
        System.out.println("rName: " + rName);
        System.out.println("rType: " + rType);
        System.out.println("quantity: " + quantity);
        System.out.println("provider: " + provider);

        Resource resource = new Resource(rName, rType, quantity, provider, resourceId);

        try {
            boolean updated = resourceDao.updateResource(resource);
            if (updated) {
                System.out.println("Resource updated successfully.");
            } else {
                System.out.println("Resource update failed.");
            }
            response.sendRedirect(request.getContextPath() + "/ListResourcesServlet?taskId=" + taskId);
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Error updating resource", e);
        }
    }
}