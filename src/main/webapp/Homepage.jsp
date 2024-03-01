<%@ page
    language="java"
    contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport"
            content="width=device-width, initial-scale=1.0">
        <title>Happy Wedding</title>
        <!-- Link to Custom Styles CSS 
    <link rel="stylesheet" href="Style.ss">-->

        <!-- Link to Font Awesome for icons -->
        <link rel="stylesheet"
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">

        <!-- Bootstrap css-->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
            crossorigin="anonymous">

        <!-- Bootsteap js-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
            crossorigin="anonymous"></script>

    </head>

    <body>

        <nav class="navbar bg-primary navbar-expand-lg" data-bs-theme="light">
            <div class="container-fluid">
                <a class="navbar-brand"
                    href="#">Navbar scroll</a>
                <button class="navbar-toggler"
                    type="button"
                    data-bs-toggle="collapse"
                    data-bs-target="#navbarScroll"
                    aria-controls="navbarScroll"
                    aria-expanded="false"
                    aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse"
                    id="navbarScroll">
                    <ul class="navbar-nav me-auto my-2 my-lg-0 navbar-nav-scroll"
                        style="--bs-scroll-height: 100px;">
                        <li class="nav-item">
                            <a class="nav-link active"
                                aria-current="page"
                                href="#">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link"
                                href="#">Link</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle"
                                href="#"
                                role="button"
                                data-bs-toggle="dropdown"
                                aria-expanded="false">
                                Link
                            </a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item"
                                        href="#">Action</a></li>
                                <li><a class="dropdown-item"
                                        href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item"
                                        href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled"
                                aria-disabled="true">Link</a>
                        </li>
                    </ul>
                    <form class="d-flex"
                        role="search">
                        <input class="form-control me-2"
                            type="search"
                            placeholder="Search"
                            aria-label="Search">
                        <button class="btn bg-warning btn-outline-success"
                            type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>

        <h1> </h1>

        <div class="Home">
            <p>Lets Make Your Dream Real!!!</p>
        </div>

        <br><br><br><br>
        <div class="Home1">
            <img alt="slide1"
                src="">
        </div>

        <br><br><br><br><br><br><br><br><br>
        <div class="Home2">
            <img alt="slide2"
                src="">
        </div>




        <!-- Footer -->
        <footer>
            <div class="footer-left"
                id="calendar-container">
                <!-- the calender -->
            </div>
            <div class="footer-middle">
                <!-- Menu -->
                <h3>Quick Links</h3>
                <ul>
                    <li><a href="Homepage.jsp">Home</a></li><br />
                    <li><a href="AboutUs.jsp">About Us</a></li><br />
                    <li><a href="ContactUs.jsp">Contact Us</a></li><br />
                </ul>
            </div>
            <div class="footer-right">
                <div id="logofoot">
                    <img src="lak_weddings.jpg"
                        alt="LogoFoot"
                        width="200">
                </div>
                <!-- Find us on -->
                <h3>Find us on</h3>
                <div class="social-icons">
                    <a href="#"
                        target="_blank"><i class="fab fa-facebook"></i></a>
                    <a href="#"
                        target="_blank"><i class="fab fa-instagram"></i></a>
                    <a href="#"
                        target="_blank"><i class="fab fa-linkedin"></i></a>
                    <a href="#"
                        target="_blank"><i class="fab fa-twitter"></i></a>
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


        </script>

    </body>

    </html>