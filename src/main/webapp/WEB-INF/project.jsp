<%@ page import="java.util.List" %>
<%@ page import="com.build.classes.Project" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Project Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        /* Personnalisation des styles supplémentaires */
        .card-header {
            background-color: #007bff;
            color: #fff;
            font-weight: bold;
        }
        .card {
            border: none;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            transition: all 0.3s ease;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 0 30px rgba(0, 0, 0, 0.2);
        }
        .btn {
            border-radius: 20px;
        }
    </style>
</head>
<body>
<div class="container">
    <h1 class="mt-5">Project Management</h1>

    <h2 class="mt-4">Add New Project</h2>
    <form action="ProjectServlet?action=addProject" method="post">
        <div class="form-group">
            <label for="name">Project Name:</label>
            <input type="text" class="form-control form-control-lg" id="name" name="name" required>
        </div>
        <div class="form-group">
            <label for="description">Description:</label>
            <textarea class="form-control form-control-lg" id="description" name="description" required></textarea>
        </div>
        <div class="form-group">
            <label for="startDate">Start Date:</label>
            <input type="date" class="form-control form-control-lg" id="startDate" name="startDate" required>
        </div>
        <div class="form-group">
            <label for="endDate">End Date:</label>
            <input type="date" class="form-control form-control-lg" id="endDate" name="endDate" required>
        </div>
        <div class="form-group">
            <label for="budget">Budget:</label>
            <input type="number" class="form-control form-control-lg" id="budget" name="budget" required>
        </div>
        <button type="submit" class="btn btn-primary btn-lg">Add Project</button>
    </form>

    <h2 class="mt-5">Existing Projects</h2>
    <div class="row">
        <c:forEach var="project" items="${projects}">
            <div class="col-md-4 mt-4">
                <div class="card">
                    <div class="card-header">
                        Project: ${project.pName}
                    </div>
                    <div class="card-body">
                        <h5 class="card-title">${project.pName}</h5>
                        <p class="card-text">${project.pDescription}</p>
                        <p class="card-text">Start Date: <c:out value="${project.pStartdate != null ? project.pStartdate : 'N/A'}"/></p>
                        <p class="card-text">End Date: <c:out value="${project.pEndDate != null ? project.pEndDate : 'N/A'}"/></p>
                        <p class="card-text">Budget: ${project.budget}</p>
                        <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${project.pId}" class="task-button">See All Tasks</a>

                        <form action="EditProjectServlet" method="get" style="display: inline;">
                            <input type="hidden" name="projectId" value="${project.pId}" />
                            <button type="submit" class="btn btn-warning btn-sm">Edit</button>
                        </form>
                        <form action="ProjectServlet?action=delete" method="post" style="display: inline;">
                            <input type="hidden" name="projectId" value="${project.pId}" />
                            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                    </div>
                </div>
            </div>
        </c:forEach>
    </div>
</div>
</body>
</html>
