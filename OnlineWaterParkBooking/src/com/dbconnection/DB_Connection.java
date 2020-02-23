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
}



