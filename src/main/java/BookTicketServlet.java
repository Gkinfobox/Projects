import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;
import java.sql.Timestamp;
import java.util.Random;

@WebServlet("/BookTicketServlet")
public class BookTicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String fromStation = request.getParameter("from");
        String toStation = request.getParameter("to");
        String journeyDate = request.getParameter("date");
        String passengerName = request.getParameter("name");
        int passengerAge = Integer.parseInt(request.getParameter("age"));
        String mobileNumber = request.getParameter("mobile");
        int numberOfTickets = Integer.parseInt(request.getParameter("tickets"));

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        int ticketNumber = new Random().nextInt(1000000);
        double ticketPrice = 0.0;
        double totalAmount = 0.0;
        int trainNo = 0;
        String trainName = null;  // Variable to hold train name

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/train", "root", "Gkumar@12");
            System.out.println("Database connected!");

            // Debugging the input parameters
            System.out.println("From: " + fromStation + ", To: " + toStation + ", Journey Date: " + journeyDate);

            // Query to find the train
            String trainQuery = "SELECT train_no, train_name, ticket_price FROM trains WHERE from_station = ? AND to_station = ?";
            stmt = conn.prepareStatement(trainQuery);
            stmt.setString(1, fromStation);
            stmt.setString(2, toStation);
            rs = stmt.executeQuery();

            if (rs.next()) {
                trainNo = rs.getInt("train_no");
                ticketPrice = rs.getDouble("ticket_price");
                trainName = rs.getString("train_name"); // Retrieve train name
                totalAmount = ticketPrice * numberOfTickets;
                System.out.println("Train found: " + trainNo + " " + trainName + ", Ticket Price: " + ticketPrice);
            } else {
                System.out.println("No train found, redirecting to error.jsp");
                response.sendRedirect("error.jsp");
                return;
            }

            // Insert booking details
            String insertQuery = "INSERT INTO ticketbookings (ticket_number, from_station, to_station, journey_date, passenger_name, passenger_age, mobile_number, number_of_tickets, train_no, train_name, total_amount, booking_time) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            stmt = conn.prepareStatement(insertQuery);
            stmt.setInt(1, ticketNumber);
            stmt.setString(2, fromStation);
            stmt.setString(3, toStation);
            stmt.setDate(4, java.sql.Date.valueOf(journeyDate));
            stmt.setString(5, passengerName);
            stmt.setInt(6, passengerAge);
            stmt.setString(7, mobileNumber);
            stmt.setInt(8, numberOfTickets);
            stmt.setInt(9, trainNo);
            stmt.setString(10, trainName); // Set train name
            stmt.setDouble(11, totalAmount);
            stmt.setTimestamp(12, new Timestamp(System.currentTimeMillis()));
            
            System.out.println("Executing insert query...");
            int rowsAffected = stmt.executeUpdate();
            System.out.println("Rows affected: " + rowsAffected);

            if (rowsAffected > 0) {
                System.out.println("Booking successful!");
                // Forward to confirmation page
                request.setAttribute("ticketNumber", ticketNumber);
                request.setAttribute("fromStation", fromStation);
                request.setAttribute("toStation", toStation);
                request.setAttribute("journeyDate", journeyDate);
                request.setAttribute("passengerName", passengerName);
                request.setAttribute("passengerAge", passengerAge);
                request.setAttribute("mobileNumber", mobileNumber);
                request.setAttribute("numberOfTickets", numberOfTickets);
                request.setAttribute("trainNo", trainNo);
                request.setAttribute("trainName", trainName); // Pass train name to JSP
                request.setAttribute("totalAmount", totalAmount);
                
                request.getRequestDispatcher("bookingConfirmation.jsp").forward(request, response);
            } else {
                response.sendRedirect("error1.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error2.jsp");
        } finally {
            try {
                if (rs != null) rs.close();
                if (stmt != null) stmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
