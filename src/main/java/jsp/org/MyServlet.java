package jsp.org;

import java.io.*;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.http.*;
import javax.servlet.annotation.WebServlet;

public class MyServlet extends HttpServlet {

    public void doPost(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        String name = req.getParameter("Name");
        String email = req.getParameter("Email");
        String password = req.getParameter("Password");
        String confirmPassword = req.getParameter("confirm-password");

        PrintWriter out = resp.getWriter();
        out.print("<html><body bgcolor='cyan'><center><h1>"
        + "Registration Successfully" + "</h1><center></body></html>");
        out.close();
        
        try {
        	 Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306?user=root&password=MDmus@786");
			PreparedStatement pstmt=con.prepareStatement("insert into firstproject.registarion values(?,?,?,?)");
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			pstmt.setString(3, password);
			pstmt.setString(4, confirmPassword);
			pstmt.execute();
        } catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}
        
    }
}
