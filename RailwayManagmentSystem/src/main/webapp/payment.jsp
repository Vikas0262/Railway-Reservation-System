<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>
<%@include file = "navbar2.jsp"%>  
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="ISO-8859-1">
        <title>Payment Page</title>
        <link rel="stylesheet" href="navbar.css">
        <link rel="stylesheet" href="Payment.css">
    <style>
    
body{
	background: url("bg.jpg");
    background-position: center;
    background-size: cover;
    height: 100vh;
    width: 100%;
    min-height: 100vh;
    align-items: center;
    justify-content: center;	
}
.wrapper {
    /* margin: auto; */
    background-color: #343030;;
    padding: 25px;
    width: 30%;
    /* box-shadow: 0px 0px 20px rgb(0 0 0 / 50%); */
    box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%);
    border-radius: 10px;
    /* margin: auto; */
    margin-top: 111px;
    display: flex;
    flex-direction: column;
    /* justify-content: center; */
    align-items: center;
}
.main-pay {

    /* box-shadow: 0 4px 8px 0 rgb(0 0 0 / 20%), 0 6px 20px 0 rgb(0 0 0 / 19%); */
    margin-top: -88px;
    margin-left: 38px;
    /* display: flex; */
    /* flex-direction: column; */
    /* width: 30%; */
}

.wrapper h2{
    font-size: 25px;
    /* font-weight: 600; */
    color: white;
    /* position: relative; */
    /* margin-bottom: 10px; */
    font-family: system-ui;
    margin-bottom: 10px;
}

.wrapper form .details{
    /* border: 1px solid blue; */
    margin: 20px 0;
}

.wrapper form .details input{
color: white;
    background: transparent;
    border: 0;
    /* border: 12px solid blue; */
    height: 45px;
    width: 48%;
    outline: none;
    /* border-radius: 5px; */
    /* border: 1px solid #ccc; */
    /* padding-left: 15px; */
    font-size: 17px;
    border-bottom-width: 1px solid red;
    border-bottom: 1px solid white;
}
.wrapper form .details input:focus{
    border-color: #11d987;
}

.wrapper form .details .user-detail{
    display: flex;
    font-weight: bold;
    justify-content: space-between;
    /* margin-bottom: 5px; */
    font-family: system-ui;
    color: white;
}

.wrapper form .details button{
    background-color: #fff;
    width: 100%;
    height: 45px;
    font-size: 20px;
    border-radius: 5px;
    margin-top: 10px;
    border: 0;
}
.wrapper form .details button:hover{
    background: linear-gradient(45deg, blueviolet, deeppink);
    color: white;
    cursor: pointer;
}

.wrapper form .flex{
    display: flex;
    gap: 15%;
}
    </style>
    </head>

 
    <body>

      

     <div class="main-pay">
        <div class="wrapper">
            <h2>Confirm your payment</h2>
            <form action="payment_process.jsp" method="post">
                <div class="details">
                    <span class="user-detail">Card Number</span>
                    <input type="text" placeholder="Enter your Card number" name="cardnumber" style="width:100%">
                </div>
                <div class="flex">
                    <div class="details">
                        <span class="user-detail">Expiry</span>
                        <input placeholder="Month" min="2022-01-09" max="2050-12-31">
                         <input  placeholder="Year" min="2022-01-09" max="2050-12-31">
                    </div>
                <div class="details">
                        <span class="user-detail">CVV</span>
                        <input type="text" placeholder="CVV" style="width:100%">
                    </div>
                
                </div>
 


                <div class="details">
                    <span class="user-detail">Name On Card</span>
                    <input type="text" placeholder="Enter Full Name" name="cardname"  style="width:100%">
                </div>


                <div class="details">
                    <button type="submit">Pay <i class="fas fa-lock"></i> </button>
                </div>
            </form>
        </div>
        </div>






       




    </body>

    </html>