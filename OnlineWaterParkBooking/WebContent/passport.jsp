<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Passport</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
.vl {
  border-left: 6px solid green;
  height: 500px;
}
</style>
</head>
<body>

<div class="container-fluid">
<form method="post" action="step2.jsp">
  <div class="row">
    <div class="col"><div><img src="passport.png" class="center" height="50%" width="100%" ></div></div>
    <div class="col"> PASSPORT NEXT<br>
Annual Passport: 3 Visits in year to EsselWorld or Water Kingdom. e booking is valid for 30 days from the of booking and Pass validity for 1 year from the date of the first visit to the either of the parks.
View More </div>
    <div class="col"> <div class="mar">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Type</th>
      <th scope="col">Qty</th>
      <th scope="col">Price/Ticket</th>
      <th scope="col">Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Adult</th>
      <td>₹1035</td>
      <td>₹660</td>
      <td>₹660</td>
    </tr>
    
    
  </tbody>
</table>
</div>
</div>

    <div ><table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"><button target="_blank" type="submit" class="btn btn-primary">select</button></th>
    
    
  </tbody>
</table></div>


  </div>
  </form>
</div>
</body>
</html>