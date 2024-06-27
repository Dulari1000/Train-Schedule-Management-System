
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>


</head>
<body>



	<c:forEach var="train" items="${trainDetails}">
	
	
    
    ${train1.tid}
    ${train1.tname}
    ${train1.date}
    ${train1.time}
    ${train1.staet}
    ${train1.end}
    ${train1.seats}
    
    
    
	</c:forEach>
	
    
   
    </body>
</html>