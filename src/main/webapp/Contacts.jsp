<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Page</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="ContactPage.css">
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>

<div><%@include file="Header.jsp" %></div>
<div class="text1"><h2>This site is developed by Magesh Kumar N</h2></div>

	<div class="container">
        <div class="contact-info">
            <div class="info-row">
                <label>Name:</label>
                <span>Magesh Kumar N</span>
            </div>

            <div class="info-row">
                <label>Email:</label>
                <span><a href="mailto:magesh208090@example.com" >magesh208090@gmail.com</a></span>
            </div>

            <div class="info-row">
                <label>LinkedIn:</label>
                <span><a href="https://www.linkedin.com/in" target="_blank">LinkedIn Profile</a></span>
            </div>

            <div class="info-row">
                <label>GitHub Profile:</label>
                <span><a href="https://github.com" target="_blank">GitHub Profile</a></span>
            </div>

            <div class="info-row">
                <label>Phone Number:</label>
                <span>+91-6379926837</span>
            </div>
        </div>
    </div>
    </div>
</body>
</html>