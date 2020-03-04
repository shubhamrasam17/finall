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
                                     
<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="ricecombo.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row">
                  <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin">
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down decrementbtn2" type="button">-</button></span>
               
                <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="0" id="rice" name="ddSenior" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
                                             
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-up incrementbtn3" type="button">+</button></span></div>
            </div>
         

            <script type="text/javascript">
  $(document).ready(function()
  {
  var incrementvalue=0;
  var incrementvalue1=0;
  var incrementvalue2=0;
    console.log("script loaded");
 



    $(".incrementbtn3").click(function()
    {
      console.log("test");
      incrementvalue2++;
      $("#rice").val(incrementvalue2);
      var num1 = $("#rice").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans").val(answer);

    });



    $(".decrementbtn2").click(function()
    {
      console.log("test");
      incrementvalue2--;
      $("#rice").val(incrementvalue2);
      var num1 = $("#rice").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans").val(answer);
      
    });

  });
</script>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    
    
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
      <th scope="row"><input id="ans" name="a" value="0" readonly="readonly">Rs.0</input> </th>
    </tr>
    
    
  </tbody>
</table></div>
  </div>
</div>
<div><br></div>

<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="vaishnavthali.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row">
                  <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin">
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down decrementbtn21" type="button">-</button></span>
               
                <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="0" id="puri" name="ddSenior" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
                                             
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-up incrementbtn31" type="button">+</button></span></div>
            </div>
         

            <script type="text/javascript">
  $(document).ready(function()
  {
  var incrementvalue=0;
  var incrementvalue1=0;
  var incrementvalue2=0;
    console.log("script loaded");
 



    $(".incrementbtn31").click(function()
    {
      console.log("test");
      incrementvalue2++;
      $("#puri").val(incrementvalue2);
      var num1 = $("#puri").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans1").val(answer);

    });



    $(".decrementbtn21").click(function()
    {
      console.log("test");
      incrementvalue2--;
      $("#puri").val(incrementvalue2);
      var num1 = $("#puri").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans1").val(answer);
      
    });

  });
</script>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    
    
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
      <th scope="row"><input id="ans1" name="b" value="0" readonly="readonly">Rs.0</input></th>
    </tr>
    
    
  </tbody>
</table></div>
  </div>
</div>
<div><br></div>

<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="noodlescombo.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row">
                      <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin">
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down decrementbtn22" type="button">-</button></span>
               
                <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="0" id="nood" name="ddSenior" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
                                             
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-up incrementbtn32" type="button">+</button></span></div>
            </div>
         

            <script type="text/javascript">
  $(document).ready(function()
  {
  var incrementvalue=0;
  var incrementvalue1=0;
  var incrementvalue2=0;
    console.log("script loaded");
 



    $(".incrementbtn32").click(function()
    {
      console.log("test");
      incrementvalue2++;
      $("#nood").val(incrementvalue2);
      var num1 = $("#nood").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans2").val(answer);

    });



    $(".decrementbtn22").click(function()
    {
      console.log("test");
      incrementvalue2--;
      $("#nood").val(incrementvalue2);
      var num1 = $("#nood").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans2").val(answer);
      
    });

  });
</script>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    
    </th>
    
    
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
      <th scope="row"><input id="ans2" name="c"  value="0" readonly="readonly">Rs.0</input></th>
    </tr>
    
    
  </tbody>
</table></div>
  </div>
</div>
<div><br></div>

<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="vegthali.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row">
      <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin">
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down decrementbtn23" type="button">-</button></span>
               
                <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="0" id="dal" name="ddSenior" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
                                             
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-up incrementbtn33" type="button">+</button></span></div>
            </div>
         

            <script type="text/javascript">
  $(document).ready(function()
  {
  var incrementvalue=0;
  var incrementvalue1=0;
  var incrementvalue2=0;
    console.log("script loaded");
 



    $(".incrementbtn33").click(function()
    {
      console.log("test");
      incrementvalue2++;
      $("#dal").val(incrementvalue2);
      var num1 = $("#dal").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans3").val(answer);

    });



    $(".decrementbtn23").click(function()
    {
      console.log("test");
      incrementvalue2--;
      $("#dal").val(incrementvalue2);
      var num1 = $("#dal").val();
      var num2 = 5;
      var answer = parseInt(num1) * parseInt(num2);
      
$("#ans3").val(answer);
      
    });

  });
