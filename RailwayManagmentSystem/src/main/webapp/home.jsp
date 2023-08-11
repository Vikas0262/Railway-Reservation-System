<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file = "navbar2.jsp"%> 
<% String s= (String)session.getAttribute("user");
 if(s==null){
	 response.sendRedirect("index.jsp"); 
 }%>
<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="home.css" />
 <title>Welcome To INDIAN RAILWAY</title>
 <link rel="icon" href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"type="image/icon type">
 <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
 <link rel="icon" href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"type="image/icon type">
<style>
.name {
    color: white;
    font-size: 9vh;
    /* display: flex; */
}
</style>
</head>


<body>
<%String a =request.getParameter("Name");%>
<%session.setAttribute("userid", a); %>
      <div class="background">
      <h1 class="name">WELCOME</h1>
      <h2 class="name">TO</h2>
        <h3 class="name">INDIAN RAILWAY</h3>
      </div>
</body>

</html>