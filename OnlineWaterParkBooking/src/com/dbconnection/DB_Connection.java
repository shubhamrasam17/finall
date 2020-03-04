package com.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.UserModel.SignUp.UserModel;
import com.idao.IDAO;

public class DB_Connection implements IDAO {
	String user="sa";
	String pwd="sasa";
	String connectionUrl = "jdbc:sqlserver://LAPTOP-GET5TI17;database=OnlineWaterParkBooking;" ; 

	Connection conn;	
	UserModel model;
	PreparedStatement stmt;
	Statement cstmt;

	public boolean getConnected() {
		System.out.println("Connection Successful 1!");
		
		try {	
			 
			System.out.println("Connection Successful 2!");
			
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			 conn = DriverManager.getConnection(connectionUrl, user, pwd);
			System.out.println("Connection Successful !");
			
			
			
			
			
			
				}
				catch(ClassNotFoundException e)
				{
					System.out.println(e.getMessage());
				
				} catch (SQLException e) 
				{
					System.out.println(e.getMessage());

				}

		if (conn != null) {
			return true;
		} else {
			return false;
		}
			
	}

	@Override
	public boolean userInsertRegistration(UserModel model) {

		int userInserted=0;
		if(getConnected()) {
		try {	
			
			
			String  insertquery="insert into userregistration values (?,?,?,?,?,?) ";
			
			
			
			//String loginquery=" select * from registration where fname=? and password=? ";
			
			
			
			
			PreparedStatement preparestmt = conn.prepareStatement(insertquery);
			
			preparestmt.setString(1,model.getFname());
			preparestmt.setString(2,model.getLname());
			preparestmt.setString(3,model.getEmail());
			preparestmt.setString(4, model.getUname());
			preparestmt.setString(5,model.getPassword());
			preparestmt.setDouble(6,model.getMobile());
			userInserted=preparestmt.executeUpdate();
			
				}
				catch (SQLException e) 
				{
					System.out.println(e.getMessage());

				}
		}

		if(userInserted>0)
		{
			return true;

			
		}
		else
		{
			return false;
		}
			
		
	}

