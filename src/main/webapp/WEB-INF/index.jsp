<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Construction Company</title>
    <style><%@include file="css/Pstyles.css"%></style>
</head>
<body>
<header>
    <div class="logo">
        <img src="logo-placeholder.png" alt="Logo">
    </div>
    <nav>
        <ul>
            <li><a href="#">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Services</a></li>
            <li><a href="${pageContext.request.contextPath}/prj">Projects</a></li>
            <li><a href="#">Contact</a></li>
        </ul>
    </nav>
</header>

<section class="hero">
    <div class="hero-text">
        <h1>Company Name</h1>
        <p>We Build Dream House</p>
        <a href="#" class="btn">Contact Us</a>
    </div>
    <div class="hero-image">
        <img src="https://wall.atlasrwi.com/wp-content/uploads/sites/2/2019/08/type-i.png" alt="Construction Image">
    </div>
</section>

<section class="team">
    <h2>Our Team</h2>
    <p>We Have Experienced Members</p>
    <div class="team-members">
        <div class="member">
            <img src="https://via.placeholder.com/150" alt="Team Member">
            <h3>Name</h3>
            <p>Lead Architect</p>
        </div>
        <div class="member">
            <img src="https://via.placeholder.com/150" alt="Team Member">
            <h3>Name</h3>
            <p>Construction Manager</p>
        </div>
        <div class="member">
            <img src="https://via.placeholder.com/150" alt="Team Member">
            <h3>Name</h3>
            <p>Lead Technician</p>
        </div>
        <div class="member">
            <img src="https://via.placeholder.com/150" alt="Team Member">
            <h3>Name</h3>
            <p>Project Manager</p>
        </div>
    </div>
</section>

<section class="cta">
    <p>Looking for a constructor for your next project?</p>
    <a href="#" class="btn">Subscribe Now</a>
</section>

<footer>
    <div class="footer-content">
        <div class="footer-section company">
            <h3>Company Name</h3>
            <p>About company details description.</p>
        </div>
        <div class="footer-section quick-links">
            <h3>Quick Links</h3>
            <ul>
                <li><a href="#">App Store</a></li>
                <li><a href="#">Play Store</a></li>
                <li><a href="#">Latest News</a></li>
                <li><a href="#">Our Blog</a></li>
            </ul>
        </div>
        <div class="footer-section support">
            <h3>Support</h3>
            <ul>
                <li><a href="#">Our Services</a></li>
                <li><a href="#">How We Do</a></li>
                <li><a href="#">Shop</a></li>
                <li><a href="#">FAQ</a></li>
            </ul>
        </div>
        <div class="footer-section contact-us">
            <h3>Contact Us</h3>
            <ul>
                <li><a href="#">Address</a></li>
                <li><a href="#">Phone</a></li>
                <li><a href="#">Email</a></li>
            </ul>
        </div>
    </div>
</footer>
</body>
</html>
