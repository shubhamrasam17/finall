<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<style type="text/css">
.text-block {
  position: absolute;
  bottom: 10%;
  right: 80%;
  color: grey;
}
.card
{
  margin-top: 2%;
  margin-left: 2%;
}

.book{
  margin-top: 15px;
  margin-left: 65px;
}
    .bs-example{
        margin: 20px;
    }
    
    .parallax {
  /* The image used */
  background-image: url("home.jpg");

  /* Set a specific height */
  min-height: 200px; 

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
.responsive {
  width: 100%;
  height:auto;
}
body{
  background-color:#E5E5FF; 
}
/* REMOVE THIS, USE YOUR OWN  */
html,body {
  margin: 0;
  padding: 0;
  font-family: Arial, Helvetica, Sans-serif;
  background-color: #070617;
}
.dummy_page {
  height: 200px;
  width: 100%;
  background-color: #f0f0f0;
  text-align: center;
  box-sizing: border-box;
  padding: 60px 0px;
}
/* STYLES SPECIFIC TO FOOTER  */
.footer {
  width: 100%;
  position: relative;
  height: auto;
  background-color: #070617;
}
.footer .col {
  width: 190px;
  height: auto;
  float: left;
  box-sizing: border-box;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  padding: 0px 20px 20px 20px;
}
.footer .col h1 {
  margin: 0;
  padding: 0;
  font-family: inherit;
  font-size: 12px;
  line-height: 17px;
  padding: 20px 0px 5px 0px;
  color: rgba(255,255,255,0.2);
  font-weight: normal;
  text-transform: uppercase;
  letter-spacing: 0.250em;
}
.footer .col ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
}
.footer .col ul li {
  color: #999999;
  font-size: 14px;
  font-family: inherit;
  font-weight: bold;
  padding: 5px 0px 5px 0px;
  cursor: pointer;
  transition: .2s;
  -webkit-transition: .2s;
  -moz-transition: .2s;
}
.social ul li {
  display: inline-block;
  padding-right: 5px !important;
}

.footer .col ul li:hover {
  color: #ffffff;
  transition: .1s;
  -webkit-transition: .1s;
  -moz-transition: .1s;
}
.clearfix {
  clear: both;
}
@media only screen and (min-width: 1280px) {
  .contain {
    width: 1200px;
    margin: 0 auto;
  }
}
@media only screen and (max-width: 1139px) {
  .contain .social {
    width: 1000px;
    display: block;
  }
  .social h1 {
    margin: 0px;
  }
}
@media only screen and (max-width: 950px) {
  .footer .col {
    width: 33%;
  }
  .footer .col h1 {
    font-size: 14px;
  }
  .footer .col ul li {
    font-size: 13px;
  }
}
@media only screen and (max-width: 500px) {
    .footer .col {
      width: 50%;
    }
    .footer .col h1 {
      font-size: 14px;
    }
    .footer .col ul li {
      font-size: 13px;
    }
}
@media only screen and (max-width: 340px) {
  .footer .col {
    width: 100%;
  }
}
</style>
</head>
<body>
<div>
<div class="bs-example">
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
    <div>
        <a id="brand-image" href="home.jsp" class="navbar-brand"><img alt="website log" src="home.jpg" width="50px"></a>
        </div>

        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
                <a href="#" class="nav-item nav-link active">Home</a>&nbsp;|&nbsp;
                <a href="#" class="nav-item nav-link">Directions</a>&nbsp;|&nbsp;
                <a href="#" class="nav-item nav-link">Contact</a>
            </div>
            <form class="form-inline ml-auto">
               
                 <p><font size="2" color="white">Already a member?<a href="login.jsp"> Sign in</a><br><a href="registration.jsp"> sign up</a> here</font></p>
            </form>
        </div>
    </nav>
</div>
<div >
    <img src="hom.jpg" class="responsive" >
