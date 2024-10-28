<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Book a Train Ticket</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScsULA2yAD0mg1hdjt411bXcM-UeMIA2jUzg&s");
            background-repeat: no-repeat;
            background-size: 200% 100%;
        }
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            max-width: 400px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            opacity: 0.8;
        }
        .form-container h2 {
            text-align: center;
            background-color: lightgreen;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input, .form-group select {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
        }
        .error {
            color: red;
            font-size: 12px;
            display: none;
        }
        .submit-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            width: 100%;
        }
        .submit-button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Book a Train Ticket</h2>
        <form id="ticketForm" action="BookTicketServlet" method="post" onsubmit="return validateForm();">
            <div class="form-group">
                <label for="from">From:</label>
                <select id="from" name="from" required>
                    <option value="">Select a Station</option>
                    <option value="Chennai Egmore">Chennai Egmore</option>
                    <option value="Salem">Salem</option>
                    <option value="Dindigul">Dindigul</option>
                    <option value="Tirunelveli">Tirunelveli</option>
                    <option value="Coimbatore">Coimbatore</option>
                    <option value="Vellore">Vellore</option>
                    <option value="Madurai">Madurai</option>
                    <option value="Nagercoil">Nagercoil</option>
                    <option value="Tiruchendur">Tiruchendur</option>
                    <option value="Kanyakumari">Kanyakumari</option>
                </select>
            </div>
            <div class="form-group">
                <label for="to">To:</label>
                <select id="to" name="to" required>
                    <option value="">Select a Station</option>
                    <option value="Chennai Central">Chennai Central</option>                   
                    <option value="Chennai Egmore">Chennai Egmore</option>
                </select>
            </div>
            <div class="form-group">
                <label for="date">Date of Journey:</label>
                <input type="date" id="date" name="date" required>
            </div>
            <div class="form-group">
                <label for="name">Passenger Name:</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="age">Passenger Age:</label>
                <input type="number" id="age" name="age" required min="1" max="120">
                <span id="ageError" class="error">Please enter a valid age (1-120).</span>
            </div>
            <div class="form-group">
                <label for="mobile">Mobile Number:</label>
                <input type="text" id="mobile" name="mobile" required pattern="[0-9]{10}">
                <span id="mobileError" class="error">Please enter a valid 10-digit mobile number.</span>
            </div>
            <div class="form-group">
                <label for="tickets">Number of Tickets:</label>
                <input type="number" id="tickets" name="tickets" min="1" required>
                <span id="ticketError" class="error">Please enter at least 1 ticket.</span>
            </div>
            <input type="submit" value="Book Ticket" class="submit-button">
        </form>
    </div>

    <script>
        document.addEventListener('DOMContentLoaded', function() {
            const dateInput = document.getElementById('date');
            const today = new Date().toISOString().split('T')[0];
            dateInput.setAttribute('min', today);
        });

        // Form validation function
        function validateForm() {
            let isValid = true;

            // Validate age
            const age = document.getElementById('age').value;
            if (age < 1 || age > 120) {
                document.getElementById('ageError').style.display = 'inline';
                isValid = false;
            } else {
                document.getElementById('ageError').style.display = 'none';
            }

            // Validate mobile number
            const mobile = document.getElementById('mobile').value;
            const mobilePattern = /^[0-9]{10}$/;
            if (!mobilePattern.test(mobile)) {
                document.getElementById('mobileError').style.display = 'inline';
                isValid = false;
            } else {
                document.getElementById('mobileError').style.display = 'none';
            }

            // Validate number of tickets
            const tickets = document.getElementById('tickets').value;
            if (tickets < 1) {
                document.getElementById('ticketError').style.display = 'inline';
                isValid = false;
            } else {
                document.getElementById('ticketError').style.display = 'none';
            }

            return isValid;
        }
    </script>
</body>
</html>
