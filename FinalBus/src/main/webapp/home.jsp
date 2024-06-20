<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel ="stylesheet" type="text/css" href="css/Homepage.css">

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
   <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>

</head>
<body>
<!-- Header -->
	<header class= "header">
		<img src="images/buybus.png" alt="BuyBus">
	
		  <div class="nav">
            <a href="home.jsp">
                <button>Home</button>
            </a>
            <a href="registration.php">
                <button>Sign up/ Log in</button>
            </a>
            <a href="contact.html">
                <button>Contact Us</button>
            </a>
        </div>
	</header>
	<style>
body {
  background-image: url('images/R.png');
  background-repeat: no-repeat;
  background-attachment: fixed;
  background-size: 100% 100%;
}
</style>
	
	<!-- img slideshow -->
	<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="images/busbg1.jpg" alt="Los Angeles" style="max-height: 300px; width: 100%;">
        <div class="carousel-caption">
         
        </div>
      </div>

      <div class="item">
        <img src="images/busbg4.jpg" alt="Chicago" style="max-height: 300px; width: 100%;">
        <div class "carousel-caption">
         
        </div>
      </div>
    
      <div class="item">
        <img src="images/busbg3.png" alt="New York" style="max-height: 300px; width: 100%;">
        <div class="carousel-caption">
         
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
	<br>
	
	



	
	<!-- search bar  --> 
<div class="container text-center">
  <div class="row">
    <div class="col">
          <div class="card mx-auto my-5" style="background-color: white; display: inline-block;">
        <div class="card-header">
        </div>
         <div class="card-body">
         <form >
    <p></p>
    <label for="from">From:</label>
    <input type="search" name="from" id="from" placeholder="Leaving from...">
            
    <label for="to">To:</label>
    <input type="search" name="to" id="to" placeholder="Going to...">
            
    <label for="date">Date:</label>
    <input type="date" name="date" id="date">
            
     



</form>
<div class="nav">
            <!-- Add a button to go to the bus list -->
            <a href="bus-list">
                <button class="search-button">search</button>
            </a>
       </div>
      </div>
    </div>
  </div>
</div>
<br>


	<!-- about company 

<div class="container text-center">
  <div class="row">
    <div class="col">
      <div class="card mx-auto my-5" style="background-color: white; display: inline-block;">
        <div class="card-header">
          
        </div>
        <div class="card-body">
          <h1 class="section-heading"><b>Why Choose BuyBus</b></h1>
          <p class="card-text">Your One-Stop Shop for Bus Travel Convenience and Affordability</p>
          <p>Whether you're a seasoned traveler or a first-timer, booking a bus ticket can be a daunting task. But with BuyBus, it's a breeze.</p>
                <p>With our wide selection of bus operators and routes to choose from, you're sure to find the perfect bus to take you to your destination. And with our easy-to-use booking system, you can book your ticket in just a few clicks.</p>
          
        </div>
        <div class="card-footer text-muted">
          
        </div>
      </div>
    </div>
  </div>
</div>

  -->
  
  <div class="container text-center">
  <div class="row">
    <div class="col">
      <div class="card mx-auto my-5"  display: inline-block;">
        <div class="card-header">
          
        </div>
        <div class="card-body">
          <h1  class="section-heading" ><FONT COLOR=white><b>Why Choose BuyBus</b></h1>
          <p class="card-text">Your One-Stop Shop for Bus Travel Convenience and Affordability</p>
          <p>Whether you're a seasoned traveler or a first-timer, booking a bus ticket can be a daunting task. But with BuyBus, it's a breeze.</p>
                <p>With our wide selection of bus operators and routes to choose from, you're sure to find the perfect bus to take you to your destination. And with our easy-to-use booking system, you can book your ticket in just a few clicks.</p>
          
        </div>
        <div class="card-footer text-muted">
          
        </div>
      </div>
    </div>
  </div>
</div>




<div class="container py-5">
  <div class="output" id="output">
    <h1 class="cursor"></h1>
    <p></p>
  </div>
</div>
	<br><br>
 <!--Footer-->
 </div>
     <hr>
        <footer class="footer">
        
            <div class="social">
                <img src="images/fb.png" width="60px">
                <img src="images/insta.png" width="60px">
                <img src="images/whtsapp.png" width="60px">
            </div>
            <div class="contact">
                <img class="m1" src="images/phone.png" width="30px">
                <img class="m2" src="images/mail.png" width="30px">

            </div>
            <div class="contactInfo">
                <P class="p1">0112 555 555</P>
                <p class="p2">buyBus@gmail.com</p>
            </div>  
        </footer>


</body>
</html>