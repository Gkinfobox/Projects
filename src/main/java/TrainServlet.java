import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;


public class TrainServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String jdbcURL = "jdbc:mysql://localhost:3306/train"; // Update DB details accordingly
        String dbUser = "root";
        String dbPassword = "Gkumar@12";

        ArrayList<HashMap<String, Object>> trainList = new ArrayList<>();
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;

        try {
            System.out.println("Attempting to load JDBC driver...");
            Class.forName("com.mysql.jdbc.Driver");

            System.out.println("Attempting to connect to the database...");
            connection = DriverManager.getConnection(jdbcURL, dbUser, dbPassword);

            String sql = "SELECT train_no, train_name, from_station, to_station, departure_time, arrival_time, ticket_price FROM trains";
            System.out.println("Executing SQL query: " + sql);
            statement = connection.prepareStatement(sql);

            resultSet = statement.executeQuery();
            System.out.println("SQL query executed successfully.");

            while (resultSet.next()) {
                HashMap<String, Object> train = new HashMap<>();
                train.put("train_no", resultSet.getInt("train_no"));
                train.put("train_name", resultSet.getString("train_name"));
                train.put("from_station", resultSet.getString("from_station"));
                train.put("to_station", resultSet.getString("to_station"));
                train.put("departure_time", resultSet.getTime("departure_time"));
                train.put("arrival_time", resultSet.getTime("arrival_time"));
                train.put("ticket_price", resultSet.getDouble("ticket_price"));

                System.out.println("Fetched train: " + train);
                trainList.add(train);
            }

            if (trainList.isEmpty()) {
                System.out.println("No train details found in the database.");
            } else {
                System.out.println("Train list size: " + trainList.size());
            }

            request.setAttribute("trainList", trainList);
            RequestDispatcher dispatcher = request.getRequestDispatcher("trainDetails.jsp");
            dispatcher.forward(request, response);

        } catch (Exception e) {
            System.out.println("Exception occurred: " + e.getMessage());
            e.printStackTrace();
        } finally {
            try {
                if (resultSet != null) resultSet.close();
                if (statement != null) statement.close();
                if (connection != null) connection.close();
            } catch (Exception e) {
                System.out.println("Exception occurred while closing resources: " + e.getMessage());
            }
        }
    }
}
