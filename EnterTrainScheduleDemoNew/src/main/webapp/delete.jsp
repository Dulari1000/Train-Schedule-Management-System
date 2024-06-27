<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Train</title>

	<link rel="stylesheet" href="table.css">
</head>
<body>
<header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="home.jsp">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        
        <div class="signup-container">
	<%
		String tid = request.getParameter("tid");
		String tname = request.getParameter("tname");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String seats = request.getParameter("seats");
	%>

	<h1>Delete Train</h1>

	<form action="delete" method="post">
	<table>
	<tr>
		<td>Train ID</td>
		<td><input type="text" name="tid" value="<%= tid %>" readonly></td>
	</tr>
	<tr>
		<td>Train Name</td>
		<td><input type="text" name="tname" value="<%= tname %>" readonly></td>
	</tr>
	<tr>
		<td>Date</td>
		<td><input type="text" name="date" value="<%= date %>" readonly></td>
	</tr>
	<tr>
		<td>Time</td>
		<td><input type="text" name="time" value="<%= time %>" readonly></td>
	</tr>
	<tr>
		<td>Start</td>
		<td><input type="text" name="start" value="<%= start %>" readonly></td>
	</tr>
	<tr>
		<td>End</td>
		<td><input type="text" name="end" value="<%= end %>" readonly></td>
	</tr>
	<tr>
		<td>Seats</td>
		<td><input type="text" name="seats" value="<%= seats %>" readonly></td>
	</tr>
	
	
	
			
	</table>
	<br><br><br>
	<input type="submit" name="submit" value="Delete My Account" class="signup-btn">
	</form>
	
	</div>

    </div>

    <footer class="footer">
        <div class="contact-details">
            <h3>Contact Us</h3>
            <p>Email: info@example.com</p>
            <p>Phone: +123 456 789</p>
        </div>
        <div class="sponsors">
            <h3>Our Sponsors</h3>
            <img src="https://www.freepnglogos.com/uploads/visa-and-mastercard-logo-26.png" alt="Sponsor 1">
            <img src="https://www.freepnglogos.com/uploads/paypal-logo-png-1.png" alt="Sponsor 2">
            <!-- Add more sponsor logos as needed -->
        </div>
    </footer>

</body>
</html>