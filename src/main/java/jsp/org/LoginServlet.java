package jsp.org;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.*;

import org.apache.jasper.tagplugins.jstl.core.Out;

public class LoginServlet extends HttpServlet {
	
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException
	{
		String email = req.getParameter("Login-email");
		String password = req.getParameter("login-password");
		PrintWriter out = resp.getWriter();//getWritter is a static() present in PrintWriter class
		
		 try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=MDmus@786");
			PreparedStatement pstmt=con.prepareStatement("select * from firstproject.registarion where email=? and password=?");
			pstmt.setString(1, email);
			pstmt.setString(2, password);
			
			ResultSet rs = pstmt.executeQuery();
	
			if(rs.next())
			{
				out.print("<html><body bgcolor='cyan'><center><h1> Login Sucessfully .Mr/Ms </h1></center></body></html>");
			}
			else
			{
				out.print("<html><body bgcolor='red'><h1>"
						+" Login UnSucessfully <h2>plz check Email and Password</h2>"+ "</h1></body></html>");
			}
		 } catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
