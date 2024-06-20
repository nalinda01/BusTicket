<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List, com.entity.Bus" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Bus List</title>
    <link rel="Stylesheet" href="css/BusTable.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	 
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	  <link rel ="stylesheet" type="text/css" href="css/Homepage.css">
	 <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
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
	
	
    <h1>Bus List</h1>
    <h4> <a href="addbus.jsp" class="button">Add</a></h4>
    <div class="table-container">
    <table border="1">
    <table class="table table-striped">
    <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>Departure</th>
            <th>Arrival</th>
            <th>Type</th>
            <th>Time</th>
            <th>Price</th>
            <th>Route</th>
            <th>Book</th> <!-- Add a new column for the Book button -->
        </tr>
        <c:forEach items="${buses}" var="bus">
            <tr>
                <td>${bus.id}</td>
                <td>${bus.departure}</td>
                <td>${bus.arrival}</td>
                <td>${bus.type}</td>
                <td>${bus.time}</td>
                <td>${bus.price}</td>
                <td>${bus.route}</td>
                <td>
                    <a href="book?busId=${bus.id}">Book</a> <!-- Add a Book button that links to a book URL -->
                </td>
            </tr>
        </c:forEach>
    </table>
    
    <!--Footer-->

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
