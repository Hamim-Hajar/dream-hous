<%@ page import="java.util.List" %>
<%@ page import="com.build.classes.Project" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dream House Company</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style><%@include file="css/Pstyles.css"%></style>
</head>
<body>
<!-- Navigation -->
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <a class="navbar-brand" href="#"><img src="https://cdn-icons-png.flaticon.com/128/36/36507.png" alt="Dream House Logo" class="logo"> Dream House</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="#">Project</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Portfolio</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Service</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="#">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
        </ul>
    </div>
</nav>

<!-- Header -->
<div class="container-flex">
    <header class="header">
        <div class="header-background"></div>
        <div class="container header-content">
            <h1 class="display-4">DREAM HOUSE COMPANY</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Ut quis egestas pellentesque libero dolor in diam consequat ut.
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Ut quis egestas pellentesque libero </p>
            <a href="${pageContext.request.contextPath}/" class="btn btn-warning">GO HOME</a>
        </div>
    </header>
    <section class="sidebar">
        <div class="container">
            <h2>What We Do</h2>
            <div class="row">
                <div class="col-md-12">
                    <h4>Building Construction</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nullam felis exat.</p>
                </div>
                <div class="col-md-12">
                    <h4>Building Repairs</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nullam felis exat.</p>
                </div>
                <div class="col-md-12">
                    <h4>Custom Design</h4>
                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nullam felis exat.</p>
                </div>
            </div>
        </div>
    </section>
</div>

<!-- Get a Quote Section -->
<section class="py-5 text-center" id="QUATE">
    <div class="container">
        <h2>Get a Quote For Your Project</h2>
        <a href="#add-project" class="btn btn-warning">Free Quote</a>
    </div>
</section>

<!-- Edit Project Section -->
<section class="py-5">
    <div class="container">
        <h2 class="mb-4">Edit Project</h2>
        <form action="EditProjectServlet" method="post">
            <input type="hidden" name="projectId" value="${project.pId}">
            <div class="form-group">
                <label for="name">Project Name:</label>
                <input type="text" class="form-control form-control-lg" id="name" name="name" value="${project.pName}" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control form-control-lg" id="description" name="description" required>${project.pDescription}</textarea>
            </div>
            <div class="form-group">
                <label for="startDate">Start Date:</label>
                <input type="date" class="form-control form-control-lg" id="startDate" name="startDate" value="${project.pStartdate}" required>
            </div>
            <div class="form-group">
                <label for="endDate">End Date:</label>
                <input type="date" class="form-control form-control-lg" id="endDate" name="endDate" value="${project.pEndDate}" required>
            </div>
            <div class="form-group">
                <label for="budget">Budget:</label>
                <input type="number" class="form-control form-control-lg" id="budget" name="budget" value="${project.budget}" required>
            </div>
            <button type="submit" class="btn btn-primary btn-lg">Update Project</button>
        </form>
    </div>
</section>

<!-- Show Projects Section -->
<section class="py-5 text-center">
    <div class="container">
        <h2>Show Projects</h2>
        <div class="row">
            <c:forEach var="project" items="${projects}">
                <div class="col-md-4 mt-4">
                    <div class="card mb-4">
                        <img class="card-img-top" src="project1.jpg" alt="Project Image">
                        <div class="card-body">
                            <h5 class="card-title">Project Name: ${project.pName}</h5>
                            <p class="card-text">Description: ${project.pDescription}</p>
                            <p class="card-text">Start Date: <c:out value="${project.pStartdate != null ? project.pStartdate : 'N/A'}"/></p>
                            <p class="card-text">End Date: <c:out value="${project.pEndDate != null ? project.pEndDate : 'N/A'}"/></p>
                            <p class="card-text">Budget: ${project.budget}</p>
                            <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${project.pId}" class="btn btn-primary btn-sm">View Tasks</a>
                            <a href="${pageContext.request.contextPath}/EditProjectServlet?projectId=${project.pId}" class="btn btn-warning btn-sm">Update</a>
                            <a href="${pageContext.request.contextPath}/DeleteProjectServlet?projectId=${project.pId}" class="btn btn-danger btn-sm">Delete</a>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer py-5 bg-dark text-white">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h5>About Us</h5>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
            </div>
            <div class="col-md-3">
                <h5>Our Services</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Building Construction</a></li>
                    <li><a href="#">Building Repairs</a></li>
                    <li><a href="#">Custom Design</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Quick Links</h5>
                <ul class="list-unstyled">
                    <li><a href="#">Our Services</a></li>
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Our Projects</a></li>
                </ul>
            </div>
            <div class="col-md-3">
                <h5>Contact Us</h5>
                <p>Email: construction@email.com</p>
                <p>Phone: +00 123 456 789</p>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
            </div>
        </div>
        <div class="row mt-4">
            <div class="col text-center">
                <div class="social-icons">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    <a href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
                <p class="mt-3">&copy; 2024 Dream House. All rights reserved.</p>
            </div>
        </div>
    </div>
</footer>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
