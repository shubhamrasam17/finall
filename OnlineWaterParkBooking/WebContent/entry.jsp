<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<title>rates</title>
	
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
 <style type="text/css">
 	.mar{
 		margin: 0 10px;
 	}
 </style>
</head>
<body>
	<div>
	<center>	<img src="entry.jpg" alt="Avatar" style="width:1000px;height:300px;"></center>
	</div>

	<div>
		<h4 style="text-shadow: 2px 2px 8px #0000FF;text-align: center;">ENTRY RATES</h4>
	</div>
	<hr style="border-top: 2px dashed black;">
<div class="mar">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Admission criteria</th>
      <th scope="col">Adult(height above 4'6")</th>
      <th scope="col">child(height between 3'3" & 4'6")</th>
      <th scope="col">sr.Citizen</th>
    </tr>
  </thead>
  <%
  try {
	  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
	  String user="sa";
		String pwd="sasa";
		String connectionUrl = "jdbc:sqlserver://LAPTOP-GET5TI17;database=OnlineWaterParkBooking;";
		Connection conn = DriverManager.getConnection(connectionUrl, user, pwd);
		 Statement stmt = conn.createStatement();
		 ResultSet rs=stmt.executeQuery("select * from entry_rates");
		 while(rs.next())
		 {
%>			

			 
		 
		 

 
  
    <tr>
      <th scope="row"><%=rs.getString(2) %></th>
      <td><%=rs.getString(3) %></td>
      <td><%=rs.getString(4) %></td>
      <td><%=rs.getString(5) %></td>
    </tr>
  <%
  }
  }
  catch(Exception e){
e.printStackTrace();	  
  }
  
  %>  
  
</table>
</div>
</body>
</html>