<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('your-image.jpg') center center fixed; /* Background image */
            background-size: cover;
        }

        .login_form {
            max-width: 400px;
            margin: 0 auto;
            padding: 30px;
            background: rgba(255, 255, 255, 0.8); /* Light gray background with transparency */
            border: 20px solid transparent;
            border-image: repeating-linear-gradient(45deg, #3498db, #e74c3c, #f1c40f, #2ecc71);
            border-image-slice: 1;
            border-radius: 50px;
            box-shadow: 0px 0px 20px #888;
            position: relative;
            animation: borderMove 3s infinite;
        }

        @keyframes borderMove {
            0% {
                border: 8px solid #3498db;
            }
            25% {
                border: 8px solid #e74c3c;
            }
            50% {
                border: 8px solid #f1c40f;
            }
            75% {
                border: 8px solid #2ecc71;
            }
            100% {
                border: 8px solid #3498db;
            }
        }

        .input_group {
            margin: 10px 0;
        }

        .input_group i {
            font-size: 30px;
            color: #3498db;
        }

        .input_text {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: none;
            background-color: transparent;
            color: black;
        }

        .button_group {
            text-align: center;
        }

        .button_group a {
            display: inline-block;
            padding: 10px 20px;
            background: #3498db;
            color: #fff;
            border: none;
            text-decoration: none;
            border-radius: 5px;
            cursor: pointer; /* Add this to change the cursor to a hand when hovering over the button */
        }

        .button_group a:hover {
            background: #2186c9;
        }

        .footer {
            text-align: center;
        }
    </style>
</head>
<body>
    <div class="login_form">
        <h2>Login</h2>
        <div class="input_group">
            <i class="fa fa-user"></i>
            <input type="text" placeholder="Username" class="input_text" autocomplete="off" />
        </div>
        <div class="input_group">
            <i class="fa fa-unlock-alt"></i>
            <input type="password" placeholder="Password" class="input_text" autocomplete="off" />
        </div>
        <div class="button_group" id="login_button">
            <a onclick="showLoginMessage()">Submit</a><br>
        </div>
        <div class="footer">
            <a href="#">Forgot Password?</a>
            <a href="#">SignUp</a>
        </div>
    </div>

    <script>
        function showLoginMessage() {
            alert("Login Successful"); // Display a simple alert message
        }
    </script>
</body>
</html>