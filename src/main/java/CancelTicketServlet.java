import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet("/CancelTicketServlet")
public class CancelTicketServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int ticketNumber = Integer.parseInt(request.getParameter("ticketNumber"));
        String action = request.getParameter("action"); 

        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;

        try {
            
            Class.forName("com.mysql.cj.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/train", "root", "Gkumar@12");

            if ("View".equals(action)) {
                
                String query = "SELECT * FROM ticketbookings WHERE ticket_number = ?";
                stmt = conn.prepareStatement(query);
                stmt.setInt(1, ticketNumber);
                rs = stmt.executeQuery();

                if (rs.next()) {
                    
                    request.setAttribute("ticketNumber", rs.getInt("ticket_number"));
                    request.setAttribute("fromStation", rs.getString("from_station"));
                    request.setAttribute("toStation", rs.getString("to_station"));
                    request.setAttribute("journeyDate", rs.getDate("journey_date"));
                    request.setAttribute("passengerName", rs.getString("passenger_name"));
                    request.setAttribute("passengerAge", rs.getInt("passenger_age"));
                    request.setAttribute("mobileNumber", rs.getString("mobile_number"));
                    request.setAttribute("numberOfTickets", rs.getInt("number_of_tickets"));
                    request.setAttribute("trainNo", rs.getInt("train_no"));
                    request.setAttribute("trainName", rs.getString("train_name"));
                    request.setAttribute("totalAmount", rs.getDouble("total_amount"));

                    request.getRequestDispatcher("viewTicketDetails.jsp").forward(request, response);
                } else {
                    response.sendRedirect("cancelerror.jsp");
                }
            } else if ("Cancel".equals(action)) {
                
                String query = "DELETE FROM ticketbookings WHERE ticket_number = ?";
                stmt = conn.prepareStatement(query);
                stmt.setInt(1, ticketNumber);

                int rowsAffected = stmt.executeUpdate();

                if (rowsAffected > 0) {
                    response.sendRedirect("cancelledsuccess.jsp");
                } else {
                    response.sendRedirect("cancelerror.jsp");
                }
            }
            else if ("Back".equals(action))
            {
            	response.sendRedirect("home.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("cancelerror.jsp");
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
