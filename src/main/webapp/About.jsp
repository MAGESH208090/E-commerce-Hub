<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>About</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="AboutPage.css">
</head>
<body>
	<div><%@include file="Header.jsp" %></div>
	<div class="container">
	
	<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>
	
        <h1>About Me</h1>
        <p>
            Hello! I am Magesh Kumar, a passionate and dedicated individual seeking opportunities
            in the Java domain. As a fresher, I have acquired skills in Java, SQL, Servlets, JDBC,
            JSTL, JSP, HTML, and CSS. I am enthusiastic about learning new technologies and
            applying them to real-world projects.
        </p>
        <p>
            My goal is to contribute to innovative projects, collaborate with a dynamic team,
            and continuously enhance my skills to stay updated with the latest industry trends.
        </p>
        <p>
            If you have an exciting opportunity or if you would like to connect with me,
            feel free to reach out using the button below.
        </p>
       <a href="mailto:magesh208090@example.com" class="contact-button">Reach Out</a>
    </div>

</body>
</html>