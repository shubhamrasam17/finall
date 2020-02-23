<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<title>attractions</title>
	 <title>Attraction</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<style>
* {
  box-sizing: border-box;
}

body {
  font-family: Arial;
  font-size: 17px;
}

.container {
  position: relative;
  max-width: 990px;
  margin: 0 auto;
}

.container img {vertical-align: middle;}

.container .content {
  position: absolute;
  bottom: 0;
  background: rgb(0, 0, 0); /* Fallback color */
  background: rgba(0, 0, 0, 0.5); /* Black background with 0.5 opacity */
  color: #f1f1f1;
  width: 97%;
  padding: 20px;
}
.flip-card {
  background-color: transparent;
  width: 300px;
  height: 300px;
  perspective: 1000px;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.6s;
  transform-style: preserve-3d;
  box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(180deg);
}

.flip-card-front, .flip-card-back {
  position: absolute;
  width: 100%;
  height: 100%;
  backface-visibility: visible;
}

.flip-card-front {
  background-color: #bbb;
  color: black;
}

.flip-card-back {
  background-color: #red;
  color: white;
  transform: rotateY(180deg);
}

 .column {
  float: left;
  width: 33%;
  padding: 0 20px;
}
/* Remove extra left and right margins, due to padding */
.row {margin: 0 10px;}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;style="text-shadow: 2px 2px 8px #0000FF;text-align: center;"
  clear: both;
}

/* Responsive columns */
@media screen and (max-width: 600px) {
  .column {
    width: 100%;
    display: block;
    margin-bottom: 20px;
  }
}

</style>
</head>
<body>

	<center><h4 style="text-shadow: 2px 2px 8px #0000FF;text-align: center;font-size:46px;">Water Rides at Waterpark </h4></center>
	<div class="container">
  <img src="a1.jpg" alt="Notebook" style="width:100%;">
  <div class="content">
    <center><h1>Splash your way into fun with</h1>
    <p>INDIA LARGEST WATER PARK</p></center>
  </div>
</div>
<div>
	<hr>
</div>
<div class="row">
	<div class="column">
		<div class="flip-card">
	 		 <div class="flip-card-inner">
    			<div class="flip-card-front">
      				<img src="coaster.jpg" alt="Avatar" style="width:300px;height:300px;">
    			</div>
    	<div class="flip-card-back">
      <h3>What A Coster</h3>
		<p> For those who live to test their limits, What-A-Coaster (adult slide) offers one of the tallest vertical drops in the country. Riders endure a heart-pumping seven-story drop that reaches speeds up to 40 miles per hour. The unique slide is centered on sleds in which the riders go down with a jolt and screams like a sky screamer.</p>
    	</div>
  		</div>
		</div>
	</div>
	<div class="column">
		<div class="flip-card">
	 		 <div class="flip-card-inner">
    			<div class="flip-card-front">
      				<img src="GoofersLagoon.jpg" alt="Avatar" style="width:300px;height:300px;">
    			</div>
    	<div class="flip-card-back">
      <h3>Goofers Lagoon</h3>
		<p>Another recent & a major attraction in the park for toddlers. A multi-purpose water play system with interactive activities like water guns, spinning tray, tilting bucket with 400 liters of water, splash roof and an inverted umbrella. The new ride is all about pleasure, combined with a fun and childlike experience to be enjoyed by children and adults alike.</p>
    	</div>
  		</div>
		</div>
	</div>
	<div class="column">
		<div class="flip-card">
	 		 <div class="flip-card-inner">
    			<div class="flip-card-front">
      				<img src="Bratzone.jpg" alt="Avatar" style="width:300px;height:300px;">
    			</div>
    	<div class="flip-card-back">
      <h3>Bratzone</h3>
		<p> Groove yourself in this rain dance zone - Aquadrome. Imagine the overcast, the drizzle turning into a downpour and the shimmering dance floor. Just help yourself to be lost in the music and keep dancing. The space attracts visitors of all genre of life. The atmosphere is just mesmerizing with rain showers, laser lights and much more happening at the dancing zone. Splash water, walk on sprinklers and laze around in the shallow Coco beach and Mamma-Miya.</p>
    	</div>
  		</div>
		</div>
	</div>
	
</div>
<div>
		<hr>
	</div>
<div class="row">
	<div class="column">
		<div class="flip-card">
	 		 <div class="flip-card-inner">
    			<div class="flip-card-front">
      				<img src="AdventuresAmazonia.jpg" alt="Avatar" style="width:300px;height:300px;">
    			</div>
    	<div class="flip-card-back">
      <h3>Adventures Amazonia</h3>
		<p> Rides like Elephant Safari, Rock ‘n’ Roll Safari and Serpent Safari, where the riders can slide down to a short tunnel and are thrown our into a large water pool.</p>
    	</div>
  		</div>
		</div>
	</div>
	<div class="column">
		<div class="flip-card">
	 		 <div class="flip-card-inner">
    			<div class="flip-card-front">
      				<img src="THELAGOON.jpg" alt="Avatar" style="width:300px;height:300px;">
    			</div>
    	<div class="flip-card-back">
      <h3>THE LAGOON</h3>
		<p>India’s Largest Aqua play pool – the Lagoon is now open at Water Kingdom. Spread across 30,000 sq.ft, The lagoon is a perfect family play port suitable for guests of all age group. Its 10 different (3 kiddie slides, 4 family slides, 3 adult/thrill slides) elements will definitely get you drenched with fun. And more with its 500 liters Elephant bucket that splashes water while tumbling down.</p>
    	</div>
  		</div>
		</div>
	</div>
	<div class="column">
		<div class="flip-card">
	 		 <div class="flip-card-inner">
    			<div class="flip-card-front">
      				<img src="Wetlantic.jpg" alt="Avatar" style="width:300px;height:300px;">
    			</div>
    	<div class="flip-card-back">
      <h3>Wetlantic</h3>
		<p> This place is rates as the maximum entertaining of ‘em all on the thrillmeter’, claiming it to be the exceptional and one its kind. The largest wave pool in the world is spread across 100 meters with cool blue water and busch gardens. Attractions geared like, fountains and scenic natural beauty with gently rolling waves in the shallows and constant lifeguard supervision, guests of all ages can hit the surf in safety. The location includes Jungle Beach, Love Boat, Bay Watch Tower and Cascade Caves.</p>
    	</div>
  		</div>
		</div>
	</div>
</div>		

</body>
</html>