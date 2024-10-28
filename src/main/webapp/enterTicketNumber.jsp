<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Enter Ticket Number</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            padding: 20px;
            background-image: url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjUYcdIUDop3cNzBC_B7wTeHdFel7TQPYCXg&s");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .form-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            max-width: 500px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            opacity: 0.8;
        }
        .form-container h2 {
            text-align: center;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            box-sizing: border-box;
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
        <h2>Enter Ticket Number</h2>
        <form action="TicketDetailsServlet" method="post">
            <div class="form-group">
                <label for="ticketNumber">Ticket Number:</label>
                <input type="text" id="ticketNumber" name="ticketNumber" required>
            </div>
            <input type="submit" name="action" value="View Ticket" class="submit-button"><br><br>
        </form>
        <button class="submit-button" onclick="window.location.href='home.jsp'">Back</button>
    </div>
</body>
</html>
