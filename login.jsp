<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
</head>
<style>
    body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-image: linear-gradient(to bottom, #666666, #000000);
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
}

.form-container {
    width: 30%;
    max-width: 800px;
    padding: 20px;
    background-color:lightgray;
    border-radius: 12px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);

}



h1 {
    font-size: 24px;
    text-align: center;
    font-weight: bold;
    margin-bottom: 20px;
    color: #4285f4;
}

form {

    display: flex;
    flex-direction: column;
}

label {
    margin-bottom: 8px;
    font-weight: bold;
    color: #333;
}

input[type="text"],
input[type="email"],
input[type="password"] {
    padding: 10px;
    margin-bottom: 16px;
    border: 1px solid #ccc;
    border-radius: 8px;
    font-size: 16px;
    background-color: #f5f5f5;
}

button {
    background-color: #4285f4;
    color: #fff;
    padding: 12px;
    border: none;
    border-radius: 8px;
    cursor: pointer;
    font-size: 16px;
    font-weight: bold;
}

button:hover {
    background-color: #357ae8;
}


p {
    text-align: center;
    margin-top: 10px;
}

.custom-alert {
    background-color: #fff;
    border: 1px solid #ccc;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
    padding: 10px;
    position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    z-index: 999;
    text-align: center;
}

.hidden {
    display: none;
}

button#closeAlert {
    background-color: #007BFF;
    color: #fff;
    padding: 5px 10px;
    border: none;
    cursor: pointer;
    margin-top: 10px;
}

button#closeAlert:hover {
    background-color: #0056b3;
}



</style>
<body>
    <div class="form-container">
        <h1>Login</h1>
        <form id="loginForm">
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>

            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>


            <button type="submit">Login</button>
        </form>

    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            const loginForm = document.getElementById('loginForm');
            const notification = document.getElementById('notification'); // Add this line

            loginForm.addEventListener('submit', function (e) {
                e.preventDefault();

                // Retrieve email and password from the session
                const storedEmail = '<%= session.getAttribute("email") %>';
                const storedPassword = '<%= session.getAttribute("password") %>';
                const admissionSuccessful = <%= session.getAttribute("admissionSuccessful") %>;

                // Get user-entered email and password
                const enteredEmail = document.getElementById('email').value;
                const enteredPassword = document.getElementById('password').value;

                // Check if admission was successful and entered credentials match stored credentials
              if (admissionSuccessful && enteredEmail === storedEmail && enteredPassword === storedPassword) {
                  // Redirect to the welcome page upon successful login
                  window.location.href = 'welcome.jsp';
              } else {
                  // Display an error message or handle login failure as needed
                  alert('Login failed. Please check your email and password.');
                  return false;
              }

            });

            function showLoginFailureNotification() {
                // Update the notification element with a login failure message
                notification.textContent = 'Login failed. Please check your email and password.';
                notification.className = 'notification error'; // Apply error styling
                notification.classList.remove('hidden');
            }
        });
    </script>



    <script>
        document.addEventListener('DOMContentLoaded', function () {
        const loginForm = document.getElementById('loginForm');

        loginForm.addEventListener('submit', function (e) {
            e.preventDefault();


            window.location.href = 'welcome.jsp';
        });
    });
    </script>

</body>
</html>