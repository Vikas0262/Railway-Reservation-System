
<%@include file = "navbar.jsp"%> 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <link rel="stylesheet" href="index-new1.css" />
 <link rel="stylesheet" href="footer.css" />
 <title>Welcome To INDIAN RAILWAY</title>
 <link rel="icon" href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"type="image/icon type">
 <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
 <link rel="icon" href="https://cdn.shopify.com/s/files/1/0293/6448/6192/files/pngfind.com-train-vector-png-4595601.png?v=1640887051"type="image/icon type">
 <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
    body {
        margin: 0px;
        padding: 0;
        font-family: sans-serif;
        background-color: #F7F7F7;
    }
   

    .div-con {
        display: flex;
        justify-content: center;
        padding: 0px 35px;
    }

    .main-div-container {
        width: 35%;
        text-align: justify;
        box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);
        margin-right: 15px;
        border: 1px solid #c7c3c3;
        background-color: #fff;
    }


    .div-images img {
        width: 100%;
    }

    .main-div-container-1 {
        width: 35%;
        text-align: justify;
        box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);
        margin-left: 15px;
        margin-right: 15px;
        border: 1px solid #c7c3c3;
        background-color: #fff;
    }

    .div-images-1 img {
        width: 100%;
    }


    .main-div-container-2 {
        width: 35%;
        text-align: justify;
        box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%);
        margin-left: 15px;
        border: 1px solid #c7c3c3;
        background-color: #fff;
    }

    .div-images-2 img {
        width: 100%;
    }

    .div-para {
        padding: 15px 20px;
    }

    h2.heading {
        text-align: center;
        font-size: 40px;
        font-weight: 500;
        text-transform: uppercase;
    }

    .div-para h3 {
        font-size: 25px;
        font-weight: 550;
        color: #000;
    }

    .div-para p {
        font-size: 17px;
        text-align: justify;
        word-spacing: 7px;
        line-height: 22px;
    }

    p.last {
        text-align: left;
        padding: 0px 25px;
        font-weight: 600;
        font-size: 15px;
        margin: 10px 0px;
    }

    @media only screen and (max-width: 768px) {
        .div-con {
            display: block;
        }

        .main-div-container {
            width: 100%;
            margin: 0px;
            margin-bottom: 30px;
        }

        .main-div-container-1 {
            width: 100%;
            margin: 0px;
            margin-bottom: 30px;
        }

        .main-div-container-2 {
            width: 100%;
            margin: 0px;
            margin-bottom: 30px;
        }
        h1#first {
    font-size: 25px;
    color: #673ab7;
    position: absolute;
    right: 0%;
    top: 25%;
    left: -35%;
    text-align: center;
}


    }
   
.foot-main{
    background-color: white;
    display: flex;
    color: black;
    top: 10px;
   
} 
footer{
margin-top:12px;
}  
.social-media{
position: absolute;
    background-color: black;
    height: 1%;
    width: 100%;
    }
    .fine{
    width: 100%;
    object-fit: cover;
    height: 535px;
    }    
    
</style>

