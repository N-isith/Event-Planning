<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Wedding</title>
    <!-- Link to Custom Styles CSS -->
    <link rel="stylesheet" href="Style.css">
    <link rel="stylesheet" href="Footer.css">
    
    <!-- Link to Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
    
    
</head>
<body>

    <header>
            <div id="logo">
                <img src="nisitha.png" alt="Logo" width="100">
            </div>
            <div id="signInSignUp">
                <a href="#" class="signin">Sign In</a>
                <a href="#" class="signup">Sign Up</a>
            </div>
    </header>

    <nav class="navbar">
        <div class="navigate bar">
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Gallery</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact Us</a>
                </li>
                <!-- Add the Search Form with a Magnifying Glass Icon -->
                <li class="nav-item">
                    <form class="search-form" action="search.jsp" method="get">
                        <input type="text" name="query" placeholder="Search">
                        <button type="button" onclick="toggleSearch()">
                            <i class="fas fa-search"></i> <!-- Font Awesome magnifying glass icon -->
                        </button>
                    </form>
                </li>
            </ul>
        </div>
    </nav>
    
     <!-- Footer -->
    <footer>
        <div class="footer-left">
        	<!-- Replace the calendar image with Google Calendar embed code -->
        	<iframe src="https://calendar.google.com/calendar/embed?src=nisithalakshan94%40gmail.com&ctz=UTC"></iframe>
    	</div>
        <div class="footer-middle">
            <!-- Menu -->
            <h3>Menu</h3>
            <ul>
                <li><a href="#">Home</a></li><br/>
                <li><a href="#">About Us</a></li><br/>
                <li><a href="#">Contact Us</a></li><br/>
            </ul>
        </div>
        <div class="footer-right">
            <!-- Find us on -->
            <h3>Find us on</h3>
            <div class="social-icons">
                <a href="#" target="_blank"><i class="fab fa-facebook"></i></a><br/>
                <a href="#" target="_blank"><i class="fab fa-instagram"></i></a><br/>
                <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a><br/>
                <a href="#" target="_blank"><i class="fab fa-twitter"></i></a><br/>
            </div>
        </div>
    </footer>
    
    <script>
        function toggleSearch() {
            var searchForm = document.querySelector('.search-form');
            searchForm.classList.toggle('active');
        }
    </script>
    

</body>
</html>