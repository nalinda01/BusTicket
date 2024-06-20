<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="com.entity.Bus" %>

<!DOCTYPE html>
<html>
<!-- Include your styles and scripts -->
    <link rel="stylesheet" href="css/homeCss.css">
    <link rel="stylesheet" href="css/card.css">
	 <%@include file="/includes/head.jsp"%>
	<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	 
	<style>
        .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin: 10px;
        }
    </style>
    <link rel ="stylesheet" type="text/css" href="css/Homepage.css">
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
	<br>
	<br>
<body>
<div class="card-main">
 <div class="nexus">
      <p class="card-heading text-center"><b>Booking Details</b></p>
      
       
                <p >ID:<b> ${bus.id}</b></p>
                <p>Departure:<b>${bus.departure}</b></p>
                <p>Arrival:<b> ${bus.arrival}</b></p>
                <p>Type:<b> ${bus.type}</b></p>
                <p>Time:<b> ${bus.time}</b></p>
                <p>Price: <b>${bus.price}</b></p>
                <p>Route:<b> ${bus.route}</b></p>
 

      <div class:"price-section">
      <!-- Include JavaScript to calculate price based on seat quantity 
                
        <p class="total-text text-center">TOTAL<br/> Price: $<span id="totalPrice">0.00</span></p>
   -->   </div><!--/.price-section-->
    </div><!--/.nexus-->
    <!--credit-section-->
    <div class="credit-section">
       <p class="card-heading text-center"><b>Payment Details</b></p>
      <!--credit-card-->
      <div class="card-up-section">
      <div class="credit-card">
                
        <div class="card-detail">
        <form action="confirmBooking.jsp" method="post">
        
          <p class="holder-text detail-heading">Passenger Name:</p>
          <input type="text" id="userName" name="userName" aria-describedby="basic-addon1" required><br>
         
          
          <p class="expires-text detail-heading">Email :</p>
        <input type="email" id="passengerEmail" name="passengerEmail" required><br>
         
          
          <p class="holder-text detail-heading">Seat Quantity:</p>
          <input type="number" id="seatQty" name="seatQty" required min="1" pattern="\d+"><br>
           </form>
        
        
        <p class="total-text text-center"><b>TOTAL<br/> Price: $<span id="totalPrice">0.00</b></span></p>
        <button type="button" class="btn-pay btn btn-success" onclick="processPayment()">Pay</button> 
      </div>
      <script>
      
    document.getElementById("seatQty").addEventListener("input", function() {
        const seatQty = parseFloat(this.value);
        const pricePerSeat = parseFloat(${bus.price});
        const totalPrice = seatQty * pricePerSeat;
        document.getElementById("totalPrice").textContent = totalPrice.toFixed(2);
    });
    </script> 
    
    
    <input type="hidden" name="busId" value="${bus.id}">
   

<script>
        function processPayment() {
            // Check if all fields are filled
            if (document.getElementById('userName').value.trim() === '' ||
                document.getElementById('passengerEmail').value.trim() === '' ||
                document.getElementById('seatQty').value.trim() === '' ) {
                alert("Please fill in all fields before proceeding.");
            } else {
                // Perform payment processing logic here (you can replace this with your actual payment logic)
                alert("Payment Successful!");
                // You can also submit the form to a server here if needed
                // document.getElementById('paymentForm').submit();
                location.reload();
            }
        }
       
    </script>
        </div>
      </div><br><br>
      </div>  </div>  
       <!--Footer-->
 <div>
        <footer class="footer" style="position: fixed; bottom: 0; width: 100%; background-color: #333; color: #fff; text-align: center; padding: 10px 0;">
    <div class="social">
        <img src="images/fb.png" width="60px" style="margin: 0 10px;">
        <img src="images/insta.png" width="60px" style="margin: 0 10px;">
        <img src="images/whtsapp.png" width="60px" style="margin: 0 10px;">
    </div>
    <div class="contact">
        <img class="m1" src="images/phone.png" width="30px" style="margin-right: 10px;">
        <img class="m2" src="images/mail.png" width="30px">
    </div>
    <div class="contactInfo">
        <p class="p1" style="margin: 0;">0112 555 555</p>
        <p class="p2" style="margin: 0;">buyBus@gmail.com</p>
    </div>
</footer>

        </div>
</body>
</html>
