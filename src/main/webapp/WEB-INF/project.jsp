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
    <script>
        function confirmDeletion(event) {
            if (!confirm("Are you sure you want to delete this project?")) {
                event.preventDefault();
            }
        }
    </script>
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
            <a href="${pageContext.request.contextPath}/prj" class="btn btn-warning">GET A FREE QUOTE</a>
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

<!-- Add New Project Section -->
<section class="py-5">
    <div class="container">
        <h2 class="mb-4">Add a New Project</h2>
        <form action="ProjectServlet?action=addProject" method="post">
            <div class="form-group row">
                <label for="name" class="col-sm-2 col-form-label">Project Name</label>
                <div class="col-sm-10">
                    <input type="text" class="form-control" id="name" name="name" placeholder="Project Name" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="description" class="col-sm-2 col-form-label">Description</label>
                <div class="col-sm-10">
                    <textarea class="form-control" id="description" name="description" placeholder="Description" required></textarea>
                </div>
            </div>
            <div class="form-group row">
                <label for="startDate" class="col-sm-2 col-form-label">Start Date</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" id="startDate" name="startDate" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="endDate" class="col-sm-2 col-form-label">End Date</label>
                <div class="col-sm-10">
                    <input type="date" class="form-control" id="endDate" name="endDate" required>
                </div>
            </div>
            <div class="form-group row">
                <label for="budget" class="col-sm-2 col-form-label">Budget</label>
                <div class="col-sm-10">
                    <input type="number" class="form-control" id="budget" name="budget" placeholder="Budget" required>
                </div>
            </div>
            <div class="form-group row">
                <div class="col-sm-10 offset-sm-2">
                    <button type="submit" class="btn btn-primary">Add Project</button>
                </div>
            </div>
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
                            <img src="https://5.imimg.com/data5/MD/HY/CS/SELLER-41179378/building-construction-project.jpg">
                            <h5 class="card-title">Project Name: ${project.pName}</h5>
                            <p class="card-text">Description: ${project.pDescription}</p>
                            <p class="card-text">Start Date: <c:out value="${project.pStartdate != null ? project.pStartdate : 'N/A'}"/></p>
                            <p class="card-text">End Date: <c:out value="${project.pEndDate != null ? project.pEndDate : 'N/A'}"/></p>
                            <p class="card-text">Budget: ${project.budget}</p>
                            <a href="${pageContext.request.contextPath}/ListTasksServlet?projectId=${project.pId}" class="btn btn-primary btn-sm">Show Project Resource</a>
                            <form action="EditProjectServlet" method="get" style="display: inline;">
                                <input type="hidden" name="projectId" value="${project.pId}" />
                                <button type="submit" class="btn btn-warning btn-sm">Update</button>
                            </form>
                            <form action="ProjectServlet?action=delete" method="post" style="display: inline;" onsubmit="confirmDeletion(event)">
                                <input type="hidden" name="projectId" value="${project.pId}" />
                                <button type="submit" class="btn btn-warning btn-sm">Delete</button>
                            </form>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<!-- Footer -->
<footer class="footer text-center text-md-left">
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <h5>Company Name</h5>
                <p>Dream House</p>
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
                <h5>Service Links</h5>
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
