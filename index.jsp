<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Admission Request</title>

    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #666666; /* Change to the background gradient */
        margin: 0;
        padding: 0;
    }

    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: lightgray; /* Change to the desired background color */
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }

    h1 {
        color: #007BFF; /* Change the color to match the first CSS */
        text-align: center;
    }

    form {
        text-align: left;
    }

    label {
        font-weight: bold;
    }

    input[type="text"],
    input[type="email"],
    input[type="date"],
    input[type="password"],
    textarea {
        width: 100%;
        padding: 10px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    textarea {
        resize: vertical;
    }

    input[type="submit"] {
        background-color: #007BFF;
        color: white;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #0056b3;
    }

    .footer {
        text-align: center;
        margin-top: 20px;
        font-size: 0.8rem;
        color: #777;
    }


    .error {
        color: red;
        font-weight: bold;
    }
    </style>

</head>
<body>
    <div class="container">
        <h1>Student Admission Request</h1>



        <!-- Form for student admission request -->
        <form action="AdmissionServlet" method="post">
            <label for="name">Name: </label>
            <input type="text" id="name" name="name" required><br><br>

            <label for="course">Course: </label>
            <input type="text" id="course" name="course" required><br><br>

            <label for="email">Email: </label>
            <input type="email" id="email" name="email" required><br><br>

            <label for="password">Password: </label>
            <input type="password" id="password" name="password" required><br><br>

            <label for="dob">Date of Birth: </label>
            <input type="date" id="dob" name="dob" required><br><br>

            <label for="comments">Additional Comments: </label>
            <textarea id="comments" name="comments" rows="4"></textarea><br><br>

            <input type="submit" value="Submit">
        </form>
    </div>
    <div class="footer">
        &copy; 2023 Student Admission Request App
    </div>
</body>
</html>
