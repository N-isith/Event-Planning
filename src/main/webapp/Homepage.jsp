<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Wedding</title>
    <!-- Link to Custom Styles CSS -->
    <link rel="stylesheet" href="Homepage.css">
    
    <!-- Link to Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    <style>
        /* Initially hide the search input */
        .search-form input {
            display: none;
        }

        /* Show the search input when the form has the "active" class */
        .search-form.active input {
            display: inline-block;
        }
    </style>
    
    
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
    
    
    <script>
        function toggleSearch() {
            var searchForm = document.querySelector('.search-form');
            searchForm.classList.toggle('active');
        }
    </script>
    
    

</body>
</html>
