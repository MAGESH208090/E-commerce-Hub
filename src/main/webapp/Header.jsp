<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Header</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="HeaderStyle.css">
</head>
<body> 
<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>

  <%
        boolean isLoggedIn = (session.getAttribute("email") != null);      
  
        String tag;
        String text;

        if (isLoggedIn) {
            tag = "LogOutModel.jsp";
            text = "Log Out";
        } else {
            tag = "LoginModel.jsp";
            text = "Log in";
        }
    %>  
    
    <nav class="navbar">
        <div class="logo">MartMill</div>
        <input type="checkbox" id="menu-toggle">
        <label for="menu-toggle" class="hamburger">&#9776;</label>
        <div class="menu" id="menu">
            <a href="MainPageModel.jsp">Home</a>
            <a href="About.jsp">About</a>
            <a href="check.jsp">Services</a>
            <a href="Contacts.jsp">Contact</a>
        </div>
       <div class="login-button">
        
       
             <a href="<%=tag%>"><button class="log-in"><%=text%></button></a>
        </div>
    </nav>
    
    
</body>
</html>