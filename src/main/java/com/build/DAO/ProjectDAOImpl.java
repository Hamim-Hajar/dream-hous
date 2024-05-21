package com.build.DAO;

import com.build.classes.Project;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjectDAOImpl implements ProjectDAO {


    public List<Project> getAllProjects() {
        List<Project> projects = new ArrayList<>();
        try (Connection conn = Databasemanager.getConnection()) {
            String query = "SELECT * FROM projet";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Project project = new Project();
                project.setProject_id(rs.getInt("project_Id"));
                project.setName(rs.getString("name"));
                project.setDescription(rs.getString("description"));
                project.setStartDate(rs.getDate("startDate"));
                project.setEndDate(rs.getDate("endDate"));
                project.setBudget(rs.getDouble("budget"));
                projects.add(project);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return projects;
    }

    @Override
    public void addProject(Project project) {
        try (Connection conn =  Databasemanager.getConnection()) {
            String query = "INSERT INTO projet (name, description, startDate, endDate, budget) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, project.getName());
            pstmt.setString(2, project.getDescription());
            pstmt.setDate(3, new java.sql.Date(project.getStartDate().getTime()));
            pstmt.setDate(4, new java.sql.Date(project.getEndDate().getTime()));
            pstmt.setDouble(5, project.getBudget());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateProject(Project project) {

    }

    @Override
    public void deleteProject(int projectId) {
        try (Connection conn =  Databasemanager.getConnection()) {
            String query = "DELETE FROM projet WHERE id=?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, projectId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
