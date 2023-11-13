<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <link rel="stylesheet" href="ServicesPage.css">
<title>Insert title here</title>
</head>
<body>

<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>
	<form class="form" action="ProductCreateController" method="post" >
            <p class="form-title">Enter your Product details</p>
            
                
            
            <div class="input-container">
            	<input required="required" type="text" placeholder="Enter Product name" name="prodName">
                <span>
                </span>
            </div>
             <div class="input-container">
                <input type="text" placeholder="Enter Price" name="price">
                <span>
                </span>
            </div>
            <div class="input-container">
           		<input required="required" type="text"   placeholder="Enter the details of the product" name="description">
                <span>
                </span>
            </div>
           
            
            <button type="submit" class="submit">Create Product</button>
	</form>
</body>
</html>