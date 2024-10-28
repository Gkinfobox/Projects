<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Booking Confirmation</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-image: url("https://www.railway-technology.com/wp-content/uploads/sites/13/2018/06/indianrailways.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .confirmation-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            max-width: 800px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            opacity: 0.8;
        }
        .confirmation-container h2 {
            text-align: center;
        }
        .confirmation-container table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .confirmation-container th, .confirmation-container td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .confirmation-container th {
            background-color: #f4f4f4;
        }
        .confirmation-container tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .submit-button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px;
            cursor: pointer;
            width: 100%;
        }
        .submit-button a {
            text-decoration: none;
            color: white;
        }
    </style>
</head>
<body>
    <div class="confirmation-container">
        <h1>Booking Confirmation</h1>
        <table>
            <tr>
                <th>Detail</th>
                <th>Information</th>
            </tr>
            <tr>
                <td>Ticket Number</td>
                <td>${ticketNumber}</td>
            </tr>
            <tr>
                <td>From Station</td>
                <td>${fromStation}</td>
            </tr>
            <tr>
                <td>To Station</td>
                <td>${toStation}</td>
            </tr>
            <tr>
                <td>Journey Date</td>
                <td>${journeyDate}</td>
            </tr>
            <tr>
                <td>Passenger Name</td>
                <td>${passengerName}</td>
            </tr>
            <tr>
                <td>Passenger Age</td>
                <td>${passengerAge}</td>
            </tr>
            <tr>
                <td>Mobile Number</td>
                <td>${mobileNumber}</td>
            </tr>
            <tr>
                <td>Number of Tickets</td>
                <td>${numberOfTickets}</td>
            </tr>
            <tr>
                <td>Train Number</td>
                <td>${trainNo}</td>
            </tr>
            <tr>
                <td>Train Name</td>
                <td>${trainName}</td>
            </tr>
            <tr>
                <td>Total Amount</td>
                <td>₹${totalAmount}</td>
            </tr>
        </table>
        <center>
            <button class="submit-button" onclick="window.location.href='home.jsp'">Back</button>
        </center>
    </div>
</body>
</html>
