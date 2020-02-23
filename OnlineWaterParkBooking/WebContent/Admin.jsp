<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
<title> User Details</title>
<style>
body{
	
background: #11998e;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #38ef7d, #11998e);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #38ef7d, #11998e); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
}
.table
{
background: #00F260;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #0575E6, #00F260);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #0575E6, #00F260); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
-webkit-box-shadow: 3px 3px 37px 14px rgba(12,15,14,0.54);
-moz-box-shadow: 3px 3px 37px 14px rgba(12,15,14,0.54);
box-shadow: 3px 3px 37px 14px rgba(12,15,14,0.54);
text-align:center;
color:black;
font-size:18px;
text-transform:uppercase;
margin-top:20px;
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

 <form method="post" action="Process/Admin">
 
<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">ADMIN</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/OnlineWaterParkBooking/viewcustomer.jsp">view customer details</a>
    </li>
   
    
  </ul>
</nav>
</form>
</body>
</html>