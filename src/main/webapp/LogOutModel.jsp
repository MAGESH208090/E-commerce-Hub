<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="LogoutPage.css">
<title>LogOut Page</title>
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>

	<div class="logout-container">
    <h2>Do you want to log out?</h2>
    
    <div class="buttons-container">
        <form action="LogoutController" method="post">
            <button class="yes-button" type="submit">Yes</button>
        </form>
        
       <a href="MainPageModel.jsp"> <button class="no-button" >No</button>  </a>
    </div>
</div>	
</body>
</html>