</script>
 </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    <th>
    </th>
    </th>
    
    
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
      <th scope="row"><input id="ans3" name="d"  value="0" readonly="readonly">Rs.0</input></th>
    </tr>
    
    
  </tbody>
</table></div>
  </div>
</div>
                                                </div>

<div id="News" class="tabcontent">
  
<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="pavbhaji.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"></th>
    
    
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
    
    
  </tbody>
</table></div>
  </div>
</div>
<div><br></div>

<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="paneerpakoda.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"><button type="button" class="btn btn-primary">ADD</button></th>
    
    
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
    
    
  </tbody>
</table></div>
  </div>
</div>
</body> 
</div>

<div id="Contact" class="tabcontent">
  
<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="vegpatties.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"><button type="button" class="btn btn-primary">ADD</button></th>
    
    
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
    
    
  </tbody>
</table></div>
  </div>
</div>
<div><br></div>

<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="frenchfries.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"><button type="button" class="btn btn-primary">ADD</button></th>
    
    
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
    
    
  </tbody>
</table></div>
  </div>
</div>
  
</div>

<div id="About" class="tabcontent">
  
<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="pizza.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"><button type="button" class="btn btn-primary">ADD</button></th>
    
    
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
    
    
  </tbody>
</table></div>
  </div>
</div>
<div><br></div>

<div class="container-fluid">
  <div class="row">
    <div class="col"><div><img src="cheese.jpg" class="center" height="50%" width="100%" ></div></div>
        <div class="col">
         <div class="mar">
<table class="table table-hover">
   <thead>
    <tr>
      <th scope="col">Price/Unit</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">343</th>
    </tr>
    <th scope="row"><button type="button" class="btn btn-primary">ADD</button></th>
    
    
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
    
    
  </tbody>
</table></div>
  </div>
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
<div><br></div>
<div>
<button type="button" class="btn btn-primary abcd" >confirm</button>
 <script type="text/javascript">
  $(document).ready(function()
  {
    console.log("script loaded");
  



    $(".abcd").click(function()
    {
     
    	
    	
    	
    	
    	
      var num1 = $("#ans").val();
      var num2 = $("#ans1").val();
      var num3 = $("#ans2").val();
      var num4 = $("#ans3").val();
      
      var answer = parseInt(num1) + parseInt(num2) + parseInt(num3)+ parseInt(num4)  ;
      
$("#totalsnack").val(answer);
    });


   

  });
</script>
your total snack is <input  id="totalsnack"  name="tt" readonly="readonly"></input>    
</div>
<div>

 

		<jsp:declaration>
	
		String total;
		
	
	</jsp:declaration>
	
	<jsp:scriptlet>
	
	total=request.getParameter("result");
	
	</jsp:scriptlet>
	



<STRONG>	YOUR TOTAL BILL AMOUNT IS:</STRONG><jsp:expression>total</jsp:expression>
	
 
	
	


<button style="float: right" class="btn btn-primary"><a href="#" onclick="myConfirm()">PROCEED</a></button> </div>
<script type="text/javascript" rel="javascript">
function myConfirm() {
	
	console.log("INside pop up");

    var num1 = $("#ans").val();
    var num2 = $("#ans1").val();
    var num3 = $("#ans2").val();
    var num4 = $("#ans3").val();
    
    
    var answer = parseInt(num1) + parseInt(num2) + parseInt(num3)+ parseInt(num4)  ;
    var book='<%=total%>';
    var finalstatus=parseInt(answer)+parseInt(book);
	var response=confirm("DO YOU WANT TO DELETE RECORD OF"+answer+book+"</br>"+"FINAL PRICE" +finalstatus);
	
	
	if(response)
		{
		
		window.location="http://localhost:8080/OnlineWaterParkBooking/step3.jsp";
		}

}
</script>

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