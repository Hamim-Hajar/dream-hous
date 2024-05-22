package com.build.DAO;

import com.build.classes.Project;

import java.sql.SQLException;
import java.util.List;

public interface ProjectDAO {
    List<Project> getAllProjects();
    void addProject(Project project);
    void updateProject(Project project) throws SQLException;
    void deleteProject(int projectId);
    public Project getProjectById (int project_Id);
}
