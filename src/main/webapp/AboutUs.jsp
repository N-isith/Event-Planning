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

    <!-- Link to Custom Styles CSS -->
        <link rel="stylesheet" href="Style.css">

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
    <nav class="navbar navbar-expand-lg">
      <div class="container-fluid">
        <div id="logofoot">
                    <a href="Homepage.jsp">
                        <img src="lak_weddings.png" alt="LogoFoot" width="150" height="65">
                    </a>
        </div>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link text-white" href="#">Features</a>
            </li>
            <li class="nav-item">
              <a class	="nav-link text-white" href="#">Pricing</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                Dropdown link
              </a>
              <ul class="dropdown-menu">
                <li><a class="dropdown-item" href="#">Action</a></li>
                <li><a class="dropdown-item" href="#">Another action</a></li>
                <li><a class="dropdown-item" href="#">Something else here</a></li>
              </ul>
            </li>
          </ul>
        </div>
        <div class="d-flex" role="search">
          <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
          <button class="btn btn-outline-success" type="submit">Search</button>
        </div>
      </div>
    </nav>

    <!--Body of the page-->
    <div class="aboutUs">
      <div class="abtus-header">
        <p>About Wedding Planner</p>
      </div>

      <div class="descripton">
        
      </div>
    </div>


    <!--  footer -->
    <div class="foot overflow-hidden">
      <!-- Footer -->
      <footer class="text-center text-lg-start text-white">
        <!-- Grid container -->
        <section class="">
          <!--Grid row-->
          <div class="row">
            <!-- Grid column -->
            <div class="col-md-3 col-lg-3 col-xl-3 mx-auto mt-3">
              <div class="" id="calendar-container">
                <!-- the calender -->
              </div>
            </div>
            <!-- Grid column -->

            <hr class="w-100 clearfix d-md-none" />

            <!-- Grid column -->
            <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mt-3">
              <div class="foot-links">
                <!-- Menu -->
                <h3>Quick Links</h3>
                <ul>
                  <li><a href="Homepage.jsp">Home</a></li><br />
                  <li><a href="AboutUs.jsp">About Us</a></li><br />
                  <li><a href="ContactUs.jsp">Contact Us</a></li><br />
                </ul>
              </div>
            </div>
            <!-- Grid column -->

            <hr class="w-100 clearfix d-md-none" />

            <!-- Grid column -->
            <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mt-3 text-center text-md-end">
              <div class="">
                <div id="logofoot">
                  <img src="lak_weddings.png" alt="LogoFoot" width="200">
                </div>
                <!-- Find us on -->
                <h3 class="text-center" style="margin-right: -30px;">Find us on</h3>
                <div>
                  <!-- Facebook -->
                  <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button">
                    <i class="fab fa-facebook-f"></i>
                  </a>

                  <!-- Twitter -->
                  <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button">
                    <i class="fab fa-twitter"></i>
                  </a>

                  <!-- Google -->
                  <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button">
                    <i class="fab fa-google"></i>
                  </a>

                  <!-- Instagram -->
                  <a class="btn btn-outline-light btn-floating m-1" class="text-white" role="button">
                    <i class="fab fa-instagram"></i>
                  </a>
                </div>
              </div>
            </div>
            <hr class="my-3">
          </div>
          <!--Grid row-->
        </section>
        <!-- Section: Copyright -->
        <!-- Grid container -->
      </footer>
      <!-- Footer -->
    </div>
    <!-- End of .container -->

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