<%@page import="com.UserModel.SignUp.UserModel"%>
<%@page import="java.util.List"%>
<%@page import="com.dbconnection.DB_Connection"%>
<%@page import="com.idao.IDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="style.css">
<title> User Details</title>
<style>
body{
	background: #4CA1AF;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #C4E0E5, #4CA1AF);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #C4E0E5, #4CA1AF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
.table
{background: #00d2ff;  /* fallback for old browsers */
background: -webkit-linear-gradient(to top, #3a7bd5, #00d2ff);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to top, #3a7bd5, #00d2ff); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

-webkit-box-shadow: 3px 3px 37px 14px rgba(12,15,14,0.54);
-moz-box-shadow: 3px 3px 37px 14px rgba(12,15,14,0.54);
box-shadow: 3px 3px 37px 14px rgba(12,15,14,0.54);
text-align:center;
color:black;
font-size:18px;
text-transform:uppercase;
margin-top:30px;
margin-left: 20px;
margin-right: 50px;
}
.theadcss
{
background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
color:black;
font-size:22px;
text-align:center;

}
#plus
{
font-size:40px;
}
.add a
{
	font-size: 20px;
	font-weight:bold;
	color:white;
	margin-bottom:10px;
}
</style>
</head>
<body>
<%
	
		IDAO dbConnection = new DB_Connection();
		List<UserModel> userlist = dbConnection.getentryrates();
		if (userlist.size() > 0) {
	%>
	<br>
	<br>
	<!-- <center>
<button class="btn btn-dark add"><a href='registration.jsp'><span id="plus">+</span>ADD NEW</a></button>
	</center> -->
	<br />
	<div >
	<table class="table table-dark ">
		<thead class=" theadcss">
			<tr >
				<th>ID</th>
				<th >Admissioncriteria</th>
				 <th >Adult</th>
				 <th>child</th>
				 <th>srcitizen</th>
				<th colspan="4" >PERFORM OPERATION</th> 
			</tr>
		</thead>
		<tbody>
			<%
				for (UserModel model : userlist) {
			%>
			<tr>

				<td>
					<%
						out.print(model.getId());
					%>
				</td>
				<td >
					<%
						out.print(model.getAdmissioncriteria());
					%>
				</td>
				<td >
					<%
						out.print(model.getAdult());
					%>
				</td>
				<td >
					<%
						out.print(model.getChild());
					%>
				</td>
				<td >
					<%
						out.print(model.getSrcitizen());
					%>
				</td>
				
			
			<td><button type="button"  class="btn btn-success rounded-circlev view"><a href="add_entryrates.jsp">add</a></button></td>
			<td><button type="button"  class="btn btn-warning rounded-circlee edit"><a href="editentryrates.jsp?userId=<%=model.getId()%> ">Edit</a></button></td>
			<td><button type="button"  class="btn btn-danger  rounded-circled delete"><a href="#" onclick="askConfirm('<%=model.getId()%>')">Delete</a></button><td>
			</tr>
			<%
				}
			%>

		</tbody>
	</table>
</div>
	
	<%
		}
		else {
			
			out.print("<a href='#'>ADD NEW</a>");
		}
	%>
	
	
	<script type="text/javascript" rel="javascript">
	function askConfirm(userId)
	{
				
				var response=confirm("DO YOU WANT TO DELETE RECORD OF!!!!");
					if(response)
						{
						
						window.location="http://localhost:8080/OnlineWaterParkBooking/deleteentryrates.jsp?userId="+userId;
						}
	
	}
	</script>
</body>
</html>