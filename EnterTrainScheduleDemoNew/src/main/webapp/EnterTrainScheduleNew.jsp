<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="form.css">

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
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        
     <div class="signup-container">

		<h2>Enter train schedule</h2><br>

		<form action=insert method=post id="myForm">
	
			<div class="form-group">
                    <label for="customerName">Train ID:</label>
                    <input type="text"  name="tid" required>
                </div>
                <div class="form-group">
                    <label for="address">Train Name:</label>
                    <input type="text" name="tname" required>
                </div>
                <div class="form-group">
                    <label for="mobile">Date:</label>
                    <input type="date" name="date" id="date" required>
                </div>
                <div class="form-group">
                    <label for="email">Time:</label>
                    <input type="time" name="time" required>
                </div>
                <div class="form-group">
                    <label for="username">Start:</label>
                    <input type="text" name="start" required>
                </div>
                <div class="form-group">
                    <label for="password">End:</label>
                    <input type="text" name="end" required>
                </div>
                 <div class="form-group">
                    <label for="password">Seats:</label>
                    <input type="text" name="seats" required>
                </div>
                
                
                
                <button type="submit" class="signup-btn" id="submit">Add Train</button>
	
	
			</form>
	
		</div>
		
		<script>
        const form = document.getElementById('myForm');
        const dateInput = document.getElementById('date');

        form.addEventListener('submit', function(event) {
            const selectedDate = new Date(dateInput.value);
            const cutoffDate = new Date('2023-10-27'); // October 27, 2023

            if (selectedDate < cutoffDate) {
                alert('Please select a valid incomming date!!');
                event.preventDefault(); // Prevent form submission
            }
        });
   		 </script>

        


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
        </div>
    </footer>


</body>
</html>