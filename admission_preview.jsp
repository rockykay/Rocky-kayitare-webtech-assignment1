<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Admission Preview</title>


   <style>
    body {
       font-family: Arial, sans-serif;
       background-color: #666666; /* Change to the background gradient */
       margin: 0;
       padding: 0;
   }

      .container {
       max-width: 600px;
       ]
       margin: 0 auto;
       padding: 20px;
       background-color: lightgray;
       border-radius: 10px;
       box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
   }

   h1 {
       color: #007BFF; /* Change the color to match the first CSS */
       text-align: center;
   }

   p {
       text-align: left;
       margin-bottom: 10px;
   }

   a {
       text-decoration: none;
       color: #007BFF;
   }

   a:hover {
       text-decoration: underline;
   }

   .footer {
       text-align: center;
       margin-top: 20px;
       font-size: 0.8rem;
       color: #777;
   }

</style>
</head>
<body>
    <div class="container">
        <h1>Student Admission Preview</h1>

        <!-- Display the student information -->
        <p><strong>Name:</strong> <%= request.getAttribute("name") %></p>
        <p><strong>Course:</strong> <%= request.getAttribute("course") %></p>
        <p><strong>Email:</strong> <%= request.getAttribute("email") %></p>
        <p><strong>Password:</strong> <%= request.getAttribute("password") %></p>
        <p><strong>Date of Birth:</strong> <%= request.getAttribute("dob") %></p>
        <p><strong>Additional Comments:</strong> <%= request.getAttribute("comments") %></p>

        <!-- Confirmation button -->
        <button onclick="confirmAdmission()">Confirm Admission</button>
        <a href="jspp/login.jsp">Login</a>


    </div>
    <div class="footer">
        &copy; 2023 Student Admission Request App
    </div>
     <script>
            function confirmAdmission() {
                // Display a confirmation alert
                alert("Student admission is successful!");
            }
        </script>

</body>
</html>
