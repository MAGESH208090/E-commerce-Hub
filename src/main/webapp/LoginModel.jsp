<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="LoginPage.css">
<meta charset="UTF-8">
<title>Login Page</title>
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>

		<form class="form" action="LoginController" method="post" >
            <p class="form-title">Sign in to your account</p>
            <div class="input-container">
                <input type="email" placeholder="Enter email" name="User_Email">
                <span>
                </span>
            </div>
            <div class="input-container">
                <input type="password" placeholder="Enter password" name="User_Pass">
            </div>
            <button type="submit" class="submit">SIGN IN</button>
            <p>No account? <a href="SignUpModel.jsp">Sign up</a></p>
        </form>
        
      
        


</body>
</html>