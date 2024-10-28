

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("Account")
public class Account extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private String dburl = "jdbc:mysql://localhost:3306/book";
	private String dbuname = "root";
	private String dbpwd = "Gkumar@12";
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String name = request.getParameter("username");
		String  gender = request.getParameter("Gender");
		String mobile = request.getParameter("mno");
		String gmail = request.getParameter("mail");
		String uname = request.getParameter("loginname");
		String password = request.getParameter("Pass");
		
		try (Connection con = DriverManager.getConnection(dburl,dbuname,dbpwd);
				PreparedStatement ps = con.prepareStatement("insert into book.record (name,gender,mobile,gmail,uname,password) values (?,?,?,?,?,?)"))
		{
			ps.setString(1, name);
			ps.setString(2, gender);
			ps.setString(3, mobile);
			ps.setString(4, gmail);
			ps.setString(5, uname);
			ps.setString(6, password);
			ps.executeUpdate();
			
			response.sendRedirect("Success.jsp");
			
		}
		catch(Exception e)
		{
			response.sendRedirect("loginerror.jsp");
			System.out.println("Dupicate values occurs... Please check the given values");
		}
	}

}