</head>
<body>
      <div class="background">
      <img class="fine" src="4492680472_1663ac037e_b.jpg" alt="Girl in a jacket">
      
        <h1 id="first">Indian Railways</h1>
    <h1 id="second"> Safety | Security | Punctuality </h1>
      </div>
      <div class="full-form">
    <div class="form-box">

      <div class="title"><i class="fas fa-subway"></i> Login</div>
      <div class="content">
        <form method="post" action="login.jsp">
          <div class="user-details">
            <div class="input-box">
              <span class="details">User Email: </span>
              <input type="text" placeholder="Enter Your Email" required name="Email" />
            </div>
            <div class="input-box">
              <span class="details">Password: </span>
              <input type="password" placeholder="Enter Your Password" required name="Password" id="myInput" />
             
            
            </div>
     
          </div>
           <% 
           String msg=request.getParameter("msg");
          if("Invalid".equals(msg)){
        	  %>
        	      <h6>Email OR Password is Incorrect</h6>
        	  <%}%>
    
  
          <button class="button" type="submit">Login</button>
           <p class="delta">Forget Password?<a href="forget.jsp" class="delta"> Forget</a></p>

        </form>
       </div>  
       </div>
       </div>
   <div class="holi-container">
        <h2 class="heading">HOLIDAY</h2>
        <div class="div-con">
            <div class="main-div-container">
                <div class="div-images">
                    <img src="https://www.irctc.co.in/nget/assets/images/exterior.jpg" alt="maharaja-express">
                </div>
                <div class="div-para">
                    <h3>Maharajas' Express</h3>
                    <p>Redefining Royalty, Luxury and Comfort, Maharajas' express takes you on a sojourn to the era of
                        bygone stately splendour of princely states. Sylvan furnishings, elegant ambience and modern
                        amenities are amalgamated for an âExperience Unsurpassedâ. It has been a winner of âWorldâs
                        Leading Luxury trainâ by World Travel Awards consecutively for last six years.</p>
                </div>
                <p class="last">Read More <span>&#129070;</span></p>
            </div>
            <div class="main-div-container-1">
                <div class="div-images-1">
                    <img src="https://www.irctc.co.in/nget/assets/images/Buddha_Banner.jpg" alt="buddhist">
                </div>
                <div class="div-para">
                    <h3>Buddhist Circuit Tourist Train</h3>
                    <p>India, the country where Buddhism originated has rich memories of the Buddhist legacy.
                        As part of its drive towards austerity, the only kind of art & architecture that it supported
                        were Stupas, Chaityas & Viharas.
                        Buddhist Train India will help you visit all these places up close for a truly religious
                        experience.</p>
                </div>
                <p class="last">Read More <span>&#129070;</span></p>
            </div>
            <div class="main-div-container-2">
                <div class="div-images-2">
                    <img src="https://www.irctc.co.in/nget/assets/images/Manali.jpg" alt="package">
                </div>
                <div class="div-para">
                    <h3>Rail Tour Packages</h3>
                    <p>IRCTC offers Exclusive Rail tour packages with confirmed train tickets, sight-seeing and meals
                        for enchanting Nilgiri Mountains,
                        Darjeeling, Kullu Manali, Kashmir, Gangtok or divine tours of Mata Vaishno Devi, Rameswaram,
                        Madurai, Shirdi, Tirupati etc.
                        Holiday packages/ Land packages to these destinations are also available.</p>
                </div>
                <p class="last">Read More <span>&#129070;</span></p>
            </div>
        </div>
    </div> 
  <div class="social-media">
  
  </div> 
  <div class="footer">
      <div class="box1">
        <div class="example">
            <h1>INDIAN RAILWAY</h1>
            <div class="info-box">
                <p>Call Us : +123-456-789</p>
                <p>indianrai@139.com</p>
                <p>Monday to Friday 10 to 6 IST</p>
            </div>
        </div>
        <div class="social-icons">
            <h3>GET MORE RESERVED ON:</h3>
            <div class="act-icons">
               
               <i class="fa fa-facebook"></i>
                <i class="fa fa-twitter"></i>
                <i class="fa fa-pinterest"></i>
                <i class="fa fa-instagram"> </i>
                
                
              
           </div>
        </div>

      </div>
      <div class="box2">
          <div>
            <h3>Complaint</h3>
            <p>Complaint Web Portal & Mobile App</p>
            <p>Theft</p>
            <p>Ticket lost</p>
            <p>RPF / GRP</p>
          </div>
          <div>
            <h3>
Assistance
</h3>
            <p>Retiring Room</p>
            <p>Food Booking</p>
            <p>Wheel Chair</p>
            <p>Taxi / Cab Service</p>
          </div>
          <div>
            <h3>Information
</h3>
            <p>139</p>
            <p>Train Enquiry</p>
            <p>Platform Ticket</p>
            <p>Coach Layout</p>
          </div>

      </div>
      <div class="box3">
          <div class="copy">
            Copyright © 2021 INDIAN RAILWAY. All rights reserved.
          </div>
          <div class="cards">
            <img src="https://cdn.shopify.com/s/files/1/0256/4594/0810/files/paypal_c6cdc9cc-cff1-444c-b2c7-1a1ed8a245e2_240x25.png?v=1617616020" alt="" />
          </div>

      </div>
    </div>
    <script src="https://kit.fontawesome.com/00e797cdbe.js" crossorigin="anonymous"></script>
</body>

</html>