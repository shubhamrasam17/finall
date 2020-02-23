package com.processServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.UserModel.SignUp.UserModel;

import com.dbconnection.DB_Connection;
import com.idao.IDAO;


/*
 * @WebServlet("/Process/*")
 */

public class Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Process() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	

		String action = request.getPathInfo().toString();
		
		System.out.print(action);
	      
	            switch (action) {
	       
	            case "/insert":
	            	System.out.println("inside insert record");
	            	InsertUser(request, response);
	            	break;
	      
	            case "/login":
	            	System.out.println("inside login Records");
	            	UserLogin(request, response);
	            	
	                break;
	             

	            case "/Admin":
	            	System.out.println("inside login Records");
	            	//AdminLogin(request, response);
	            	//response.sendRedirect("Admin.jsp");
	            	
	                break;
	            	
	            default:
	            	System.out.println("Path Not Found");
	                break;
	                          
	            }
	
	
	
	
	}
	
	
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

	
	
	
	
	protected void InsertUser (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		

		UserModel model=new UserModel();
		
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String uname=request.getParameter("uname");
		String pass=request.getParameter("pass");
		int mobile=Integer.parseInt(request.getParameter("mobile"));
				
		
		model.setFname(fname);
		model.setLname(lname);
		model.setEmail(email);
		model.setUname(uname);
		model.setPassword(pass);
		model.setMobile(mobile);
		
		IDAO mydao=new DB_Connection();
		
		if(mydao.userInsertRegistration(model))
		{
			/*
			 * RequestDispatcher req=request.getRequestDispatcher(
			 * "http://localhost:8080/OnlineWaterParkBooking/home.jsp");
			 * req.forward(request, response);
			 */ 
			
		out.print("<script type='text/javascript'>");
		out.print(" window.location='http://localhost:8080/OnlineWaterParkBooking/login.jsp' ");

		
		out.print("</script >");
		
		
		}
		else
		{
			System.out.println(" insertion Failed");
		}
		
		
}

	

	
	protected void UserLogin (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
{

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
				 if(nm.equals("Admin") && passwd.equals("Admin"))
		           {
				
				  RequestDispatcher rd=request.getRequestDispatcher("/Admin.jsp");
				  
				  rd.forward(request,response);
				 
				  //System.out.println("success");
		           }
				 else
		           {
		  
		           }
		  
				 ResultSet rs=stmt.executeQuery("select * from userregistration");
				 while(rs.next())
				 {
					 if(nm.equals(rs.getString(5)) && passwd.equals(rs.getString(6)))
					 {
							
							out.print("<script type='text/javascript'>");
							out.print(" window.location='http://localhost:8080/OnlineWaterParkBooking/home.jsp' ");

							
							out.print("</script >");

					 }
				 }
				 
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	
	
}



			

	
	
	
	}












