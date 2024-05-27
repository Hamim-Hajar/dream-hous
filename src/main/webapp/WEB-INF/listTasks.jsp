<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des Tâches</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style><%@include file="css/Pstyles.css"%></style>
</head>
<body>

<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <a class="navbar-brand" href="#"> <img src="https://cdn-icons-png.flaticon.com/128/36/36507.png" class="logo"> Dream House</a>


    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"> <a href="${pageContext.request.contextPath}/listProject">Projects</a></li>
            <li class="nav-item"> <a href="${pageContext.request.contextPath}/AddTaskServlet?projectId=${projectId}">Add Task</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Portfolio</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Service</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Services</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Contact</a></li>
            <li class="nav-item"><a class="nav-link" href="#">About</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Home</a></li>
        </ul>
    </div>
</nav>
<div class="container-flex">
    <header class="header">
        <div class="header-background"></div>
        <div class="container header-content">
            <h1 class="display-4">DREAM HOUSE COMPANY</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Ut quis egestas pellentesque libero dolor in diam consequat ut.
                Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                Ut quis egestas pellentesque libero </p>
            <a href="${pageContext.request.contextPath}/AddTaskServlet?projectId=${projectId}">Add Task</a>
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


<h2>Liste des Tâches</h2>

<section class="py-5 text-center">
    <div class="container">
        <h2>Show Tasks</h2>
        <div class="row">
            <c:forEach var="task" items="${tasks}">
                <div class="col-md-4 mt-4">
                    <div class="card mb-4">
                        <!-- Ajoutez ici une image pour la tâche si nécessaire -->
                        <div class="card-body">
                            <img src="https://5.imimg.com/data5/MD/HY/CS/SELLER-41179378/building-construction-project.jpg">
                            <h5 class="card-title">Task Description: ${task.tDescription}</h5>
                            <p class="card-text"><strong>Description:</strong> ${task.tDescription}</p>
                            <p class="card-text"><strong>Start Date:</strong> ${task.tStartdate}</p>
                            <p class="card-text"><strong>End Date:</strong> ${task.tEndDate}</p>
                            <p class="card-text"><strong>Status:</strong> ${task.statut}</p>
                            <p class="card-text"><strong>Ressources:</strong> ${task.resources}</p>
                            <div class="button-container">
                                <a href="${pageContext.request.contextPath}/UpdateTaskServlet?taskId=${task.tId}&projectId=${projectId}" class="update-button">Update</a>
                                <a href="${pageContext.request.contextPath}/DeleteTaskServlet?taskId=${task.tId}&projectId=${projectId}" class="delete-button">Delete</a>
                                <a href="${pageContext.request.contextPath}/ListResourcesServlet?taskId=${task.tId}" class="resources-button">See All Resources</a>
                            </div>
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

</body>
</html>
