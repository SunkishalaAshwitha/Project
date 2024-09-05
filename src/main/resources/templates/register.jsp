<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('your-image.jpg') center center fixed; /* Background image */
            background-size: cover;
        }

        .registration_form {
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
    <div class="registration_form">
        <h2>Register</h2>
        <div class="input_group">
            <i class="fa fa-user"></i>
            <input type="text" placeholder="Username" class="input_text" autocomplete="off" id="username" />
        </div>
        <div class="input_group">
            <i class="fa fa-envelope"></i>
            <input type="email" placeholder="Email" class="input_text" autocomplete="off" id="email" />
        </div>
        <div class="input_group">
            <i class="fa fa-unlock-alt"></i>
            <input type="password" placeholder="Password" class="input_text" autocomplete="off" id="password" />
        </div>
        <div class="input_group">
            <i class="fa fa-unlock-alt"></i>
            <input type="password" placeholder="Retype Password" class="input_text" autocomplete="off" id="retypePassword" />
        </div>
        <div class="input_group">
            <i class="fa fa-mobile"></i>
            <input type="tel" placeholder="Mobile Number" class="input_text" autocomplete="off" id="mobile" />
        </div>
        <div class="input_group">
            <i class="fa fa-birthday-cake"></i>
            <input type="number" placeholder="Age" class="input_text" autocomplete="off" id="age" />
        </div>
        <div class="button_group" id="register_button">
            <a href="#" onclick="validateForm()">Register</a><br>
        </div>
        <div class="footer">
            <a href="/login">Already have an account? Login</a>
        </div>
    </div>

    <script>
        function validateForm() {
            var username = document.getElementById("username").value;
            var email = document.getElementById("email").value;
            var password = document.getElementById("password").value;
            var retypePassword = document.getElementById("retypePassword").value;
            var mobile = document.getElementById("mobile").value;
            var age = document.getElementById("age").value;

            // Email validation: Check if it contains @gmail.com
            if (!email.endsWith('@gmail.com')) {
                alert('Please enter a valid Gmail address.');
                return;
            }

            // Password validation: Check if password and retype password match
            if (password !== retypePassword) {
                alert('Passwords do not match.');
                return;
            }

            // Mobile number validation: Check if it contains only numbers
            if (!/^[0-9]+$/.test(mobile)) {
                alert('Mobile number should contain only numbers.');
                return;
            }

            // Age validation: Check if it's a valid age (you can define your own rules)
            if (age < 18) {
                alert('You must be at least 18 years old to register.');
                return;
            }

            // If all validations pass, you can proceed with the registration process
            alert('Registration successful!');
        }
    </script>
</body>
</html>
