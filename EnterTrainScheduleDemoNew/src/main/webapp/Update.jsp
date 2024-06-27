<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Train</title>
    <link rel="stylesheet" href="table.css">
</head>
<body>

<header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Portfolio</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        
        <div class="signup-container">

  
    
    
    <h2>Update Train</h2>


<%
		String tid = request.getParameter("tid");
		String tname = request.getParameter("tname");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String start = request.getParameter("start");
		String end = request.getParameter("end");
		String seats = request.getParameter("seats");
		
	%>
	
	
	<form action="update" method="post">
	<table>
	
	<tr>
			<td>Train ID</td>
			<td><input type="text" name="tid" value="<%= tid %>" readonly ></td>
	</tr>
		
	<tr>
			<td>Train name</td>
			<td><input type="text" name="tname" value="<%= tname %>"></td>
	</tr>
		
	<tr>
		<td>Train date</td>
		<td><input type="text" name="date" value="<%= date %>"></td>
	</tr>
	
	<tr>
		<td>Train time</td>
		<td><input type="text" name="time" value="<%= time %>"></td>
	</tr>
	
	<tr>
		<td>Starting station</td>
		<td><input type="text" name="start" value="<%= start %>"></td>
	</tr>
	
	<tr>
		<td>ending station</td>
		<td><input type="text" name="end" value="<%= end %>"></td>
	</tr>
	
	<tr>
		<td>No of seats</td>
		<td><input type="text" name="seats" value="<%= seats %>"></td>
	</tr>
	
	
			
	</table>
	
	<br><br><br>
	
	<input type="submit" name="submit" value="Update My Data" class="signup-btn">
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












