<%@page import="com.UserModel.SignUp.UserModel"%>
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

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="style.css">
</head>

<style>
body{
background: #11998e;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #38ef7d, #11998e);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #38ef7d, #11998e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
form
{
margin-top:60px;
display:block;
}
.btnedit
{
background: #1c92d2;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #f2fcfe, #1c92d2);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #f2fcfe, #1c92d2); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
font-size:20px;
color:black;
border-radius:10px;
padding:10px;
font-weight:bold;
text-transform:uppercase;
}
.btnedit:hover
{
background: #0cebeb;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #29ffc6, #20e3b2, #0cebeb);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #29ffc6, #20e3b2, #0cebeb); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
font-size:20px;
color:black;
border-radius:10px;
padding:10px;
}
label
{
font-size:20px;
margin-left:10px;
margin-right:5px;
font-weight:bold;
padding:10px;
}
</style>




<body>

 	<%
 	
 	int userId=Integer.parseInt(request.getParameter("userId"));
 	/* IDAO dbConnection=new DB_Connection();
 	UserModels model=dbConnection.getRecordsById(userId);
 	 */
 	 IDAO dbConnection=new DB_Connection();
 	 UserModel model=dbConnection.getRates(userId);
 	 %>


<center>

		<div class="container">

			<form action="Process/editrates" method="get">
				<div class="col-md-4"></div>
				<div class="col-md-4">
					<div class="form-group">
						<label for="id">ID:</label> <input type="text" value="<%= model.getId() %>"
							class="form-control" placeholder="Enter Your Id"
							required="required" name="id">
					</div>

					<div class="form-group">
						<label for="ad"> Admission criteria:</label> <input type="text" value="<%= model.getAdmissioncriteria() %>"
							class="form-control" placeholder="Enter admission criteria"
							required="required" name="ad">
					</div>
					<div class="form-group">
						<label for="adult"> Adult:</label> <input type="text" value="<%= model.getAdult() %>"
							class="form-control" placeholder="Enter adult"
							required="required" name="adult">
					</div>

					<div class="form-group">
						<label for="child">child:</label> <input type="text" value="<%= model.getChild() %>"
							class="form-control" placeholder="Enter child"
							required="required" name="child">
					</div>
					<div class="form-group">
						<label for="cit"> sr citizens:</label> <input type="text" value="<%= model.getSrcitizen() %>"
							class="form-control" placeholder="Enter citizen"
							required="required" name="cit">
					</div>

				
				<input type="submit" class="btn btn-primary btn-lg btnedit" value="Edit"/>


			<!-- 		<button type="submit" class="btn btn-primary"><a href="/edit">Submit</a></button>
			 -->
			</form>
		</div>
		</div>
	</center>

</body>
</html>