<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="SignUppage.css">
<meta charset="UTF-8">
<title>SignUp Page</title>
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>

	<form class="form" action="SignUpController" method="post" >
            <p class="form-title">Create account</p>
            
                
            
            <div class="input-container">
            	<input required="required" type="text" placeholder="Enter  name" name="Name">
                <span>
                </span>
            </div>
             <div class="input-container">
                <input type="email" placeholder="Enter email" name="Email">
                <span>
                </span>
            </div>
            <div class="input-container">
           		<input required="required" type="tel"   placeholder="Enter phone number" name="Phone_Number">
                <span>
                </span>
            </div>
            <div class="input-container">
                <input required="required" type="password" placeholder="Enter password" name="User_Password">
            </div>
            
            <button type="submit" class="submit">SIGN UP</button>
            <p>Already have an account? <a href="LoginModel.jsp">Sign in</a></p>
	</form>
     
</body>
</html>