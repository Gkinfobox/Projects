<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Ticket Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            padding: 20px;
            background-image: url("https://www.railway-technology.com/wp-content/uploads/sites/13/2018/06/indianrailways.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        .details-container {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            max-width: 800px;
            margin: auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            opacity: 0.8;
        }
        .details-container h2 {
            text-align: center;
        }
        .details-container table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
        }
        .details-container th, .details-container td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        .details-container th {
            background-color: #f4f4f4;
        }
        .details-container tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        .cancel-button {
            background-color: #f44336;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 20px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }
        .cancel-button:hover {
            background-color: #e53935;
        }
        .back-button {
        	
        	background-color: lightgreen;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 20px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }
        .back-button {
        	background-color: darkgreen;
        }
    </style>
</head>
<body>
    <div class="details-container">
        <h2>Ticket Details</h2>
        <table>
            <tr>
                <th>Ticket Number</th>
                <td><%= request.getAttribute("ticketNumber") %></td>
            </tr>
            <tr>
                <th>From Station</th>
                <td><%= request.getAttribute("fromStation") %></td>
            </tr>
            <tr>
                <th>To Station</th>
                <td><%= request.getAttribute("toStation") %></td>
            </tr>
            <tr>
                <th>Journey Date</th>
                <td><%= request.getAttribute("journeyDate") %></td>
            </tr>
            <tr>
                <th>Passenger Name</th>
                <td><%= request.getAttribute("passengerName") %></td>
            </tr>
            <tr>
                <th>Passenger Age</th>
                <td><%= request.getAttribute("passengerAge") %></td>
            </tr>
            <tr>
                <th>Mobile Number</th>
                <td><%= request.getAttribute("mobileNumber") %></td>
            </tr>
            <tr>
                <th>Number of Tickets</th>
                <td><%= request.getAttribute("numberOfTickets") %></td>
            </tr>
            <tr>
                <th>Train Number</th>
                <td><%= request.getAttribute("trainNo") %></td>
            </tr>
            <tr>
                <th>Train Name</th>
                <td><%= request.getAttribute("trainName") %></td>
            </tr>
            <tr>
                <th>Total Amount</th>
                <td>$<%= request.getAttribute("totalAmount") %></td>
            </tr>
        </table>
        <form action="CancelTicketServlet" method="post">
            <input type="hidden" name="ticketNumber" value="<%= request.getAttribute("ticketNumber") %>">
            <input type="submit" name="action" value="Cancel" class="cancel-button">
            <br><br>
            <input type="submit" name="action" value="Back" class="back-button">
        </form>
    </div>
</body>
</html>
