<%@page import="com.mk.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page import="java.util.List" %>
 <%@ page import="com.mk.Product" %>
 <%@ page import="com.mk.UserDao" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" href="MainPage.css">
<title>HomePage</title>
</head>
<body>
<div><%@include file="Header.jsp" %></div>
<%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("pragma","no-cache");
	response.setHeader("Expires","0");
	
%>

<%
	Product products = new Product();
	UserDao userdao=new UserDao();
  	String product= userdao.ProductDetails(request);
  	 if(product.equals("products available"))
     {
   	  System.out.println("yes");
     }
     else
     {
   	  System.out.println("No");
     }
%>

<c:if test="${not empty requestScope.User}">
        <p  class="styled-paragraph">Welcome ${requestScope.User.name}</p>
</c:if>

 <h2>Product List</h2>

    <c:if test="${not empty requestScope.products}">
        <div class="grid-container">
            <c:forEach var="product" items="${requestScope.products}">
                <div class="product-card">
                    <h3>${product.productName}</h3>
                    <p>Price: ${product.productPrice}</p>
                    <p>Description: ${product.productDescription}</p>
                </div>
            </c:forEach>
        </div>
    </c:if>


</body>
</html>