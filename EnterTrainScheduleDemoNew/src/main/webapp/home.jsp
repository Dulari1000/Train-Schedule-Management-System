<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register</title>
    <link rel="stylesheet" href="home.css">

</head>

<body>
    <header class="header">
        <div class="logo">
            <img src="images/logo1.png" alt="Logo">
        </div>
        <nav class="navigation">
            <ul>
                <li><a href="EnterTrainScheduleNew.jsp">View Train</a></li>
                <li><a href="#">Book a Ticket</a></li>
                <li><a href="#">Register</a></li>
                <li><a href="#">Inquiry</a></li>
            </ul>
        </nav>
    </header>

    <h1>Easy Train Reservation</h1>

    




    <div class="body-content">
        
        <div class="slideshow-container">
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1442570468985-f63ed5de9086?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHRyYWlufGVufDB8fDB8fHww" alt="Slide 1">
            </div>
            <div class="slide">
                <img src="https://f.hubspotusercontent20.net/hubfs/546379/Nine%20Arches%20Bridge.jpg" alt="Slide 2">
            </div>
            <div class="slide">
                <img src="https://cdn.happyrail.com/uploads/homepage_backgrounds/mountains.jpg" alt="Slide 3">
            </div>
            <div class="slide">
                <img src="https://images.unsplash.com/photo-1556695736-d287caebc48e?auto=format&fit=crop&q=80&w=1000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c3RhdGlvbnxlbnwwfHwwfHx8MA%3D%3D" alt="Slide 4">
            </div>
        </div>
        
            <button class="prev">&#10094;</button>
            <button class="next">&#10095;</button>
        </div>
    
        <script>
            let slideIndex = 0;
            const slides = document.querySelectorAll('.slide');
            const totalSlides = slides.length;
        
            const prevButton = document.querySelector('.prev');
            const nextButton = document.querySelector('.next');
        
            prevButton.addEventListener('click', () => {
                slideIndex = (slideIndex - 1 + totalSlides) % totalSlides;
                updateSlide();
            });
        
            nextButton.addEventListener('click', () => {
                slideIndex = (slideIndex + 1) % totalSlides;
                updateSlide();
            });
        
            function updateSlide() {
                slides.forEach(slide => {
                    slide.style.left = '100%';
                });
        
                slides[slideIndex].style.left = '0';
            }
        </script>
    
        
        
        
        
        
        

    

    <div class="desc">
        <P>
          Welcome to Easy Train Reservation System, where booking your train tickets is as simple as a smile! Our user-friendly website ensures that planning your journeys is a breeze, 
      offering you a seamless experience from start to finish. With just a few clicks, you can effortlessly search, select, and secure your train tickets, leaving you with more time to focus on the exciting adventures ahead. 
      We understand that travel should be easy and delightful, so we've designed our platform to be intuitive and stress-free. Let us be your travel companion, making your train reservations adorable and effortless, just like your dream vacation!
        </P>  
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
    