<!DOCTYPE html>
<html>
<head>
    <title>Student Portal</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #007BFF;
            color: #fff;
            padding: 10px 0;
        }

        .navbar ul {
            list-style-type: none;
            padding: 0;
        }

        .navbar ul li {
            display: inline;
            margin-right: 20px;
        }

        .navbar ul li a {
            color: #fff;
            text-decoration: none;
            font-weight: bold;
        }

        .welcome-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            margin-top: 20px;
        }

        .welcome-container h1 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .welcome-container p {
            font-size: 16px;
            margin: 5px 0;
        }

        .portal-sections {
            display: flex;
            justify-content: space-between;
            margin-top: 20px;
        }

        .section {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            flex: 1;
            margin-right: 10px;
        }

        .section h2 {
            font-size: 20px;
            margin-bottom: 10px;
        }

        .button-container {
            display: flex;
            justify-content: center;
            margin-top: 200px;
        }

        #logoutButton {
            background-color: #4668ff;
            color: #fff;
            border: none;
            padding: 25px 40px;
            border-radius: 15px;
            font-weight: bold;
            cursor: pointer;
        }

        #logoutButton:hover {
            background-color: #2b00ff;
        }
    </style>
</head>
<body>
    <header>
        <div class="navbar">
            <ul>
                <li><a href="#">Dashboard</a></li>
                <li><a href="#">Courses</a></li>
                <li><a href="#">Grades</a></li>
                <li><a href="#">Profile</a></li>
                <li><a href="#">Settings</a></li>
            </ul>
        </div>
    </header>

    <div class="welcome-container">
        <h1>Welcome, <span id="userName">Student</span></h1>
        <p>Your Student ID: <span id="studentID">24438</span></p>
        <p>Program: <span id="program">Software Engineering </span></p>
    </div>

    <div class="portal-sections">
        <div class="section">
            <h2>My Courses</h2>
            <p>--WEB TECHNOLOGY</p>
            <p>--MULTIVARIABLE</p>
            <p>--PL/SQL</p>
        </div>
        <div class="section">
            <h2>Upcoming Assignments</h2>
            <p>--WEB TECHNOLOGY</p>
        </div>
    </div>


    <div class="button-container">
        <button id="logoutButton">Logout</button>
    </div>

    <script>
        document.getElementById('logoutButton').addEventListener('click', function () {
            window.location.href = 'login.jsp';
        });
    </script>
</body>
</html>
