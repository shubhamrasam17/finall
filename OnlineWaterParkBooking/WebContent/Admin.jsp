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
	
background: #4CA1AF;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #C4E0E5, #4CA1AF);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #C4E0E5, #4CA1AF); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
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
    <li class="nav-item">
      <a class="nav-link" href="/OnlineWaterParkBooking/edit_entry.jsp">edit entry prices</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/OnlineWaterParkBooking/park_timing.jsp">Park Timing</a>
    </li>
  </ul>
</nav>
</form>
</body>
</html>