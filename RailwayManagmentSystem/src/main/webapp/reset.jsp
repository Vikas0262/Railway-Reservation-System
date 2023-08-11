<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file = "navbar2.jsp"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="pass.css" />
    <title>Rest Password</title>
  </head>
  <body>
    
      <div class="full-form">
    <div class="form-box">

      <div class="title"><i class="fas fa-subway"></i> Reset Password</div>
      <div class="content">
        <form method="post" action="login.jsp">
          <div class="user-details">
            <div class="input-box">
              <span class="details">User Email: </span>
              <input type="text" placeholder="Enter Your Email" required name="Email" />
            </div>
             <button class="button1" type="sumbit">Send</button>
            <div class="input-box">
              <span class="details">OTP: </span>
              <input type="password" placeholder="Enter Your OTP" required name="OTP" id="myInput" />
            
            </div>
     
          </div>
           <% 
           String msg=request.getParameter("msg");
          if("Invalid".equals(msg)){
        	  %>
        	      <h6>Email OR Password is Incorrect</h6>
        	  <%}%>
    
  
          <button class="button" type="sumbit">SUMBIT</button>
 
        </form>
       </div>  
       </div>
       </div>
          
</body>
</html>