<div class="text-block">
  <div class="card" style="width: 18rem;">
  <div class="col-xs-4">
            
            <!-- <div class="col-xs-8">
              <input id="defaultDate" type="hidden" name="defaultDate" value=""><input type="Date" class="form-control hasDatepicker" name="txtDepartDate" id="visitParkDate" placeholder="Select Date" readonly="true">
            </div>
 -->
  <div class="card-body" style="background-color: #E5E5FF">
  <form method="post" action="tickets.jsp">
    <h5 class="card-title text-center">BOOK TICKETS</h5>
    <div class="container">
    <div class="row">
      <div class="col-xs-2 text-center">
            <div class="visitorCategory"><label for="Adult">Adult</label></div>
            <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin"><span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down decrementbtn" type="button">-</button>
              </span>
              <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="1" id="Adult" name="ddAdult" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>

              <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-up incrementbtn1" type="button">+</button></span>
              </div>
            </div>
          </div>
    </div>
    <div class="col-xs-2 text-center">
            <div class="visitorCategory"><label for="Child">Child</label></div>
            <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin"><span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down  decrementbtn1 " type="button">-</button></span>
              <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="0" id="Child" name="ddChild" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
              <span class="input-group-btn"><button class="btn btn-default btn-primary bootstrap-touchspin-up incrementbtn2" type="button">+</button></span></div>
            </div>
          </div>
    </div>

    <div class="col-xs-3 text-center">
            <div class="visitorCategory"><label for="Sr. Citizen">Sr. Citizen</label></div>
            <div class="visitorCategoryCount">
              <div class="input-group bootstrap-touchspin">
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-down decrementbtn2" type="button">-</button></span>
                
                <span class="input-group-addon bootstrap-touchspin-prefix" style="display: none;"></span><input type="text" value="0" id="srCitizen" name="ddSenior" class="form-control" style="display: block;"><span class="input-group-addon bootstrap-touchspin-postfix" style="display: none;"></span>
                                             
                <span class="input-group-btn"><button class="btn btn-primary btn-default bootstrap-touchspin-up incrementbtn3" type="button">+</button></span></div>
            </div>
          </div>

  

    <h4><a href="#" class="">View Admission Critria</a></h4>
    <button class="btn btn-primary btn-lg book" type="submit"  >BOOK</button>
    </form>
  </div>
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

<script type="text/javascript">
        $(function () {
            $('#datetimepicker8').datetimepicker({
                icons: {
                    time: "fa fa-clock-o",
                    date: "fa fa-calendar",
                    up: "fa fa-arrow-up",
                    down: "fa fa-arrow-down"
                }
            });
        });
    </script>

</div>



</div>
<div>
  <div class="parallax"></div>
    <div class="container-lg">
  
  <button class="tablink" onclick="openPage('Home', this, '#60AFFE')"id="defaultOpen">ENTRY RATES</button>
<button class="tablink" onclick="openPage('News', this, '#60AFFE')" >ATTRACTIONS</button>
<button class="tablink" onclick="openPage('Contact', this, '#60AFFE')">Tarific Tuesday</button>
<button class="tablink" onclick="openPage('About', this, '#60AFFE')">Park Timing</button>

<div id="Home" class="tabcontent" >
<iframe src="entry.jsp" height="800" width="100%"></iframe>
</div>

<div id="News" class="tabcontent">
  <iframe src="attractions.jsp" height="950" width="100%"></iframe> 
</div>

<div id="Contact" class="tabcontent">
  <iframe src="tarificthuesday.jsp" height="950" width="100%"></iframe>
</div>

<div id="About" class="tabcontent">
  <iframe src="time.jsp" height="800" width="100%"></iframe>
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

  </div>
  <footer>
    fgdfgsf
  </footer>
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
<div class="dummy_page">
  Mobile responsive footer
</div>
<!-- FOOTER START -->
<div class="footer">
  <div class="contain">
  <div class="col">
    <h1>Company</h1>
    <ul>
      <li>About</li>
      <li>Mission</li>
  
    </ul>
  </div>
  <div class="col">
    <h1>Products</h1>
    <ul>
      <li>About</li>
      <li>Mission</li>
  
    </ul>
  </div>
  <div class="col">
    <h1>Accounts</h1>
    <ul>
      <li>About</li>
      <li>Mission</li>
    
    </ul>
  </div>
  <div class="col">
    <h1>Resources</h1>
    <ul>
      <li>Webmail</li>
      <li>Redeem code</li>
     
    </ul>
  </div>
  <div class="col">
    <h1>Support</h1>
    <ul>
      <li>Contact us</li>
      <li>Web chat</li>
      <li>Open ticket</li>
    </ul>
  </div>
  <div class="col social">
    <h1>Social</h1>
    <ul>
      <li><img src="https://svgshare.com/i/5fq.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5eA.svg" width="32" style="width: 32px;"></li>
      <li><img src="https://svgshare.com/i/5f_.svg" width="32" style="width: 32px;"></li>
    </ul>
  </div>
<div class="clearfix"></div>
</div>
</div>
<!-- END OF FOOTER -->

</body>
</html>                            