	@Override
	public List<UserModel> getRecords() {
		List<UserModel> users = new ArrayList();

		if (getConnected()) {
			try {
				Statement statement = conn.createStatement();
				String query = "select * from userregistration";
				ResultSet resultset = statement.executeQuery(query);
				while (resultset.next()) {
					model = new UserModel();
					model.setId(resultset.getInt("id"));
					model.setFname(resultset.getString("first_name"));
                    model.setLname(resultset.getString("last_name"));
                    model.setEmail(resultset.getString("email"));
                    model.setUname(resultset.getString("uname"));
                    model.setPassword(resultset.getString("pass"));
                    model.setMobile(resultset.getInt("mobile"));
					users.add(model);
				}
			} catch (SQLException e) {
				System.out.println(e.getMessage());
			}

		}
		return users;
	}


public UserModel getRecordsById(int i) {
	if (getConnected()) {
		String query = "select * from userregistration where id=?";
		try {
			PreparedStatement preparestmt = conn.prepareStatement(query);
			preparestmt.setInt(1, i);
			ResultSet resultset = preparestmt.executeQuery();
			if (resultset.next()) {
				model = new UserModel();
				model.setId(resultset.getInt("id"));
				model.setFname(resultset.getString("first_name"));
				model.setLname(resultset.getString("last_name"));
                model.setEmail(resultset.getString("email"));
                model.setUname(resultset.getString("uname"));
              
                model.setMobile(resultset.getInt("mobile"));
				

			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	return model;
}

@Override
public int deleteRecords(int i) {
	int rowCount=0;
	
	if(getConnected())
	{
		System.out.println("connection Successfully");
		
		String query= "delete userregistration "
				+ "WHERE ID=?" ;
		
		try
		{
			stmt=conn.prepareStatement(query);
			stmt.setInt(1,i);
			rowCount=stmt.executeUpdate();
		} 
		catch (SQLException e)
		{	
		System.out.println("Deleted Value Exception "+e.getMessage());
		}		
		
	}
	
	return rowCount;
	
}

@Override
public int editRecords(UserModel model) {


	int rowCount = 0;
	if (getConnected()) {
		System.out.println("Connection Successfully");
		
		  String query= "UPDATE userregistration " + 
		  		"SET first_name =?, last_name=?, email=?, uname=?" + 
		  		" WHERE id=?;" ;
		  
		  try {
			stmt = conn.prepareStatement(query);
			
			stmt.setString(1, model.getFname());
			stmt.setString(2,model.getLname());
			stmt.setString(3, model.getEmail());
			stmt.setString(4, model.getUname());
			stmt.setInt(5, model.getId());
    
			
			rowCount = stmt.executeUpdate();
		    
		  } 
		  catch (SQLException e) 
		  {
			System.out.println("EditRecords Exception" + e.getMessage());

		   }
	}

	return rowCount;

}

@Override
public List<UserModel> getentryrates() {
	List<UserModel> users = new ArrayList();

	if (getConnected()) {
		try {
			Statement statement = conn.createStatement();
			String query = "select * from entry_rates";
			ResultSet resultset = statement.executeQuery(query);
			while (resultset.next()) {
				model = new UserModel();
				model.setId(resultset.getInt("id"));
				model.setAdmissioncriteria(resultset.getString("Admissioncriteria"));
                model.setAdult(resultset.getString("Adult"));
                model.setChild(resultset.getString("child"));
                model.setSrcitizen(resultset.getString("srcitizen"));
                
				users.add(model);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

	}
	return users;
}

@Override
public int deleteEntryrates(int i) {
int rowCount=0;
	
	if(getConnected())
	{
		System.out.println("connection Successfully");
		
		String query= "delete entry_rates "
				+ "WHERE ID=?" ;
		
		try
		{
			stmt=conn.prepareStatement(query);
			stmt.setInt(1,i);
			rowCount=stmt.executeUpdate();
		} 
		catch (SQLException e)
		{	
		System.out.println("Deleted Value Exception "+e.getMessage());
		}		
		
	}
	
	return rowCount;

}

@Override
public boolean addentryrate(UserModel model) {


	int userInserted=0;
	if(getConnected()) {
	try {	
		
		
		String  insertquery="insert into entry_rates values (?,?,?,?) ";
		
		
		
		//String loginquery=" select * from registration where fname=? and password=? ";
		
		
		
		
		PreparedStatement preparestmt = conn.prepareStatement(insertquery);
		
		preparestmt.setString(1,model.getAdmissioncriteria());
		preparestmt.setString(2,model.getAdult());
		preparestmt.setString(3,model.getChild());
		preparestmt.setString(4, model.getSrcitizen());
		userInserted=preparestmt.executeUpdate();
		
			}
			catch (SQLException e) 
			{
				System.out.println(e.getMessage());

			}
	}

	if(userInserted>0)
	{
		return true;

		
	}
	else
	{
		return false;
	}
		

}

@Override
public List<UserModel> gettiming() {
	
	List<UserModel> users = new ArrayList();

	if (getConnected()) {
		try {
			Statement statement = conn.createStatement();
			String query = "select * from park_timing";
			ResultSet resultset = statement.executeQuery(query);
			while (resultset.next()) {
				model = new UserModel();
				model.setIid(resultset.getInt("id"));
				model.setDays(resultset.getString("DAYS"));
                model.setHours(resultset.getString("OPERATIONAL_HOURS"));
                
				users.add(model);
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}

	}
	return users;

}

@Override
public int editRates(UserModel model) {
	int rowCount = 0;
	if (getConnected()) {
		System.out.println("Connection Successfully");
		
		  String query= "UPDATE entry_rates " + 
		  		"SET Admissioncriteria=?, Adult=?, child=?, srcitizen=?" + 
		  		" WHERE id=?;" ;
		  
		  try {
			stmt = conn.prepareStatement(query);
			
			stmt.setString(1, model.getAdmissioncriteria());
			stmt.setString(2,model.getAdult());
			stmt.setString(3, model.getChild());
			stmt.setString(4, model.getSrcitizen());
			stmt.setInt(5, model.getId());
    
			
			rowCount = stmt.executeUpdate();
		    
		  } 
		  catch (SQLException e) 
		  {
			System.out.println("EditRecords Exception" + e.getMessage());

		   }
	}

	return rowCount;

}

@Override
public UserModel getRates(int i) {
	if (getConnected()) {
		String query = "select * from entry_rates where id=?";
		try {
			PreparedStatement preparestmt = conn.prepareStatement(query);
			preparestmt.setInt(1, i);
			ResultSet resultset = preparestmt.executeQuery();
			if (resultset.next()) {
				model = new UserModel();
				model.setId(resultset.getInt("id"));
				model.setAdmissioncriteria(resultset.getString("Admissioncriteria"));
            
                model.setAdult(resultset.getString("Adult"));
                model.setChild(resultset.getString("child"));
              model.setSrcitizen(resultset.getString("srcitizen"));
                
				

			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	return model;
}

@Override
public boolean addtiming(UserModel model) {

	int userInserted=0;
	if(getConnected()) {
	try {	
		
		
		String  insertquery="insert into park_timing values (?,?) ";
		
		
		
		//String loginquery=" select * from registration where fname=? and password=? ";
		
		
		
		
		PreparedStatement preparestmt = conn.prepareStatement(insertquery);
		
		preparestmt.setString(1,model.getDays());
		preparestmt.setString(2,model.getHours());
		
		userInserted=preparestmt.executeUpdate();
	
			}
			catch (SQLException e) 
			{
				System.out.println(e.getMessage());

			}
	}

	if(userInserted>0)
	{
		return true;

		
	}
	else
	{
		return false;
	}
		


}

@Override
public int deletetiming(int i) {
int rowCount=0;
	
	if(getConnected())
	{
		System.out.println("connection Successfully");
		
		String query= "delete park_timing "
				+ "WHERE ID=?" ;
		
		try
		{
			stmt=conn.prepareStatement(query);
			stmt.setInt(1,i);
			rowCount=stmt.executeUpdate();
		} 
		catch (SQLException e)
		{	
		System.out.println("Deleted Value Exception "+e.getMessage());
		}		
		
	}
	
	return rowCount;
	
}

@Override
public UserModel gettime(int i) {
	if (getConnected()) {
		String query = "select * from park_timing where id=?";
		try {
			PreparedStatement preparestmt = conn.prepareStatement(query);
			preparestmt.setInt(1, i);
			ResultSet resultset = preparestmt.executeQuery();
			if (resultset.next()) {
				model = new UserModel();
				model.setIid(resultset.getInt("id"));
				model.setDays(resultset.getString("DAYS"));
              model.setHours(resultset.getString("OPERATIONAL_HOURS"));
                
				

			}

		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
	}

	return model;

}

@Override
public int edittime(UserModel model) {
	int rowCount = 0;
	if (getConnected()) {
		System.out.println("Connection Successfully1234");
		
		  String query= "UPDATE park_timing " + 
		  		"SET DAYS=?, OPERATIONAL_HOURS=?" + 
		  		" WHERE id=?;" ;
		  
		  try {
			stmt = conn.prepareStatement(query);
			
			stmt.setString(1, model.getDays());
			stmt.setString(2,model.getHours());
				stmt.setInt(3, model.getIid());
    
			
			rowCount = stmt.executeUpdate();
		    
		  } 
		  catch (SQLException e) 
		  {
			System.out.println("EditRecords Exception" + e.getMessage());

		   }
	}

	return rowCount;


}

}



