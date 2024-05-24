package com.build.DAO;

import com.build.classes.Project;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProjectDAOImpl implements ProjectDAO {

    @Override
    public List<Project> getAllProjects() {
        List<Project> projects = new ArrayList<>();
        try (Connection conn = Databasemanager.getConnection()) {
            String query = "SELECT * FROM project";
            Statement stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery(query);
            while (rs.next()) {
                Project project = new Project();
               project.setpId(rs.getInt("p_id"));
                project.setpName(rs.getString("p_name"));
                project.setpDescription(rs.getString("p_description"));
                project.setpStartdate(rs.getDate("p_start_date"));
                project.setpEndDate(rs.getDate("p_end_date"));
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
        try (Connection conn = Databasemanager.getConnection()) {
            String query = "INSERT INTO project (p_name, p_description, p_start_date, p_end_date, budget) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setString(1, project.getpName());
            pstmt.setString(2, project.getpDescription());
            pstmt.setDate(3, project.getpStartdate());
            pstmt.setDate(4, project.getpEndDate());
            pstmt.setDouble(5, project.getBudget());
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void updateProject(Project project) {
        String sql = "UPDATE project SET p_name = ?, p_description = ?, p_start_date = ?, p_end_date = ?, budget = ? WHERE p_id = ?";
        try (Connection conn = Databasemanager.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, project.getpName());
            stmt.setString(2, project.getpDescription());
            stmt.setDate(3, project.getpStartdate());
            stmt.setDate(4, project.getpEndDate());
            stmt.setDouble(5, project.getBudget());
            stmt.setInt(6, project.getpId());

            stmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void deleteProject(int projectId) {
        try (Connection conn = Databasemanager.getConnection()) {
            String query = "DELETE FROM project WHERE p_id=?";
            PreparedStatement pstmt = conn.prepareStatement(query);
            pstmt.setInt(1, projectId);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Project getProjectById(int pId) {
        Project project = null;
        try (Connection conn = Databasemanager.getConnection();
             PreparedStatement preparedStatement = conn.prepareStatement("SELECT * FROM project WHERE p_id = ?")) {
            preparedStatement.setInt(1, pId);
            ResultSet rs = preparedStatement.executeQuery();
            if (rs.next()) {
                project = new Project();
                project.setpId(rs.getInt("p_id"));
                project.setpName(rs.getString("p_name"));
                project.setpDescription(rs.getString("p_description"));
                project.setpStartdate(rs.getDate("p_start_date"));
                project.setpEndDate(rs.getDate("p_end_date"));
                project.setBudget(rs.getDouble("budget"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return project;
    }
}
