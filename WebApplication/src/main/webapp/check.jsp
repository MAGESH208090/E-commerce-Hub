<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
            response.sendRedirect("Services.jsp");
        } else {
            response.sendRedirect("LoginModel.jsp");
        }
    %>  
</body>
</html>