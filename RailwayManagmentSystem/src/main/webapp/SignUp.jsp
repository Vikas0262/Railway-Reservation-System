<%@include file = "navbar.jsp"%> 
<!DOCTYPE html SYSTEM "about:legacy-compat">
<html>
<head>
<meta charset="ISO-8859-1">
 <link rel="stylesheet" href="signup.css" />
 <title>Sign Up</title>
 <link rel="icon" href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051" type="image/icon type">

 <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
</head>
  <body>

  <div class="full-form">
    <img src="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/6069456.jpg?v=1642264496">
    
    <div class="form-box">

      <div class="title"><i class="fas fa-subway"></i>Sign Up</div>
      <div class="content">
        <form method="post" action="signup_2.jsp">
          <div class="user-details">
            <div class="input-box">
              <span class="details">Name</span>
              <input type="text" placeholder="Enter Your Name" required name="Name" />
            </div>
            <div class="input-box">
              <span class="details">Email</span>
              <input type="text" placeholder="Enter Your Email" required name="Email" />
            </div>
            <div class="input-box">
              <span class="details">Add Your Security Question</span>
              <select id="cars" name="Security">
                <option value="SL">Your School Name </option>
                <option value="I">Your Pet Name</option>
                <option value="II">Your Favourite Football Player</option>
                <option value="III">Your Laptop Model</option>
              </select>
            </div>

            <div class="input-box">
              <span class="details">Add Answer</span>
              <input type="text" placeholder="Enter your number" required  name="Answer" />
            </div>
            <div class="input-box">
              <span class="details"> Password</span>
              <input type="password" placeholder="Source" required name="Password" />
            </div>
          </div>
         
   <% String msg=request.getParameter("msg");
   
   if("valid".equals(msg)){%>
    <h6>Successfully Added</h6>
   <%}
   
   if("Invalid".equals(msg)){ %>
	
   <h6>Something Went Wrong</h6>
   <%}          


%>
          <button class="button" type="submit">Sign Up</button>
         <p class="delta">Already have account?<a href="index.jsp" class="delta">Login</a></p>
        </form>
       </div>
      </div>
    </div>
  </body>
</html>
