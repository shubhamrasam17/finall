<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>step 2</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
    .bs-example{
        margin: 20px;
    }
    
    .parallax {
  /* The image used */
  background-image: url("hom.jpg");

  /* Set a specific height */
  min-height: 500px; 

  /* Create the parallax scrolling effect */
  background-attachment: fixed;
  background-position: center;
  background-repeat: no-repeat;
  background-size: cover;
}
* {box-sizing: border-box}

/* Set height of body and the document to 100% */
body, html {
  height: 100%;
  margin: 0;
  font-family: Arial;
}

/* Style tab links */
.tablink {
  background-color: #555;
  color: white;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  font-size: 17px;
  width: 22%;
}

.tablink:hover {
  background-color: #777;
}

/* Style the tab content (and add height:100% for full page content) */
.tabcontent {
  color: white;
  display: none;
  
  height: 100%;
}
</style>
</head>
<body>

<div>
    <div class="container">
  <div class="row no-gutters">
  <div class="col-6 col-md-1" style="background-color:	#006200"><p style="color: white">STEP 1</p></div>
  <div class="col-12 col-sm-6 col-md-11"  style="background-color:#89ff89 	"><p style="color: white">Tickets</p></div>
 
</div>
<div><br></div>

<div class="row no-gutters">
  <div class="col-6 col-md-1" style="background-color:  #004C99"><p style="color: white">STEP 2</p></div>
  <div class="col-12 col-sm-6 col-md-11"  style="background-color:  #0080FF"><p style="color: white">Food & Beverages / Merchandise</p></div>
  
</div>
<div><br></div>
  <button class="btn btn-primary" onclick="openPage('Home', this, '#60AFFE')" id="defaultOpen">MEALS</button>
<button class="btn btn-primary" onclick="openPage('News', this, '#60AFFE')">SNACKS</button>
<button class="btn btn-primary" onclick="openPage('Contact', this, '#60AFFE')">BURGER & FRIES</button>
<button class="btn btn-primary" onclick="openPage('About', this, '#60AFFE')">PIZZAS</button>
<div><hr></div>
<div id="Home" class="tabcontent">
<iframe src="MEALS.jsp" height="300" width="980"></iframe>
</div>

<div id="News" class="tabcontent">
  <iframe src="SNACKS.jsp" height="300" width="980"></iframe> 
</div>

<div id="Contact" class="tabcontent">
  <iframe src="BURGER.jsp" height="300" width="980"></iframe>
</div>

<div id="About" class="tabcontent">
  <iframe src="PIZZAS.jsp" height="300" width="980"></iframe>
</div>

<script>
function openPage(pageName,elmnt,color) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>
<div><br></div>
<div>
<form method="post" action="step3.jsp">
<button style="float: right" type="submit" class="btn btn-primary">SKIP & CONTINUE</button></form> </div>
<div><br><br> </div>
<div class="row no-gutters">
  <div class="col-6 col-md-1" style="background-color:	#696969"><p style="color: white">STEP 3</p></div>
  <div class="col-12 col-sm-6 col-md-11"  style="background-color: 	#A8A8A8"><p style="color: white">Summary & Promotions</p></div>
  
</div>
<div><br></div>
<div class="row no-gutters">
  <div class="col-6 col-md-1" style="background-color:	#696969"><p style="color: white">STEP 4</p></div>
  <div class="col-12 col-sm-6 col-md-11"  style="background-color: 	#A8A8A8"><p style="color: white">Payment</p></div>
 
</div>
  </div>

</div>

</div>
<script>
window.onscroll = function() {myFunction()};

var navbar = document.getElementById("navbar");
var sticky = navbar.offsetTop;

function myFunction() {
  if (window.pageYOffset >= sticky) {
    navbar.classList.add("sticky")
  } else {
    navbar.classList.remove("sticky");
  }
}
</script>
</body>
</html>                            