package com.build.DAO;

import com.build.classes.Project;

import java.util.List;

public interface ProjectDAO {
    List<Project> getAllProjects();
    void addProject(Project project);
    void updateProject(Project project);
    void deleteProject(int projectId);
}
