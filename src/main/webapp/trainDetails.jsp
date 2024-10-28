<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<!DOCTYPE html>
<html>
<head>
    <title>Train Details</title>
    <style>
        table {
            width: 90%;
            border-collapse: collapse;
            margin: 50px auto;
            font-size: 18px;
            text-align: left;
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
        }
        th {
            background-color: #f2f2f2;
        }
        h2 {
            text-align: center;
        }
    </style>
</head>
<body>
    <h2>Train Details</h2>
    <table>
        <tr>
            <th>Train Number</th>
            <th>Train Name</th>
            <th>From Station</th>
            <th>To Station</th>
            <th>Departure Time</th>
            <th>Arrival Time</th>
            <th>Ticket Price</th>
        </tr>
        <%
            System.out.println("Attempting to fetch the train list from the request...");
            ArrayList<HashMap<String, Object>> trainList = (ArrayList<HashMap<String, Object>>) request.getAttribute("trainList");

            if (trainList != null && !trainList.isEmpty()) {
                System.out.println("Train list received with " + trainList.size() + " entries.");
                for (HashMap<String, Object> train : trainList) {
                    System.out.println("Displaying train: " + train);
        %>
        <tr>
            <td><%= train.get("train_no") %></td>
            <td><%= train.get("train_name") %></td>
            <td><%= train.get("from_station") %></td>
            <td><%= train.get("to_station") %></td>
            <td><%= train.get("departure_time") %></td>
            <td><%= train.get("arrival_time") %></td>
            <td><%= train.get("ticket_price") %></td>
        </tr>
        <%
                }
            } else {
                System.out.println("Train list is empty or null.");
        %>
        <tr>
            <td colspan="7">No train details found</td>
        </tr>
        <%
            }
        %>
    </table>
</body>
</html>
