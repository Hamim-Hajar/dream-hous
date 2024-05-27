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
<nav class="navbar navbar-expand-lg navbar-light bg-white">
    <a class="navbar-brand" href="#"><img src="https://cdn-icons-png.flaticon.com/128/36/36507.png" alt="Dream House Logo" class="logo"> Dream House</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav ml-auto">
            <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/prj">Projects</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Blog</a></li>
            <li class="nav-item"><a class="nav-link" href="#">Portfolio</a></li>
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
<section class="team">
    <h2>Our Team</h2>
    <p>We Have Experienced Members</p>
    <div class="team-members">
        <div class="member">
            <img src="https://png.pngtree.com/png-vector/20240206/ourlarge/pngtree-construction-worker-at-work-png-image_11665184.png" alt="Team Member">
            <h3>Name</h3>
            <p>Lead Architect</p>
        </div>
        <div class="member">
            <img src="https://png.pngtree.com/png-vector/20240206/ourlarge/pngtree-construction-worker-at-work-png-image_11665184.png" alt="Team Member">
            <h3>Name</h3>
            <p>Construction Manager</p>
        </div>
        <div class="member">
            <img src="https://png.pngtree.com/png-vector/20240206/ourlarge/pngtree-construction-worker-at-work-png-image_11665184.png" alt="Team Member">
            <h3>Name</h3>
            <p>Lead Technician</p>
        </div>
        <div class="member">
            <img src="https://png.pngtree.com/png-vector/20240206/ourlarge/pngtree-construction-worker-at-work-png-image_11665184.png" alt="Team Member">
            <h3>Name</h3>
            <p>Project Manager</p>
        </div>
    </div>
</section>

<!--<section class="cta">
    <p>Looking for a constructor for your next project?</p>
    <a href="#" class="btn">Subscribe Now</a>
</section>-->

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
