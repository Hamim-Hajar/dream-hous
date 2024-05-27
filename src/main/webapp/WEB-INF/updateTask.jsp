<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Mettre à jour une Tâche</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style><%@include file="css/Pstyles.css"%></style>
</head>
<body>
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
<section class="py-5">
    <div class="container">
        <h2 class="mb-4">Mettre à jour une Tâche</h2>
        <form action="${pageContext.request.contextPath}/UpdateTaskServlet" method="POST">
            <input type="hidden" name="projectId" value="${projectId}">
            <input type="hidden" name="tId" value="${task.tId}">
            <div class="form-group">
                <label for="description">Description de la Tâche:</label>
                <input type="text" class="form-control form-control-lg" id="description" name="tDescription" value="${task.tDescription}" required>
            </div>
            <div class="form-group">
                <label for="startDate">Date de Début:</label>
                <input type="date" class="form-control form-control-lg" id="startDate" name="tStartdate" value="${task.tStartdate}" required>
            </div>
            <div class="form-group">
                <label for="endDate">Date de Fin:</label>
                <input type="date" class="form-control form-control-lg" id="endDate" name="tEndDate" value="${task.tEndDate}" required>
            </div>
            <div class="form-group">
                <label for="status">Statut:</label>
                <select id="status" class="form-control form-control-lg" name="status" required>
                    <option value="A faire" ${task.statut == 'A faire' ? 'selected' : ''}>A faire</option>
                    <option value="En cours" ${task.statut == 'En cours' ? 'selected' : ''}>En cours</option>
                    <option value="Terminé" ${task.statut == 'Terminé' ? 'selected' : ''}>Terminé</option>
                </select>
            </div>
            <div class="form-group">
                <label for="resources">Ressources:</label>
                <input type="text" class="form-control form-control-lg" id="resources" name="resources" value="${task.resources}" required>
            </div>
            <button type="submit" class="btn btn-primary btn-lg">Update Task</button>
        </form>
    </div>
</section>
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

</body>
</html>
