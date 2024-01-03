<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Happy Wedding</title>
    <!-- Link to Custom Styles CSS -->
    <link rel="stylesheet" href="Style.css">
    
    <!-- Link to Font Awesome for icons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
    
   
</head>
<body>

	<div class="theHeader">
    <header>
            <div id="logo">
                <img src="lak_weddings.jpg" alt="Logo" width="200">
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
                    <a class="nav-link" href="Homepage.jsp">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="AboutUs.jsp">About Us</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Services</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Gallery</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="ContactUs.jsp">Contact Us</a>
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
    </div>
    
    
    <div class="fullContainer">
    <div class="contImg">
    <img alt="wedImg" src="contactWed.webp">
    </div>
    
    <div class="container">
        <h1>Contact Us</h1>
        
        <!-- Form with client-side validation -->
        <form id="contactForm" action="ContactServlet" method="post" onsubmit="return validateForm()">
            <label for="name">Name:</label>
            <input type="text" id="name" name="name" required><br>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required><br>
            
            <label for="message">Message:</label>
            <textarea id="message" name="message" rows="4" required></textarea><br>
            
            <input type="submit" value="Send">
        </form>
    </div>
    </div>
  
    
    
    
    
     <!-- Footer -->
    <footer>
        <div class="footer-left" id="calendar-container">
        	<!-- the calender -->
        </div>
        <div class="footer-middle">
            <!-- Menu -->
            <h3>Quick Links</h3>
            <ul>
                <li><a href="Homepage.jsp">Home</a></li><br/>
                <li><a href="AboutUs.jsp">About Us</a></li><br/>
                <li><a href="ContactUs.jsp">Contact Us</a></li><br/>
            </ul>
        </div>
        <div class="footer-right">
        <div id="logofoot">
        	<img src="lak_weddings.jpg" alt="LogoFoot" width="200">
        </div>
            <!-- Find us on -->
            <h3>Find us on</h3>
            <div class="social-icons">
                <a href="#" target="_blank"><i class="fab fa-facebook"></i></a>
                <a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
                <a href="#" target="_blank"><i class="fab fa-linkedin"></i></a>
                <a href="#" target="_blank"><i class="fab fa-twitter"></i></a>
            </div>
        </div>
    </footer>
    
    <script>
        function toggleSearch() {
            var searchForm = document.querySelector('.search-form');
            searchForm.classList.toggle('active');
        }
        
        
     // Function to create and render a simple calendar
        function renderCalendar() {
            var today = new Date();
            var currentMonth = today.getMonth();
            var currentYear = today.getFullYear();

            // Array of month names for display
            var monthNames = [
                "January", "February", "March", "April", "May", "June",
                "July", "August", "September", "October", "November", "December"
            ];

            // Get the number of days in a month
            function daysInMonth(month, year) {
                return new Date(year, month + 1, 0).getDate();
            }

            // Get the first day of the month
            function getFirstDay(month, year) {
                return new Date(year, month, 1).getDay();
            }

            // Container to hold the calendar HTML
            var calendarHTML = '<h3>' + monthNames[currentMonth] + ' ' + currentYear + '</h3>';
            calendarHTML += '<table><tr><th>Sun</th><th>Mon</th><th>Tue</th><th>Wed</th><th>Thu</th><th>Fri</th><th>Sat</th></tr>';

            var firstDay = getFirstDay(currentMonth, currentYear);
            var daysInThisMonth = daysInMonth(currentMonth, currentYear);

            var dayCounter = 1;

            // Create the calendar table
            for (var i = 0; i < 6; i++) {
                calendarHTML += '<tr>';
                for (var j = 0; j < 7; j++) {
                    if ((i === 0 && j < firstDay) || dayCounter > daysInThisMonth) {
                        calendarHTML += '<td></td>';
                    } else {
                        calendarHTML += '<td>' + dayCounter + '</td>';
                        dayCounter++;
                    }
                }
                calendarHTML += '</tr>';
            }

            calendarHTML += '</table>';

            // Insert the calendar into the specified container
            document.getElementById('calendar-container').innerHTML = calendarHTML;
        }

        // Call the function to render the calendar
        renderCalendar();

        
     // Client-side form validation
        function validateForm() {
            const name = document.getElementById('name').value;
            const email = document.getElementById('email').value;
            const message = document.getElementById('message').value;

            if (name.trim() === '' || email.trim() === '' || message.trim() === '') {
                alert('Please fill in all fields.');
                return false;
            }

            // You can add more advanced validation here, such as email format validation

            return true;
        }
        
    </script>
    
</body>
</html>