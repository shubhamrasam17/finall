

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class login1
 */
@WebServlet("/login1")
public class login1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public login1() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String nm=request.getParameter("uname");
		  String passwd=request.getParameter("pass");
		  try {
			  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			  String user="sa";
				String pwd="sasa";
				String connectionUrl = "jdbc:sqlserver://LAPTOP-GET5TI17;database=OnlineWaterParkBooking;";
				Connection conn = DriverManager.getConnection(connectionUrl, user, pwd);
				 Statement stmt = conn.createStatement();
				 ResultSet rs=stmt.executeQuery("select * from userregistration");
				 while(rs.next())
				 {
					 if(nm.equals(rs.getString(5)) && passwd.equals(rs.getString(6)))
					 {
						 	response.sendRedirect("home.jsp");
					 }
				 }
				 
		} catch (Exception e) {
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
