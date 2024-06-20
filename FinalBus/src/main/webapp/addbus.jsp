<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Bus Details</title>
    <link rel="Stylesheet" href="css/addbus.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	
		<link
		href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
	<script
		src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
		
		<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
		
		
</head>
<body>

   <h1>Add Bus Details</h1>
    <form action="BusInsertServlet" method="post">
        Departure: <input type="text" name="departure"><br>
        Arrival: <input type="text" name="arrival"><br>
        Type: <input type="text" name="type"><br>
        Time: <input type="number" name="time"><br>
        Price: <input type="number" name="price"><br>
        Route: <input type="text" name="route"><br>
        <input type="submit" value="Add Bus">
    </form>
    <a href="bus-list">
                <button class="search-button">search</button>
            </a>
  </div>


    
</body>
</html>
