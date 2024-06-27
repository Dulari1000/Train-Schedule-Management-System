<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Train View</title>

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
                <li><a href="#">Contact</a></li>
            </ul>
        </nav>
    </header>

    <div class="body-content">
        
        <div class="signup-container">

  
    
    
    <h2>Train Details</h2>

                <table >
	                <c:forEach var="tr" items="${trdetail}">
	                <c:set var="tid" value="${tr.tid}"/>
					<c:set var="tname" value="${tr.tname}"/>
					<c:set var="date" value="${tr.date}"/>
					<c:set var="time" value="${tr.time}"/>
					<c:set var="start" value="${tr.start}"/>
					<c:set var="end" value="${tr.end}"/>
					<c:set var="seats" value="${tr.seats}"/>
	          		
	                
	                <tr>
	                    <td>Train ID</td>
	                    <td>${tr.tid}</td>
	                </tr>
	                <tr>
	                    <td>Train Name</td>
	                    <td>${tr.tname}</td>
	                </tr>
	                <tr>
	                    <td>Date</td>
	                    <td>${tr.date}</td>
	                </tr>
	                <tr>
	                    <td>Time</td>
	                    <td>${tr.time}</td>
	                </tr>
	                <tr>
	                    <td>Start</td>
	                    <td>${tr.start}</td>
	                </tr>
	                <tr>
	                    <td>End</td>
	                    <td>${tr.end}</td>
	                </tr>
	                <tr>
	                    <td>Seats</td>
	                    <td>${tr.seats}</td>
	                </tr>
	            
	                </c:forEach>
                </table>
                
                
    			<c:url value="Update.jsp" var="trupdate">
					<c:param name="tid" value="${tid}"/>
					<c:param name="tname" value="${tname}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="time" value="${time}"/>
					<c:param name="start" value="${start}"/>
					<c:param name="end" value="${end}"/>
					<c:param name="seats" value="${seats}"/>
					
				</c:url>
                
                <br>
                <a href="${trupdate}">
                <input type="submit" class="signup-btn" name="update" value="Update" ><br><br>
                </a>
                
                
                <c:url value="delete.jsp" var="trdelete">
					<c:param name="tid" value="${tid}"/>
					<c:param name="tname" value="${tname}"/>
					<c:param name="date" value="${date}"/>
					<c:param name="time" value="${time}"/>
					<c:param name="start" value="${start}"/>
					<c:param name="end" value="${end}"/>
					<c:param name="seats" value="${seats}"/>
					
					
				</c:url>
				<a href="${trdelete}">
				<input type="button" class="signup-btn" name="delete" value="Delete">
				</a>
				
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
            
        </div>
    </footer>
                
    
    


</body>
</html>