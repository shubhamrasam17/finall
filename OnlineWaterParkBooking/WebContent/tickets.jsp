<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>step 1</title>
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
.vl {
  border-left: 6px solid green;
  height: 500px;
}
</style>
</head>
<body>

<div>
    <div class="container">
  <div class="row no-gutters">
  <div class="col-6 col-md-1" style="background-color:	#004C99"><p style="color: white">STEP 1</p></div>
  <div class="col-12 col-sm-6 col-md-11"  style="background-color:#0080FF 	"><p style="color: white">Tickets</p></div>
 
</div>
<div><br></div>
  <button class="btn btn-primary" onclick="openPage('Home', this, '#60AFFE')" id="defaultOpen">PASSPORT NEXT</button>
<button class="btn btn-primary" onclick="openPage('News', this, '#60AFFE')">REGULAR ENTRY TICKETS</button>
<button class="btn btn-primary" onclick="openPage('Contact', this, '#60AFFE')">COMBINED TICKETS</button>
<button class="btn btn-primary" onclick="openPage('About', this, '#60AFFE')">FAST TRACK ENTRY</button>
<div><hr></div>
<div id="Home" class="tabcontent">
<div class="container-fluid">
<form method="post" action="step2.jsp">
  <div class="row">
    <div class="col"><div><img src="passport.png" class="center" height="50%" width="100%" ></div></div>
    <div class="col" style="color:black"> PASSPORT NEXT<br>
Annual Passport: 3 Visits in year to EsselWorld or Water Kingdom. e booking is valid for 30 days from the of booking and Pass validity for 1 year from the date of the first visit to the either of the parks.
View More </div>
    <div class="col"> <div class="mar">
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Type</th>
      <th scope="col">Quantity........</th>
      <th scope="col">Price/Ticket</th>
      <th scope="col">Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">Adult</th>
      <td>
     
            <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin">
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down decrementbtn2" type="button">-</button></span>
                
                <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="0" id="srCitizen" name="ddSenior" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
                                             
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-up incrementbtn3" type="button">+</button></span></div>
            </div>
          

            <script type="text/javascript">
  $(document).ready(function()
  {
  var incrementvalue=0;
  var incrementvalue1=0;
  var incrementvalue2=0;
    console.log("script loaded");
    $(".incrementbtn1").click(function()
    {
      //console.log("test");
      incrementvalue++;
      $("#Adult").val(incrementvalue);
    });

    $(".decrementbtn").click(function()
    {
      //console.log("test");
      incrementvalue--;
      $("#Adult").val(incrementvalue);
    });



    $(".incrementbtn2").click(function()
    {
      console.log("test");
      incrementvalue1++;
      $("#Child").val(incrementvalue1);
    });

    $(".decrementbtn1").click(function()
    {
      console.log("test");
      incrementvalue1--;
      $("#Child").val(incrementvalue1);
    });




    $(".incrementbtn3").click(function()
    {
      console.log("test");
      incrementvalue2++;
      $("#srCitizen").val(incrementvalue2);
    });



    $(".decrementbtn2").click(function()
    {
      console.log("test");
      incrementvalue2--;
      $("#srCitizen").val(incrementvalue2);
    });

  });
</script>
                                         
      </td>
      <td>
         345                       
      </td>
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
      <th scope="row">235</th>
    </tr>
    <th scope="row"><button target="_blank" type="submit" class="btn btn-primary">select</button></th>
    
    
  </tbody>
</table></div>


  </div>
  </form>
</div>
</div>

<div id="News" class="tabcontent">
 
<div class="container-fluid">
<form method="post" action="step2.jsp">
  <div class="row">
    <div class="col"><div><img src="regular.png" class="center" height="50%" width="100%" ></div></div>
    <div class="col" style="color:black">REGULAR ENTRY TICKET<br>
REGULAR TICKET WATER KINGDOM : ONE DAY VISIT TO PARK</div>
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
   <tr>
      <th scope="row">Child</th>
      <td>₹1035</td>
      <td>₹660</td>
      <td>₹660</td>
    </tr><tr>
      <th scope="row">Sr Citizen</th>
      <td>₹1035</td>
      <td>₹660</td>
      <td>₹660</td>
    </tr> 
    
  </tbody>
</table>
</div>
</div>

    <div><table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Total</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"><button type="submit" class="btn btn-primary">select</button></th>
    
    
  </tbody>
</table></div>
  </div>
  </form>
</div>
   
</div>

<div id="Contact" class="tabcontent">

<div class="container-fluid">
<form method="post" action="step2.jsp">
  <div class="row">
    <div class="col"><div><img src="combined.png" class="center" height="50%" width="100%" ></div></div>
    <div class="col" style="color: black;">
COMBINED<br>
Combined Ticket: One day Visit to EsselWorld and Water Kingdom. </div>
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
     <tr>
      <th scope="row">Child</th>
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
    <th scope="row"><button type="submit" class="btn btn-primary">select</button></th>
    
    
  </tbody>
</table></div>
  </div>
  </form>
</div>
</div>

<div id="About" class="tabcontent">
 
<div class="container-fluid">
<form method="post" action="step2.jsp">
  <div class="row">
    <div class="col"><div><img src="track.png" class="center" height="50%" width="100%" ></div></div>
    <div class="col" style="color: black;"> 
FAST TRACK ENTRY<br>
Privilege entry to park & no queue to rides. Access to all Adult/Kids/Family Water Slides </div>
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
     <tr>
      <th scope="row">Child</th>
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
    <th scope="row"><button type="submit" class="btn btn-primary">select</button></th>
    
    
  </tbody>
</table></div>
  </div>
  </form>
</div>
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
<div class="row no-gutters">
  <div class="col-6 col-md-1" style="background-color:	#696969"><p style="color: white">STEP 2</p></div>
  <div class="col-12 col-sm-6 col-md-11"  style="background-color: 	#A8A8A8"><p style="color: white">Food & Beverages / Merchandise</p></div>
  
</div>
<div><br></div>
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